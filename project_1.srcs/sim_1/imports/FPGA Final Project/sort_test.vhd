----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2015 06:29:12 PM
-- Design Name: 
-- Module Name: sort_test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sort_test is
--  Port ( );
end sort_test;

architecture Behavioral of sort_test is
    signal clk, reset : STD_LOGIC := '1';
    signal start, done_sort, request_out : STD_LOGIC;
    signal tx : STD_LOGIC;
    signal out_data : std_logic_vector(7 downto 0);
    
    constant DATA_WIDTH : integer := 8;
    constant ADDR_WIDTH : integer := 4;
begin

    clk_process : process
    begin
        clk <= '0';
        wait for 1 ns;
        clk <= '1';
        wait for 1 ns;
    end process;
    
    --sort : entity work.sorting_algo
    --     port map(clk => clk, start_sort => start_sort, done_sort => done_sort, request_out => request_out, out_data => out_data, reset => reset);
        
    interface : entity work.Interface
        Port map(clk, reset, start, tx );
        
    main : process
    begin
        start <= '0';
        wait for 1 ms;
        start <= '1';
        wait for 2 ms;
        start <= '0';
        wait for 40 ms;
    end process;

end Behavioral;
