-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/01/2019 02:31:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          controlador_ludo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY controlador_ludo_vhd_vec_tst IS
END controlador_ludo_vhd_vec_tst;
ARCHITECTURE controlador_ludo_arch OF controlador_ludo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aleatorio_jugador : STD_LOGIC;
SIGNAL aumentar_rojo : STD_LOGIC;
SIGNAL aumentar_verde : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL dado1 : STD_LOGIC;
SIGNAL dado2 : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL igual1 : STD_LOGIC;
SIGNAL igual2 : STD_LOGIC;
SIGNAL led_indicador : STD_LOGIC;
SIGNAL led_rojo : STD_LOGIC;
SIGNAL led_verde : STD_LOGIC;
SIGNAL R : STD_LOGIC;
SIGNAL registro_dado1 : STD_LOGIC;
SIGNAL registro_dado2 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL S : STD_LOGIC;
SIGNAL state : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL turno : STD_LOGIC;
COMPONENT controlador_ludo
	PORT (
	aleatorio_jugador : BUFFER STD_LOGIC;
	aumentar_rojo : BUFFER STD_LOGIC;
	aumentar_verde : BUFFER STD_LOGIC;
	clock : IN STD_LOGIC;
	dado1 : IN STD_LOGIC;
	dado2 : IN STD_LOGIC;
	enable : BUFFER STD_LOGIC;
	igual1 : IN STD_LOGIC;
	igual2 : IN STD_LOGIC;
	led_indicador : BUFFER STD_LOGIC;
	led_rojo : BUFFER STD_LOGIC;
	led_verde : BUFFER STD_LOGIC;
	R : IN STD_LOGIC;
	registro_dado1 : BUFFER STD_LOGIC;
	registro_dado2 : BUFFER STD_LOGIC;
	reset : BUFFER STD_LOGIC;
	S : IN STD_LOGIC;
	state : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	turno : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : controlador_ludo
	PORT MAP (
-- list connections between master ports and signals
	aleatorio_jugador => aleatorio_jugador,
	aumentar_rojo => aumentar_rojo,
	aumentar_verde => aumentar_verde,
	clock => clock,
	dado1 => dado1,
	dado2 => dado2,
	enable => enable,
	igual1 => igual1,
	igual2 => igual2,
	led_indicador => led_indicador,
	led_rojo => led_rojo,
	led_verde => led_verde,
	R => R,
	registro_dado1 => registro_dado1,
	registro_dado2 => registro_dado2,
	reset => reset,
	S => S,
	state => state,
	turno => turno
	);

-- R
t_prcs_R: PROCESS
BEGIN
	R <= '0';
	WAIT FOR 40000 ps;
	R <= '1';
	WAIT FOR 1130000 ps;
	R <= '0';
WAIT;
END PROCESS t_prcs_R;

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 98
	LOOP
		clock <= '0';
		WAIT FOR 10000 ps;
		clock <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
WAIT;
END PROCESS t_prcs_clock;

-- S
t_prcs_S: PROCESS
BEGIN
	S <= '0';
WAIT;
END PROCESS t_prcs_S;

-- turno
t_prcs_turno: PROCESS
BEGIN
	turno <= '0';
WAIT;
END PROCESS t_prcs_turno;

-- dado1
t_prcs_dado1: PROCESS
BEGIN
	dado1 <= '0';
WAIT;
END PROCESS t_prcs_dado1;

-- dado2
t_prcs_dado2: PROCESS
BEGIN
	dado2 <= '0';
WAIT;
END PROCESS t_prcs_dado2;

-- igual1
t_prcs_igual1: PROCESS
BEGIN
	igual1 <= '0';
WAIT;
END PROCESS t_prcs_igual1;

-- igual2
t_prcs_igual2: PROCESS
BEGIN
	igual2 <= '0';
WAIT;
END PROCESS t_prcs_igual2;
END controlador_ludo_arch;
