library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity Interface is
    Generic (
            ADDR_WIDTH : integer := 3;
            DATA_WIDTH : integer := 16
            );
    Port ( 
            clk, reset : in STD_LOGIC;
            start : in STD_LOGIC;
            tx : out STD_LOGIC;
            sort_order : in STD_LOGIC
         );
end Interface;

architecture Behavioral of Interface is

    component bin2hex
    Port(
          clk: in std_logic;
          bin: in std_logic_vector(15 downto 0);
          hex_out : out std_logic_vector (15 downto 0)
        );
    end component;
    
    signal done_tick, ready, start_ascii_conv : std_logic := '0';
    
    -- UUT signals
    signal done_sort, request_out : STD_LOGIC := '0';
    signal out_data : STD_LOGIC_VECTOR(15 downto 0);
    signal uart_conv_data : STD_LOGIC_VECTOR(15 downto 0);
    
    signal completion : integer range 0 to 2 := 0;
    
    --BTN_STR_LEN is the length of the array of numbers. 
    signal BTN_STR_LEN : natural := 2**ADDR_WIDTH;
    constant INIT_BTN_STR_LEN : natural := 2**ADDR_WIDTH; 
    --constant WELCOME_STR_LEN : natural := 27;
    
    signal strEnd : natural := INIT_BTN_STR_LEN;
    signal strIndex : natural;
    
    constant RESET_CNTR_MAX : std_logic_vector(17 downto 0) := "110000110101000000";-- 100,000,000 * 0.002 = 200,000 = clk cycles per 2 ms
    constant MAX_STR_LEN : integer := 2*INIT_BTN_STR_LEN; --Worst case scenario, all values are between 0000 and FFFF. Also, FF between each number
    
    type CHAR_ARRAY is array (integer range<>) of std_logic_vector(7 downto 0);
      
    --Contains the current string being sent over uart.
    signal sendStr : CHAR_ARRAY(0 to (MAX_STR_LEN - 1)) := (others => X"00");
    signal tempStr : CHAR_ARRAY(0 to (MAX_STR_LEN - 1)) := (others => X"00");
   
    --UART_TX_CTRL control signals
    signal uartRdy : std_logic;
    signal uartSend : std_logic := '0';
    signal uartData : std_logic_vector (7 downto 0):= "00000000";
    signal uartTX : std_logic;
    
    signal out_string_count : integer  := 0;
    
    --Current uart state signal
    --type UART_STATE_TYPE is (RST_REG, LD_INIT_STR, SEND_CHAR, RDY_LOW, WAIT_RDY, WAIT_BTN, LD_BTN_STR);
    type UART_STATE_TYPE is (RST_REG, SEND_CHAR, RDY_LOW, WAIT_RDY, WAIT_BTN, LD_BTN_STR);
    signal uartState : UART_STATE_TYPE := RST_REG;
    
    type STRING_LOAD is (IDLE, LOAD_NEW_CHAR, ALLOW_CONV, LOAD_THOUSANDS, LOAD_TENS, LOAD_NEW_CHAR_FINAL, DONE);
    signal stringState : STRING_LOAD := IDLE;
    
    signal done_load, reverse_control, one_more_run : std_logic := '0';
    
    --this counter counts the amount of time paused in the UART reset state
    signal reset_cntr : std_logic_vector (17 downto 0) := (others=>'0');
