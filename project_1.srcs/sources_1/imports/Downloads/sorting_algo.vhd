----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2015 10:09:54 PM
-- Design Name: 
-- Module Name: sorting_algo - arch
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
use ieee.numeric_std.all;
use std.textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sorting_algo is
    generic (
        ADDR_WIDTH : integer := 4;
        DATA_WIDTH : integer := 8
        );
    Port ( clk : in STD_LOGIC;
           start_sort : in STD_LOGIC;
           done_sort : out STD_LOGIC;
           request_out : in STD_LOGIC;
           out_data : out STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
           reset : in STD_LOGIC)
           ;
end sorting_algo;

architecture arch of sorting_algo is

    constant MEM_DEPTH : integer := 2**ADDR_WIDTH;
    constant MEM_MAX : integer := 2**ADDR_WIDTH-1;
    type mem_type is array (0 to MEM_DEPTH-1) of signed(DATA_WIDTH-1 downto 0);

    impure function init_mem(mif_file_name : in string) return mem_type is
        file mif_file : text open read_mode is mif_file_name;
        variable mif_line : line;
        variable temp_bv : bit_vector(DATA_WIDTH-1 downto 0);
        variable temp_mem : mem_type;
        begin
            for i in mem_type'range loop
                readline(mif_file, mif_line);
                read(mif_line, temp_bv);
                temp_mem(i) := signed(to_stdlogicvector(temp_bv));
            end loop;
            return temp_mem;
        end function;
        
    signal mem, mem_next : mem_type := init_mem("mem_init_vhd.mif");
    constant constant_mem : mem_type := init_mem("mem_init_vhd.mif");
    signal temp, temp_next : mem_type;
    
    type state_type is (idle, start, loop1, loop2, loop3, loop4, final, read_rdy, data_prep);
    signal state_reg, state_next : state_type;
    signal block_reg, block_next : integer;
    signal start_reg, start_next, lo_reg, lo_next, mid_reg, mid_next, hi_reg, hi_next: integer;
    signal i_reg, i_next, j_reg, j_next, k_reg, k_next : integer range 0 to 2**ADDR_WIDTH-1 := 0;
    signal done_reg, done_next: std_logic;
    signal dat_reg, dat_next : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal it_reg, it_next : integer;
begin

    done_sort <= done_reg;
    out_data <= dat_reg;

    process (clk, reset)
    begin
        if(reset = '1') then
            state_reg <= idle;
            block_reg <= 1;
            start_reg <= 0;
            lo_reg <= 0;
            mid_reg <= 1;
            hi_reg <= 2;
            i_reg <= 0;
            j_reg <= 1;
            mem <= constant_mem;
            temp <= constant_mem;
            k_reg <= 0;
            done_reg <= '0';
            dat_reg <= (others => '0');
            it_reg <= 0;
        elsif(rising_edge(clk)) then
            state_reg <= state_next;
            block_reg <= block_next;
            start_reg <= start_next;
            temp <= temp_next;
            mem <= mem_next;
            lo_reg <= lo_next;
            mid_reg <= mid_next;
            hi_reg <= hi_next;
            i_reg <= i_next;
            j_reg <= j_next;
            k_reg <= k_next;
            done_reg <= done_next;
            dat_reg <= dat_next;
            it_reg <= it_next;
        end if;
    end process;
    
    process(state_reg, block_reg, start_reg, lo_reg, mid_reg, hi_reg, i_reg, j_reg, k_reg, start_sort, done_reg, dat_reg, it_reg, request_out, temp, mem)
    begin
        state_next <= state_reg;
        block_next <= block_reg;
        start_next <= start_reg;
        lo_next <= lo_reg;
        mid_next <= mid_reg;
        hi_next <= hi_reg;
        i_next <= i_reg;
        j_next <= j_reg;
        k_next <= k_reg;
        done_next <= done_reg;
        dat_next <= dat_reg;
        it_next <= it_reg;
        mem_next <= mem;
        temp_next <= temp;
        
        case state_reg is
            when idle =>
                done_next <= '0';
                if(start_sort = '1') then
                    block_next <= 1;
                    state_next <= loop1;
                end if;
            when loop1 =>
                if(block_reg >= MEM_DEPTH) then
                    state_next <= final;
                else
                    start_next <= 0;
                    lo_next <= 0;
                    mid_next <= 0 + block_reg;
                    hi_next <= 0 + block_reg + block_reg;
                    state_next <= loop2;
                end if;
            when loop2 =>
                if(start_reg >= MEM_MAX) then
                    block_next <= block_reg + block_reg;
                    state_next <= loop1;
                    mem_next <= temp;
                else
                    if(start_reg > MEM_MAX) then
                        mid_next <= MEM_DEPTH-1;
                        j_next <= MEM_DEPTH-1;
                    else
                        j_next <= mid_reg;
                    end if;
                    if(hi_reg > MEM_MAX) then
                        hi_next <= MEM_DEPTH;
                    end if;
                    i_next <= lo_reg;
                    state_next <= loop3;
                    k_next <= lo_reg;
                end if;
            when loop3 =>
                if(k_reg >= hi_reg) then
                    state_next <= loop4;
                else
                    if(i_reg = mid_reg) then
                        temp_next(k_reg) <= mem(j_reg);
                        j_next <= j_reg + 1;
                    elsif(j_reg = hi_reg) then
                        temp_next(k_reg) <= mem(i_reg);
                        i_next <= i_reg + 1;
                    elsif(mem(j_reg) < mem(i_reg)) then
                        temp_next(k_reg) <= mem(j_reg);
                        j_next <= j_reg + 1;
                    else
                        temp_next(k_reg) <= mem(i_reg); 
                        i_next <= i_reg +1;
                    end if;                    
                    k_next <= k_reg + 1;
                end if;
            when loop4 =>
                if(k_reg >= hi_reg) then
                    start_next <= start_reg + block_reg + block_reg;
                    lo_next <=  start_reg + block_reg + block_reg;
                    mid_next <= start_reg + block_reg + block_reg + block_reg;
                    hi_next <= start_reg + block_reg + block_reg + block_reg + block_reg;
                    --block_next <= block_reg + block_reg;
                    state_next <= loop2;               
                else
                    mem_next(k_reg) <= temp(k_reg);
                    k_next <= k_reg;
                end if;
            when final =>
                done_next <= '1';
                it_next <= 0;
                state_next <= read_rdy;
            when read_rdy =>
                if(request_out = '1') then
                    if(it_reg >= MEM_DEPTH) then
                        it_next <= 0;
                        state_next <= idle;
                    else
                        dat_next <= std_logic_vector(temp(it_reg));
                        state_next <= data_prep;
                    end if;
                end if;
            when data_prep =>
                if(request_out = '0') then
                    it_next <= it_reg + 1;
                    state_next <= read_rdy;
                end if;  
            when others =>
                state_next <=idle;              
        end case;
    end process;

end arch;
