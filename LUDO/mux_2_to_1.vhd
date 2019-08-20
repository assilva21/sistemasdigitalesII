library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux_2_to_1 is
port(selectora : in std_logic;
	  ent0,ent1 : in std_logic_vector(5 downto 0);
	  sal : out std_logic_vector (5 downto 0));
end mux_2_to_1;

architecture arq of mux_2_to_1 is
begin
with selectora select
sal <= ent0 when '0',
		 ent1 when '1';
end arq;