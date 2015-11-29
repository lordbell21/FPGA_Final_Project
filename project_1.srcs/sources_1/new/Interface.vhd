library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Interface is
    Port ( 
            clk, reset : in STD_LOGIC;
            start : in STD_LOGIC;
            rx : in STD_LOGIC;
            tx : out STD_LOGIC
         );
end Interface;

architecture Behavioral of Interface is
    -- UUT signals
    constant ADDR_WIDTH : integer := 4;
    constant DVSR_BIT : integer := 9; 
    constant DATA_WIDTH  : integer := 8;
    constant FIFO_W: integer := 2;
    constant SB_TICK : integer := 16;
    constant DVSR : integer := 326; --100MHz, 50MHz was 163. 100MHz / (16*Baud Rate) Baud Rate = 19200
    signal done_sort, start_sort, request_out : STD_LOGIC;
    signal out_data : STD_LOGIC_VECTOR(7 downto 0);
    signal rd_uart, wr_uart, tx_full, rx_empty : STD_LOGIC := '0';
    signal tx_done_tick : std_logic;
    signal w_data, r_data : STD_LOGIC_VECTOR(7 downto 0);
    
    --State machine signals
    type state_type is (idle, sort, next_read, read, done);
    signal state_reg, state_next : state_type;
    signal request_out_next, wr_uart_next, done_next, done_var : STD_LOGIC := '0';
    signal w_data_next : STD_LOGIC_VECTOR (7 downto 0);  
    signal count, count_next : integer := 0;  
begin
    debounce : entity work.db_fsm
        port map(clk => clk, reset => reset, sw => start, db => start_sort);

    sorting_algorithm : entity work.sorting_algo(arch)
        generic map(ADDR_WIDTH => ADDR_WIDTH, DATA_WIDTH => DATA_WIDTH)
        port map(clk => clk, start_sort => start_sort, done_sort => done_sort, request_out => request_out, out_data => out_data, reset => reset);
    
    uart : entity work.uart
        generic map(DBIT => DATA_WIDTH, SB_TICK => SB_TICK , DVSR => DVSR, DVSR_BIT => DVSR_BIT, FIFO_W => FIFO_W)
        port map(clk => clk, reset => reset, rd_uart => '0', wr_uart => wr_uart, rx => rx, w_data => w_data, tx_full => tx_full, rx_empty => rx_empty,
                 r_data => r_data, tx => tx, tx_done_tick => tx_done_tick);
                 
    -- wr_uart is wr enable for uarts.
    -- w_data is XX
    -- r_data is important
    -- tx_full is important
    -- rx_empty is XX
    -- rd_uart is XX
    -- r_data is important
    -- tx is important
    -- rx is XX
                 
    process(clk, reset)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state_reg <= idle;
                count <= 0;
                request_out <= '0';
                w_data <= (others => '0');
                wr_uart <= '0';
                done_var <= '0';
            else
                state_reg <= state_next;
                count <= count_next;
                request_out <= request_out_next;
                w_data <= w_data_next;
                wr_uart <= wr_uart_next;
                done_var <= done_next; 
            end if;            
         end if;
    end process;
    
    process(state_reg, start_sort, done_sort, request_out, w_data, out_data, tx_done_tick, count, wr_uart)
    begin
        state_next <= state_reg;
        done_next <= done_var;
        request_out_next <= request_out;
        w_data_next <= w_data;
        wr_uart_next <= wr_uart;
        count_next <= count;
        
        case state_reg is
            when idle => -- Wait to sort data
                request_out_next <= '0';
                wr_uart_next <= '0';
                if start_sort = '1' and done_var = '0' then
                    state_next <= sort;
                end if;            
            --when uart_store (if we decide dynamic storage from user)
            when sort => -- sort data already in BRAM
                if done_sort = '1' then
                    request_out_next <= '1';
                    wr_uart_next <= '1'; 
                    state_next <= read;
                end if;
            when next_read =>
                request_out_next <= '1';
                wr_uart_next <= '1';
                state_next <= read;
            when read => -- Begin reading data
                w_data_next <= out_data;
                request_out_next <= '0';
                wr_uart_next <= '0';
                if count = 2**ADDR_WIDTH then
                    state_next <= done;
                else                               
                    if tx_done_tick = '1' then -- Done reading data, move to next Byte
                        count_next <= count + 1;
                        state_next <= next_read;
                    end if;
                end if;             
                   
            when done =>
                done_next <= '1';
                state_next <= idle;
        end case;
    end process;
end Behavioral;
