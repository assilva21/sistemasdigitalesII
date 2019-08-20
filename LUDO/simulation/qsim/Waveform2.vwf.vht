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
-- Generated on "07/26/2019 01:23:02"
                                                             
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
SIGNAL enable : STD_LOGIC;
SIGNAL enable7 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL Resetn : STD_LOGIC;
SIGNAL Yo : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Yo5 : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT block1
	PORT (
	clock : IN STD_LOGIC;
	clock6 : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	enable7 : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	Resetn : IN STD_LOGIC;
	Yo : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Yo5 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : block1
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	clock6 => clock6,
	enable => enable,
	enable7 => enable7,
	reset => reset,
	Resetn => Resetn,
	Yo => Yo,
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

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
	WAIT FOR 270000 ps;
	enable <= '1';
	WAIT FOR 30000 ps;
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;

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

-- Resetn
t_prcs_Resetn: PROCESS
BEGIN
	Resetn <= '0';
WAIT;
END PROCESS t_prcs_Resetn;
END block1_arch;
