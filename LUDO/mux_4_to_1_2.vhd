library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux_4_to_1_2 is
port(selectora : in std_logic_vector(1 downto 0);
	  habil : in std_logic;
	  sal4 : in std_logic_vector(3 downto 0);
	  sal3 : in std_logic_vector(3 downto 0);
	  sal2 : in std_logic_vector(3 downto 0);
	  sal1 : in std_logic_vector(3 downto 0);
	  sal : out std_logic_vector (3 downto 0));
end mux_4_to_1_2;

architecture arq of mux_4_to_1_2 is
begin
	process(habil, selectora)
		begin
		if habil = '1' then
			case selectora is
				when "00" => sal <= sal1;
				when "01" => sal <= sal2;
				when "10" => sal <= sal3;
				when "11" => sal <= sal4;
				when others => sal <= "ZZZZ";
			end case;
		end if;
	end process;
end arq;