library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Deco7seg is
port(entrada : in std_logic_vector(5 downto 0);
		salida: out std_logic_vector(6 downto 0));
		
end Deco7seg;

architecture arq of Deco7seg is
SIGNAL y: std_logic_vector (6 downto 0);
begin
	with entrada select
			  y <= "1111110" when "000000",--0
					 "0110000" when "000001",--1
					 "1101101" when "000010",--2
					 "1111001" when "000011",--3
					 "0110011" when "000100",--4
					 "1011011" when "000101",--5
					 "1011111" when "000110",--6
					 "1110000" when "000111",--7
					 "1111111" when "001000",--8
					 "1111011" when "001001",--9
					 "0000000" when others;
		salida <=  y;
end arq;