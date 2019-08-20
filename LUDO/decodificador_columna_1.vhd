LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decodificador_columna_1 IS
	PORT(	w	:IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			En	:IN STD_LOGIC;
			y	:OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END decodificador_columna_1;

ARCHITECTURE Behavior of decodificador_columna_1 IS
	SIGNAL Enw: STD_LOGIC_VECTOR(6 DOWNTO 0);
BEGIN
	Enw <=En&w;
	WITH Enw SELECT
		y<="1111" WHEN "1000000",
			"1110" WHEN "1000001",
			"1110" WHEN "1000010",
			"1110" WHEN "1000011",
			"1110" WHEN "1000100",
			"1110" WHEN "1000101",
			"1110" WHEN "1000110",
			"1110" WHEN "1000111",
			"1110" WHEN "1001000",
			"1110" WHEN "1001001",
			"1110" WHEN "1001010",
			"1110" WHEN "1001011",
			"1110" WHEN "1001100",
			"1110" WHEN "1001101",
			"1110" WHEN "1001110",
			"1110" WHEN "1001111",
			"1110" WHEN "1010000",
			"1110" WHEN "1010001",
			"1110" WHEN "1010010",
			"1110" WHEN "1010011",
			"1110" WHEN "1010100",
			"1110" WHEN "1010101",
			"1110" WHEN "1010110",
			"1110" WHEN "1010111",
			"1110" WHEN "1011000",
			"1110" WHEN "1011001",
			"1110" WHEN "1011010",
			"1110" WHEN "1011011",
			"1110" WHEN "1011100",
			"1110" WHEN "1011101",
			"1110" WHEN "1011110",
			"1110" WHEN "1011111",
			"1110" WHEN "1100000",
			"1110" WHEN "1100001",
			"1110" WHEN "1100010",
			"1110" WHEN "1100011",
			"1110" WHEN "1100100",
			"1110" WHEN "1100101",
			"1110" WHEN "1100110",
			
			"1111" WHEN OTHERS;
END Behavior;