begin

    sorting_algorithm : entity work.sorting_algo(arch)
        generic map(ADDR_WIDTH => ADDR_WIDTH, DATA_WIDTH => DATA_WIDTH)
        port map(clk => clk, start_sort => start, done_sort => done_sort, request_out => request_out, out_data => out_data, reset => reset);
   
    uart : entity work.uart_tx_ctrl
        port map(SEND => uartSend, DATA => uartData, CLK => clk, READY => uartRdy, UART_TX => uartTX);
        
    hex_conversion : bin2hex
        port map(clk => clk, bin => out_data, hex_out => uart_conv_data);
        
    BTN_load_process : process(CLK)
    begin
        if rising_edge(clk) then
            if (reset = '1') then
                stringState <= IDLE;
                done_load <= '0';
                completion <= 0;
                out_string_count <= 0;
                BTN_STR_LEN <= INIT_BTN_STR_LEN;
            else
                case stringState is
                    when IDLE =>
                        done_load <= '0';
                        out_string_count <= 0;
                        if done_sort = '1' and completion < 1 then
                            request_out <= '1';
                            stringState <= LOAD_NEW_CHAR;
                        end if;
                    when LOAD_NEW_CHAR =>
                        request_out <= '0';
                        stringState <= ALLOW_CONV;
                    when ALLOW_CONV =>
                        stringState <= LOAD_THOUSANDS;
                    when LOAD_THOUSANDS =>
                        tempStr(out_string_count) <= uart_conv_data(15 downto 12) & uart_conv_data (11 downto 8);
                        out_string_count <= out_string_count + 1;
                        stringState <= LOAD_TENS;
                    when LOAD_TENS =>
                        tempStr(out_string_count) <= uart_conv_data(7 downto 4) & uart_conv_data(3 downto 0);
                        BTN_STR_LEN <= BTN_STR_LEN + 1;
                        stringState <= LOAD_NEW_CHAR_FINAL; 
                    when LOAD_NEW_CHAR_FINAL =>
                        request_out <= '1';
                        if out_string_count = BTN_STR_LEN-1 then
                            stringState <= DONE;
                        else
                            out_string_count <= out_string_count + 1;
                            stringState <= LOAD_NEW_CHAR;
                        end if;
                    when DONE =>
                        done_load <= '1';
                        completion <= 1;   
                        stringState <= IDLE;            
                end case;
            end if;        
        end if;
    end process;
                 
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
                          uartState <= WAIT_BTN;
                        end if;
                    when SEND_CHAR =>
                        uartState <= RDY_LOW;
                    when RDY_LOW =>
                        uartState <= WAIT_RDY;
                    when WAIT_RDY =>
                        if (uartRdy = '1') then
                            if (strEnd = strIndex) then
                                if sort_order = '1' then
                                    uartState <= WAIT_BTN;
                                elsif sort_order = '0' and one_more_run = '0' then
                                    one_more_run <= '1';
                                    uartState <= SEND_CHAR;
                                else
                                    uartState <= WAIT_BTN;
                                end if;
                            else
                                uartState <= SEND_CHAR;
                            end if;
                        end if;
                    when WAIT_BTN =>
                        if (done_load = '1') then
                            uartState <= LD_BTN_STR;
                        end if;
                    when LD_BTN_STR =>
                        uartState <= SEND_CHAR;
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
                if uartState = LD_BTN_STR then
                    sendStr <= tempStr;
                    if sort_order = '1' then
                        strEnd <= BTN_STR_LEN;
                    elsif sort_order = '0' then
                        strEnd <= 1; --To keep things in order.
                    end if;
                end if;
            end if;
        end process;
        
        --Controls the strIndex signal so that it contains the index
        --of the next character that needs to be sent over uart
        char_count_process : process (CLK)
        begin
            if (rising_edge(CLK)) then
                if (uartState = LD_BTN_STR) then
                    if sort_order = '1' then
                        strIndex <= 0;
                    elsif sort_order = '0' then                
                        strIndex <= BTN_STR_LEN-1;
                    end if;
                elsif uartState = RDY_LOW then
                    if sort_order = '1' then 
                        strIndex <= strIndex + 1;
                    elsif sort_order = '0' then
                        if reverse_control = '0' then
                            reverse_control <= not reverse_control;
                            strIndex <= strIndex + 1;
                        elsif reverse_control = '1' then
                            reverse_control <= not reverse_control;
                            if StrIndex - 3 < 0 then
                                strIndex <= 1;
                            else
                                strIndex <= strIndex - 3;
                            end if;
                        end if;
                    end if;
                end if;
            end if;
        end process;
        
        --Controls the UART_TX_CTRL signals
        char_load_process : process (CLK)
        begin
            if (rising_edge(CLK)) then
                if (uartState = SEND_CHAR) then
                    uartSend <= '1';
                    if sort_order = '1' then
                        uartData <= sendStr(strIndex);
                    elsif sort_order = '0' then
                        uartData <= sendStr(strIndex - 1); -- Needs -1 to decrease properly. 
                    end if;
                else
                    uartSend <= '0';
                end if;
            end if;
        end process;
        
    tx <= uartTX;

end Behavioral;
