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
-- Generated on "08/19/2019 13:36:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          block1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY block1_vhd_vec_tst IS
END block1_vhd_vec_tst;
ARCHITECTURE block1_arch OF block1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock50 : STD_LOGIC;
SIGNAL dis : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL jugador1 : STD_LOGIC;
SIGNAL jugador2 : STD_LOGIC;
SIGNAL led_indicador : STD_LOGIC;
SIGNAL led_rojo : STD_LOGIC;
SIGNAL led_verde : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
SIGNAL rojocolumna : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rojofila : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL seg : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL start : STD_LOGIC;
SIGNAL state : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL verdecolumna : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL verdefila : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT block1
	PORT (
	clock50 : IN STD_LOGIC;
	dis : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	jugador1 : IN STD_LOGIC;
	jugador2 : IN STD_LOGIC;
	led_indicador : OUT STD_LOGIC;
	led_rojo : OUT STD_LOGIC;
	led_verde : OUT STD_LOGIC;
	resetn : IN STD_LOGIC;
	rojocolumna : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rojofila : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	seg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	start : IN STD_LOGIC;
	state : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	verdecolumna : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	verdefila : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : block1
	PORT MAP (
-- list connections between master ports and signals
	clock50 => clock50,
	dis => dis,
	jugador1 => jugador1,
	jugador2 => jugador2,
	led_indicador => led_indicador,
	led_rojo => led_rojo,
	led_verde => led_verde,
	resetn => resetn,
	rojocolumna => rojocolumna,
	rojofila => rojofila,
	seg => seg,
	start => start,
	state => state,
	verdecolumna => verdecolumna,
	verdefila => verdefila
	);

-- clock50
t_prcs_clock50: PROCESS
BEGIN
	clock50 <= '1';
	WAIT FOR 5000 ps;
	clock50 <= '0';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 98
	LOOP
		clock50 <= '1';
		WAIT FOR 5000 ps;
		clock50 <= '0';
		WAIT FOR 5000 ps;
	END LOOP;
	clock50 <= '1';
	WAIT FOR 5000 ps;
	clock50 <= '0';
WAIT;
END PROCESS t_prcs_clock50;

-- jugador1
t_prcs_jugador1: PROCESS
BEGIN
	jugador1 <= '0';
	WAIT FOR 10000 ps;
	jugador1 <= '1';
	WAIT FOR 220000 ps;
	jugador1 <= '0';
	WAIT FOR 290000 ps;
	jugador1 <= '1';
	WAIT FOR 200000 ps;
	jugador1 <= '0';
WAIT;
END PROCESS t_prcs_jugador1;

-- jugador2
t_prcs_jugador2: PROCESS
BEGIN
	jugador2 <= '0';
	WAIT FOR 230000 ps;
	jugador2 <= '1';
	WAIT FOR 280000 ps;
	jugador2 <= '0';
	WAIT FOR 210000 ps;
	jugador2 <= '1';
	WAIT FOR 260000 ps;
	jugador2 <= '0';
WAIT;
END PROCESS t_prcs_jugador2;

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 30000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 20000 ps;
	start <= '1';
	WAIT FOR 90000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;
END block1_arch;
