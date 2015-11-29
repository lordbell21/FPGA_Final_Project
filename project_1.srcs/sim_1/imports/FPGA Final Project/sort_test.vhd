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
    signal start_sort : STD_LOGIC;
    signal tx, rx : STD_LOGIC;
begin

    clk_process : process
    begin
        clk <= '0';
        wait for 1 ns;
        clk <= '1';
        wait for 1 ns;
    end process;
    
    --sort : entity work.sorting_algo
    --    port map(clk, start_sort, done_sort, request_out, out_data, reset);
        
    interface : entity work.Interface
        Port map(clk, reset, start_sort, rx, tx );
        
    main : process
    begin
        reset <= '0';
        start_sort <= '0';
        wait for 4 ns;
        start_sort <= '1';
        wait for 5 ns;
        start_sort <= '0';
        wait for 400 ns;
    end process;

end Behavioral;
