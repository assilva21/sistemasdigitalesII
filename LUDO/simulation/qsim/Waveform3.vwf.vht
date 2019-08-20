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
-- Generated on "07/26/2019 07:55:56"
                                                             
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
SIGNAL enable : STD_LOGIC;
SIGNAL enable7 : STD_LOGIC;
SIGNAL enable11 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL reset10 : STD_LOGIC;
SIGNAL Resetn : STD_LOGIC;
SIGNAL Yo0 : STD_LOGIC;
SIGNAL Yo1 : STD_LOGIC;
SIGNAL Yo2 : STD_LOGIC;
SIGNAL Yo3 : STD_LOGIC;
SIGNAL Yo4 : STD_LOGIC;
SIGNAL Yo5 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Yo20 : STD_LOGIC;
SIGNAL Yo21 : STD_LOGIC;
SIGNAL Yo22 : STD_LOGIC;
SIGNAL Yo23 : STD_LOGIC;
SIGNAL Yo24 : STD_LOGIC;
COMPONENT block1
	PORT (
	clock : IN STD_LOGIC;
	clock6 : IN STD_LOGIC;
	clock9 : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	enable7 : IN STD_LOGIC;
	enable11 : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	reset10 : IN STD_LOGIC;
	Resetn : IN STD_LOGIC;
	Yo0 : OUT STD_LOGIC;
	Yo1 : OUT STD_LOGIC;
	Yo2 : OUT STD_LOGIC;
	Yo3 : OUT STD_LOGIC;
	Yo4 : OUT STD_LOGIC;
	Yo5 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Yo20 : OUT STD_LOGIC;
	Yo21 : OUT STD_LOGIC;
	Yo22 : OUT STD_LOGIC;
	Yo23 : OUT STD_LOGIC;
	Yo24 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : block1
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	clock6 => clock6,
	clock9 => clock9,
	enable => enable,
	enable7 => enable7,
	enable11 => enable11,
	reset => reset,
	reset10 => reset10,
	Resetn => Resetn,
	Yo0 => Yo0,
	Yo1 => Yo1,
	Yo2 => Yo2,
	Yo3 => Yo3,
	Yo4 => Yo4,
	Yo5 => Yo5,
	Yo20 => Yo20,
	Yo21 => Yo21,
	Yo22 => Yo22,
	Yo23 => Yo23,
	Yo24 => Yo24
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

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
	WAIT FOR 270000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;

-- enable7
t_prcs_enable7: PROCESS
BEGIN
	enable7 <= '1';
WAIT;
END PROCESS t_prcs_enable7;

-- enable11
t_prcs_enable11: PROCESS
BEGIN
	enable11 <= '0';
	WAIT FOR 460000 ps;
	enable11 <= '1';
	WAIT FOR 10000 ps;
	enable11 <= '0';
WAIT;
END PROCESS t_prcs_enable11;

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
END block1_arch;
