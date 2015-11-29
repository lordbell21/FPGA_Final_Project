library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity Interface is
    Port ( 
            clk, reset : in STD_LOGIC;
            start : in STD_LOGIC;
            tx : out STD_LOGIC
         );
end Interface;

architecture Behavioral of Interface is

    component bin2bcd
    Port(
          clk: in std_logic;
          reset: in std_logic;
          start: in std_logic;
          bin: in std_logic_vector(7 downto 0);
          ready, done_tick: out std_logic;
          bcd_out : out std_logic_vector (7 downto 0)
        );
    end component;
    
    signal done_tick, ready, start_ascii_conv : std_logic := '0';
    
    -- UUT signals
    signal done_sort, start_sort, request_out : STD_LOGIC := '0';
    constant ADDR_WIDTH : integer := 4;
    constant DATA_WIDTH : integer := 8;
    signal out_data : STD_LOGIC_VECTOR(7 downto 0);
    signal uart_conv_data : STD_LOGIC_VECTOR(7 downto 0);
    
    --State machine signals
    type state_type is (idle, sort, next_read, read, done);
    signal state_reg, state_next : state_type;
    signal completion : integer range 0 to 2 := 0;
    
    --BTN_STR_LEN is the length of the array of numbers. 
    constant BTN_STR_LEN : natural := 16;
    constant WELCOME_STR_LEN : natural := 27;
    
    signal strEnd : natural := BTN_STR_LEN;
    signal strIndex : natural;
    
    constant RESET_CNTR_MAX : std_logic_vector(17 downto 0) := "110000110101000000";-- 100,000,000 * 0.002 = 200,000 = clk cycles per 2 ms
    constant MAX_STR_LEN : integer := 27;
    
    type CHAR_ARRAY is array (integer range<>) of std_logic_vector(7 downto 0);
      
    --Contains the current string being sent over uart.
    signal sendStr : CHAR_ARRAY(0 to (WELCOME_STR_LEN - 1)) := (others => X"00");
    signal tempStr : CHAR_ARRAY(0 to (BTN_STR_LEN - 1)) := (others => X"00");

    constant WELCOME_STR : CHAR_ARRAY(0 to 26) := (X"0A",  --\n
                                                                  X"0D",  --\r
                                                                  X"42",  --B
                                                                  X"41",  --A
                                                                  X"53",  --S
                                                                  X"59",  --Y
                                                                  X"53",  --S
                                                                  X"33",  --3
                                                                  X"20",  -- 
                                                                  X"47",  --G
                                                                  X"50",  --P
                                                                  X"49",  --I
                                                                  X"4F",  --O
                                                                  X"2F",  --/
                                                                  X"55",  --U
                                                                  X"41",  --A
                                                                  X"52",  --R
                                                                  X"54",  --T
                                                                  X"20",  -- 
                                                                  X"44",  --D
                                                                  X"45",  --E
                                                                  X"4D",  --M
                                                                  X"4F",  --O
                                                                  X"21",  --!
                                                                  X"0A",  --\n
                                                                  X"0A",  --\n
                                                                  X"0D"); --\r
    
    --UART_TX_CTRL control signals
    signal uartRdy : std_logic;
    signal uartSend : std_logic := '0';
    signal uartData : std_logic_vector (7 downto 0):= "00000000";
    signal uartTX : std_logic;
    
    signal out_string_count : integer range 0 to BTN_STR_LEN := 0;
    
    --Current uart state signal
    type UART_STATE_TYPE is (RST_REG, LD_INIT_STR, LOAD_NEW_CHAR, LOAD_NEW_CHAR_2, LOAD_NEW_CHAR_3, SEND_CHAR, RDY_LOW, WAIT_RDY, WAIT_BTN, LD_BTN_STR);
    signal uartState : UART_STATE_TYPE := RST_REG;
    
    --this counter counts the amount of time paused in the UART reset state
    signal reset_cntr : std_logic_vector (17 downto 0) := (others=>'0');
