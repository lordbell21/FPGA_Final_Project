-- Listing 6.6
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2hex is
   port(
      clk: in std_logic;
      bin: in std_logic_vector(15 downto 0);
      hex_out: out std_logic_vector(15 downto 0)
   );
end bin2hex ;

architecture arch of bin2hex is
    signal hex0, hex1, hex2, hex3 : std_logic_vector(3 downto 0);
begin

   process(clk)
   begin
    if(rising_edge(clk)) then
        case to_integer(unsigned(bin(15 downto 12))) is
            when 10 =>
                hex3 <= X"A";
            when 11 =>
                hex3 <= X"B";
            when 12 =>
                hex3 <= X"C";
            when 13 =>
                hex3 <= X"D";
            when 14 =>
                hex3 <= X"E";
            when 15 =>
                hex3 <= X"F";
            when others =>
                hex3 <= bin(15 downto 12);
         end case;
         
         case to_integer(unsigned(bin(11 downto 8))) is
             when 10 =>
                 hex2 <= X"A";
             when 11 =>
                 hex2 <= X"B";
             when 12 =>
                 hex2 <= X"C";
             when 13 =>
                 hex2 <= X"D";
             when 14 =>
                 hex2 <= X"E";
             when 15 =>
                 hex2 <= X"F";
             when others =>
                 hex2 <= bin(11 downto 8);
         end case;
         
         case to_integer(unsigned(bin(7 downto 4))) is
              when 10 =>
                  hex1 <= X"A";
              when 11 =>
                  hex1 <= X"B";
              when 12 =>
                  hex1 <= X"C";
              when 13 =>
                  hex1 <= X"D";
              when 14 =>
                  hex1 <= X"E";
              when 15 =>
                  hex1 <= X"F";
              when others =>
                  hex1 <= bin(7 downto 4);
         end case;
         
         case to_integer(unsigned(bin(3 downto 0))) is
               when 10 =>
                   hex0 <= X"A";
               when 11 =>
                   hex0 <= X"B";
               when 12 =>
                   hex0 <= X"C";
               when 13 =>
                   hex0 <= X"D";
               when 14 =>
                   hex0 <= X"E";
               when 15 =>
                   hex0 <= X"F";
               when others =>
                   hex0 <= bin(3 downto 0);
          end case;
    end if;            
   end process;
   
   hex_out <= hex3 & hex2 & hex1 & hex0;
   
end arch;
