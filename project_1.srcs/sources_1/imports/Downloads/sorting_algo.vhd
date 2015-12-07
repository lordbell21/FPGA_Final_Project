
use std.textio.all;
library IEEE;
use ieee.std_logic_textio.all;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
 
entity sorting_algo is
    generic (
        ADDR_WIDTH : integer := 4;
        DATA_WIDTH : integer := 16
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
    type mem_type is array (0 to MEM_DEPTH-1) of unsigned(DATA_WIDTH-1 downto 0);
 
    impure function init_mem(mif_file_name : in string) return mem_type is
        file mif_file : text open read_mode is mif_file_name;
        variable mif_line : line;
        --variable temp_bv : bit_vector(DATA_WIDTH-1 downto 0); -- For Bit Input
        variable temp_bv : std_logic_vector(DATA_WIDTH-1 downto 0); -- For Hex Input
        variable temp_mem : mem_type;
        begin
            for i in mem_type'range loop
                readline(mif_file, mif_line);
                hread(mif_line, temp_bv);
                temp_mem(i) := unsigned(temp_bv); -- For Hex input
                --temp_mem(i) := unsigned(to_stdlogicvector(temp_bv)); -- For Bit input
            end loop;
            return temp_mem;
        end function;
       
    signal mem, temp : mem_type := init_mem("mem_init_vhd.mif");
    
    type state_type is (idle, start, loop1, loop2, loop3, loop4, final, read_rdy, data_prep);
    signal state_reg : state_type;
    signal block_reg, block_next : integer := 0;
    signal start_reg, start_next, lo_reg, lo_next, mid_reg, mid_next, hi_reg, hi_next: integer := 0;
    signal i_reg, i_next, j_reg, j_next, k_reg, k_next : integer := 0;
    signal done_reg, done_next: std_logic := '0';
    signal dat_reg, dat_next : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal it_reg, it_next : integer := 0;
begin
 
    done_sort <= done_reg;
    out_data <= dat_reg;
 
    process (clk, reset)
    begin
        if(rising_edge(clk)) then
            if(reset = '1') then
                    state_reg <= idle;
                    block_reg <= 1;
                    start_reg <= 0;
                    lo_reg <= 0;
                    mid_reg <= 1;
                    hi_reg <= 2;
                    i_reg <= 0;
                    j_reg <= 1;
                    k_reg <= 0;
                    done_reg <= '0';
                    dat_reg <= (others => '0');
                    it_reg <= 0;
               else
                   case state_reg is
                     when idle =>
                         done_reg <= '0';
                         if(start_sort = '1') then
                             block_reg <= 1;
                             state_reg <= loop1;
                         end if;
                     when loop1 =>
                         if(block_reg >= MEM_DEPTH) then
                             state_reg <= final;
                         else
                             start_reg <= 0;
                             lo_reg <= 0;
                             mid_reg <= 0 + block_reg;
                             hi_reg <= 0 + block_reg + block_reg;
                             state_reg <= loop2;
                         end if;
                     when loop2 =>
                         if(start_reg >= MEM_MAX) then
                             block_reg <= block_reg + block_reg;
                             state_reg <= loop1;
                             mem <= temp;
                         else
                             if(start_reg > MEM_MAX) then
                                 mid_reg <= MEM_DEPTH-1;
                                 j_reg <= MEM_DEPTH-1;
                             else
                                 j_reg <= mid_reg;
                             end if;
                             if(hi_reg > MEM_MAX) then
                                 hi_reg <= MEM_DEPTH;
                             end if;
                             i_reg <= lo_reg;
                             state_reg <= loop3;
                             k_reg <= lo_reg;
                         end if;
                     when loop3 =>
                         if(k_reg >= hi_reg) then
                             state_reg <= loop4;
                         else
                             if(i_reg = mid_reg) then
                                 temp(k_reg) <= mem(j_reg);
                                 j_reg <= j_reg + 1;
                             elsif(j_reg = hi_reg) then
                                 temp(k_reg) <= mem(i_reg);
                                 i_reg <= i_reg + 1;
                             elsif(mem(j_reg) < mem(i_reg)) then
                                 temp(k_reg) <= mem(j_reg);
                                 j_reg <= j_reg + 1;
                             else
                                 temp(k_reg) <= mem(i_reg);
                                 i_reg <= i_reg +1;
                             end if;
                             k_reg <= k_reg + 1;
                             
                         end if;
                     when loop4 =>
                         if(k_reg >= hi_reg) then
                             start_reg <= start_reg + block_reg + block_reg;
                             lo_reg <=  start_reg + block_reg + block_reg;
                             mid_reg <= start_reg + block_reg + block_reg + block_reg;
                             hi_reg <= start_reg + block_reg + block_reg + block_reg + block_reg;
         --                    block_reg <= block_reg + block_reg;
                             state_reg <= loop2;              
                         else
                             mem(k_reg) <= temp(k_reg);
                             k_reg <= k_reg;
                         end if;
                     when final =>
                         done_reg <= '1';
                         it_reg <= 0;
                         state_reg <= read_rdy;
                     when read_rdy =>
                         if(request_out = '1') then
                             if(it_reg >= MEM_DEPTH) then
                                 it_reg <= 0;
                                 state_reg <= idle;
                             else
                                 dat_reg <= std_logic_vector(temp(it_reg));
                                 state_reg <= data_prep;
                             end if;
                         end if;
                     when data_prep =>
                         if(request_out = '0') then
                             it_reg <= it_reg + 1;
                             state_reg <= read_rdy;
                         end if;  
                     when others =>
                         state_reg <=idle;              
                 end case;
            end if;
        end if;
    end process;
end arch;