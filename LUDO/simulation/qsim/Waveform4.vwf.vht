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
-- Generated on "07/26/2019 08:03:40"
                                                             
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
SIGNAL clock : STD_LOGIC;
SIGNAL clock6 : STD_LOGIC;
SIGNAL clock9 : STD_LOGIC;
SIGNAL DADO1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL DADO2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL enable7 : STD_LOGIC;
SIGNAL enable11 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL reset10 : STD_LOGIC;
SIGNAL Resetn : STD_LOGIC;
SIGNAL Yo5 : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT block1
	PORT (
	clock : IN STD_LOGIC;
	clock6 : IN STD_LOGIC;
	clock9 : IN STD_LOGIC;
	DADO1 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	DADO2 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	enable : IN STD_LOGIC;
	enable7 : IN STD_LOGIC;
	enable11 : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	reset10 : IN STD_LOGIC;
	Resetn : IN STD_LOGIC;
	Yo5 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : block1
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	clock6 => clock6,
	clock9 => clock9,
	DADO1 => DADO1,
	DADO2 => DADO2,
	enable => enable,
	enable7 => enable7,
	enable11 => enable11,
	reset => reset,
	reset10 => reset10,
	Resetn => Resetn,
	Yo5 => Yo5
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- clock6
t_prcs_clock6: PROCESS
BEGIN
LOOP
	clock6 <= '0';
	WAIT FOR 5000 ps;
	clock6 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock6;

-- clock9
t_prcs_clock9: PROCESS
BEGIN
LOOP
	clock9 <= '0';
	WAIT FOR 5000 ps;
	clock9 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock9;

-- enable7
t_prcs_enable7: PROCESS
BEGIN
	enable7 <= '1';
WAIT;
END PROCESS t_prcs_enable7;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- reset10
t_prcs_reset10: PROCESS
BEGIN
	reset10 <= '0';
WAIT;
END PROCESS t_prcs_reset10;

-- Resetn
t_prcs_Resetn: PROCESS
BEGIN
	Resetn <= '0';
WAIT;
END PROCESS t_prcs_Resetn;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
	WAIT FOR 170000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 100000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;

-- enable11
t_prcs_enable11: PROCESS
BEGIN
	enable11 <= '0';
	WAIT FOR 380000 ps;
	enable11 <= '1';
	WAIT FOR 10000 ps;
	enable11 <= '0';
	WAIT FOR 180000 ps;
	enable11 <= '1';
	WAIT FOR 10000 ps;
	enable11 <= '0';
WAIT;
END PROCESS t_prcs_enable11;
END block1_arch;
