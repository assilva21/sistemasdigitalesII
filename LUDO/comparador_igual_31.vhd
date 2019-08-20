library ieee;
use ieee.std_logic_1164.all;

entity comparador_igual_31 is

port(A: in std_logic_vector(4 downto 0);
		igual31: out std_logic);
		
end comparador_igual_31;

architecture arq of comparador_igual_31 is
begin
igual31 <= '1' when (A="11111") else '0';
end arq;