begin
    debounce : entity work.db_fsm
        port map(clk => clk, reset => reset, sw => start, db => start_sort);

    sorting_algorithm : entity work.sorting_algo(arch)
        generic map(ADDR_WIDTH => ADDR_WIDTH, DATA_WIDTH => DATA_WIDTH)
        port map(clk => clk, start_sort => start_sort, done_sort => done_sort, request_out => request_out, out_data => out_data, reset => reset);
    
    uart : entity work.uart_tx_ctrl
        port map(SEND => uartSend, DATA => uartData, CLK => clk, READY => uartRdy, UART_TX => uartTX);
        
    ascii_conversion : bin2bcd
        port map(clk => clk, reset => reset, start => start_ascii_conv, bin => out_data, ready => ready, done_tick => done_tick, bcd_out => uart_conv_data);
                 
    process(CLK)
        begin
          if (rising_edge(CLK)) then
            if ((reset_cntr = RESET_CNTR_MAX) or (uartState /= RST_REG)) then
              reset_cntr <= (others=>'0');
            else
              reset_cntr <= reset_cntr + 1;
            end if;
          end if;
        end process;
        
        --Next Uart state logic (states described above)
        next_uartState_process : process (CLK)
        begin
            if (rising_edge(CLK)) then
                if (reset = '1') then
                    uartState <= RST_REG;
                else    
                    case uartState is 
                    when RST_REG =>
                if (reset_cntr = RESET_CNTR_MAX) then
                  uartState <= LD_INIT_STR;
                end if;
                    when LD_INIT_STR =>
                        uartState <= SEND_CHAR;
                    when LOAD_NEW_CHAR =>
                        request_out <= '0';
                        start_ascii_conv <= '1';
                        if done_tick = '1' then
                            start_ascii_conv <= '0';
                            uartState <= LOAD_NEW_CHAR_2;
                        end if;
                    when LOAD_NEW_CHAR_2 =>
                        tempStr(out_string_count) <= uart_conv_data;
                        uartState <= LOAD_NEW_CHAR_3;
                    when LOAD_NEW_CHAR_3 =>
                        out_string_count <= out_string_count + 1;
                        request_out <= '1';
                        if out_string_count = strEnd-1 then
                            uartState <= SEND_CHAR;
                        else
                            uartState <= LOAD_NEW_CHAR;
                        end if;
                    when SEND_CHAR =>
                        uartState <= RDY_LOW;
                    when RDY_LOW =>
                        uartState <= WAIT_RDY;
                    when WAIT_RDY =>
                        if (uartRdy = '1') then
                            if (strEnd = strIndex) then
                                uartState <= WAIT_BTN;
                            else
                                uartState <= SEND_CHAR;
                            end if;
                        end if;
                    when WAIT_BTN =>
                        if (done_sort = '1' and completion /= 2) then
                            out_string_count <= 0;
                            uartState <= LD_BTN_STR;
                        end if;
                    when LD_BTN_STR =>
                        completion <= completion + 1;
                        request_out <= '1';
                        uartState <= LOAD_NEW_CHAR;
                    when others=> --should never be reached
                        uartState <= RST_REG;
                    end case;
                end if ;
            end if;
        end process;
        
        --Loads the sendStr and strEnd signals when a LD state is
        --is reached.
        string_load_process : process (CLK)
        begin
            if (rising_edge(CLK)) then
                if (uartState = LD_INIT_STR) then
                    sendStr <= WELCOME_STR;
                    strEnd <= WELCOME_STR_LEN;
                elsif (uartState = LD_BTN_STR) then
                    sendStr(0 to BTN_STR_LEN-1) <= tempStr;
                    strEnd <= BTN_STR_LEN;
                end if;
            end if;
        end process;
        
        --Conrols the strIndex signal so that it contains the index
        --of the next character that needs to be sent over uart
        char_count_process : process (CLK)
        begin
            if (rising_edge(CLK)) then
                if (uartState = LD_INIT_STR or uartState = LD_BTN_STR) then
                    strIndex <= 0;
                elsif (uartState = SEND_CHAR) then
                    strIndex <= strIndex + 1;
                end if;
            end if;
        end process;
        
        --Controls the UART_TX_CTRL signals
        char_load_process : process (CLK)
        begin
            if (rising_edge(CLK)) then
                if (uartState = SEND_CHAR) then
                    uartSend <= '1';
                    uartData <= sendStr(strIndex);
                else
                    uartSend <= '0';
                end if;
            end if;
        end process;
        
    tx <= uartTX;

end Behavioral;
