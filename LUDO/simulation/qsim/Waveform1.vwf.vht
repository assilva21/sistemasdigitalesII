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
-- Generated on "07/26/2019 01:18:30"
                                                             
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
SIGNAL enable : STD_LOGIC;
SIGNAL Ent : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL Yo : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT block1
	PORT (
	clock : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	Ent : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	reset : IN STD_LOGIC;
	Yo : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : block1
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	enable => enable,
	Ent => Ent,
	reset => reset,
	Yo => Yo
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
-- Ent[4]
t_prcs_Ent_4: PROCESS
BEGIN
	Ent(4) <= '0';
	WAIT FOR 250000 ps;
	Ent(4) <= '1';
	WAIT FOR 70000 ps;
	Ent(4) <= '0';
WAIT;
END PROCESS t_prcs_Ent_4;
-- Ent[3]
t_prcs_Ent_3: PROCESS
BEGIN
	Ent(3) <= '0';
	WAIT FOR 250000 ps;
	Ent(3) <= '1';
	WAIT FOR 70000 ps;
	Ent(3) <= '0';
WAIT;
END PROCESS t_prcs_Ent_3;
-- Ent[2]
t_prcs_Ent_2: PROCESS
BEGIN
	Ent(2) <= '0';
	WAIT FOR 250000 ps;
	Ent(2) <= '1';
	WAIT FOR 70000 ps;
	Ent(2) <= '0';
WAIT;
END PROCESS t_prcs_Ent_2;
-- Ent[1]
t_prcs_Ent_1: PROCESS
BEGIN
	Ent(1) <= '0';
	WAIT FOR 250000 ps;
	Ent(1) <= '1';
	WAIT FOR 70000 ps;
	Ent(1) <= '0';
WAIT;
END PROCESS t_prcs_Ent_1;
-- Ent[0]
t_prcs_Ent_0: PROCESS
BEGIN
	Ent(0) <= '0';
	WAIT FOR 250000 ps;
	Ent(0) <= '1';
	WAIT FOR 70000 ps;
	Ent(0) <= '0';
WAIT;
END PROCESS t_prcs_Ent_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END block1_arch;
