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
-- Generated on "07/27/2019 20:17:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          block2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY block2_vhd_vec_tst IS
END block2_vhd_vec_tst;
ARCHITECTURE block2_arch OF block2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL habil : STD_LOGIC;
SIGNAL sal0 : STD_LOGIC;
SIGNAL sal1 : STD_LOGIC;
SIGNAL sal2 : STD_LOGIC;
SIGNAL sal3 : STD_LOGIC;
SIGNAL sal4 : STD_LOGIC;
SIGNAL sal5 : STD_LOGIC;
SIGNAL sal6 : STD_LOGIC;
SIGNAL sal7 : STD_LOGIC;
SIGNAL sal10 : STD_LOGIC;
SIGNAL sal11 : STD_LOGIC;
SIGNAL sal12 : STD_LOGIC;
SIGNAL sal13 : STD_LOGIC;
SIGNAL sal14 : STD_LOGIC;
SIGNAL sal15 : STD_LOGIC;
SIGNAL sal16 : STD_LOGIC;
SIGNAL sal17 : STD_LOGIC;
SIGNAL sal20 : STD_LOGIC;
SIGNAL sal21 : STD_LOGIC;
SIGNAL sal22 : STD_LOGIC;
SIGNAL sal23 : STD_LOGIC;
SIGNAL sal24 : STD_LOGIC;
SIGNAL sal25 : STD_LOGIC;
SIGNAL sal26 : STD_LOGIC;
SIGNAL sal27 : STD_LOGIC;
SIGNAL sal30 : STD_LOGIC;
SIGNAL sal31 : STD_LOGIC;
SIGNAL sal32 : STD_LOGIC;
SIGNAL sal33 : STD_LOGIC;
SIGNAL sal34 : STD_LOGIC;
SIGNAL sal35 : STD_LOGIC;
SIGNAL sal36 : STD_LOGIC;
SIGNAL sal37 : STD_LOGIC;
SIGNAL sal40 : STD_LOGIC;
SIGNAL sal41 : STD_LOGIC;
SIGNAL sal42 : STD_LOGIC;
SIGNAL sal43 : STD_LOGIC;
SIGNAL sal44 : STD_LOGIC;
SIGNAL sal45 : STD_LOGIC;
SIGNAL sal46 : STD_LOGIC;
SIGNAL sal47 : STD_LOGIC;
SIGNAL selectora : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT block2
	PORT (
	habil : IN STD_LOGIC;
	sal0 : OUT STD_LOGIC;
	sal1 : OUT STD_LOGIC;
	sal2 : OUT STD_LOGIC;
	sal3 : OUT STD_LOGIC;
	sal4 : OUT STD_LOGIC;
	sal5 : OUT STD_LOGIC;
	sal6 : OUT STD_LOGIC;
	sal7 : OUT STD_LOGIC;
	sal10 : IN STD_LOGIC;
	sal11 : IN STD_LOGIC;
	sal12 : IN STD_LOGIC;
	sal13 : IN STD_LOGIC;
	sal14 : IN STD_LOGIC;
	sal15 : IN STD_LOGIC;
	sal16 : IN STD_LOGIC;
	sal17 : IN STD_LOGIC;
	sal20 : IN STD_LOGIC;
	sal21 : IN STD_LOGIC;
	sal22 : IN STD_LOGIC;
	sal23 : IN STD_LOGIC;
	sal24 : IN STD_LOGIC;
	sal25 : IN STD_LOGIC;
	sal26 : IN STD_LOGIC;
	sal27 : IN STD_LOGIC;
	sal30 : IN STD_LOGIC;
	sal31 : IN STD_LOGIC;
	sal32 : IN STD_LOGIC;
	sal33 : IN STD_LOGIC;
	sal34 : IN STD_LOGIC;
	sal35 : IN STD_LOGIC;
	sal36 : IN STD_LOGIC;
	sal37 : IN STD_LOGIC;
	sal40 : IN STD_LOGIC;
	sal41 : IN STD_LOGIC;
	sal42 : IN STD_LOGIC;
	sal43 : IN STD_LOGIC;
	sal44 : IN STD_LOGIC;
	sal45 : IN STD_LOGIC;
	sal46 : IN STD_LOGIC;
	sal47 : IN STD_LOGIC;
	selectora : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : block2
	PORT MAP (
-- list connections between master ports and signals
	habil => habil,
	sal0 => sal0,
	sal1 => sal1,
	sal2 => sal2,
	sal3 => sal3,
	sal4 => sal4,
	sal5 => sal5,
	sal6 => sal6,
	sal7 => sal7,
	sal10 => sal10,
	sal11 => sal11,
	sal12 => sal12,
	sal13 => sal13,
	sal14 => sal14,
	sal15 => sal15,
	sal16 => sal16,
	sal17 => sal17,
	sal20 => sal20,
	sal21 => sal21,
	sal22 => sal22,
	sal23 => sal23,
	sal24 => sal24,
	sal25 => sal25,
	sal26 => sal26,
	sal27 => sal27,
	sal30 => sal30,
	sal31 => sal31,
	sal32 => sal32,
	sal33 => sal33,
	sal34 => sal34,
	sal35 => sal35,
	sal36 => sal36,
	sal37 => sal37,
	sal40 => sal40,
	sal41 => sal41,
	sal42 => sal42,
	sal43 => sal43,
	sal44 => sal44,
	sal45 => sal45,
	sal46 => sal46,
	sal47 => sal47,
	selectora => selectora
	);

-- habil
t_prcs_habil: PROCESS
BEGIN
	habil <= '1';
WAIT;
END PROCESS t_prcs_habil;

-- sal10
t_prcs_sal10: PROCESS
BEGIN
	sal10 <= '0';
WAIT;
END PROCESS t_prcs_sal10;

-- sal11
t_prcs_sal11: PROCESS
BEGIN
	sal11 <= '0';
WAIT;
END PROCESS t_prcs_sal11;

-- sal12
t_prcs_sal12: PROCESS
BEGIN
	sal12 <= '0';
WAIT;
END PROCESS t_prcs_sal12;

-- sal13
t_prcs_sal13: PROCESS
BEGIN
	sal13 <= '0';
WAIT;
END PROCESS t_prcs_sal13;

-- sal14
t_prcs_sal14: PROCESS
BEGIN
	sal14 <= '0';
WAIT;
END PROCESS t_prcs_sal14;

-- sal15
t_prcs_sal15: PROCESS
BEGIN
	sal15 <= '0';
WAIT;
END PROCESS t_prcs_sal15;

-- sal16
t_prcs_sal16: PROCESS
BEGIN
	sal16 <= '0';
WAIT;
END PROCESS t_prcs_sal16;

-- sal17
t_prcs_sal17: PROCESS
BEGIN
	sal17 <= '0';
	WAIT FOR 10000 ps;
	sal17 <= '1';
	WAIT FOR 30000 ps;
	sal17 <= '0';
WAIT;
END PROCESS t_prcs_sal17;

-- sal20
t_prcs_sal20: PROCESS
BEGIN
	sal20 <= '0';
WAIT;
END PROCESS t_prcs_sal20;

-- sal21
t_prcs_sal21: PROCESS
BEGIN
	sal21 <= '0';
WAIT;
END PROCESS t_prcs_sal21;

-- sal22
t_prcs_sal22: PROCESS
BEGIN
	sal22 <= '0';
WAIT;
END PROCESS t_prcs_sal22;

-- sal23
t_prcs_sal23: PROCESS
BEGIN
	sal23 <= '0';
WAIT;
END PROCESS t_prcs_sal23;

-- sal24
t_prcs_sal24: PROCESS
BEGIN
	sal24 <= '0';
WAIT;
END PROCESS t_prcs_sal24;

-- sal25
t_prcs_sal25: PROCESS
BEGIN
	sal25 <= '0';
WAIT;
END PROCESS t_prcs_sal25;

-- sal26
t_prcs_sal26: PROCESS
BEGIN
	sal26 <= '0';
	WAIT FOR 50000 ps;
	sal26 <= '1';
	WAIT FOR 30000 ps;
	sal26 <= '0';
WAIT;
END PROCESS t_prcs_sal26;

-- sal27
t_prcs_sal27: PROCESS
BEGIN
	sal27 <= '0';
WAIT;
END PROCESS t_prcs_sal27;

-- sal30
t_prcs_sal30: PROCESS
BEGIN
	sal30 <= '0';
WAIT;
END PROCESS t_prcs_sal30;

-- sal31
t_prcs_sal31: PROCESS
BEGIN
	sal31 <= '0';
WAIT;
END PROCESS t_prcs_sal31;

-- sal32
t_prcs_sal32: PROCESS
BEGIN
	sal32 <= '0';
WAIT;
END PROCESS t_prcs_sal32;

-- sal33
t_prcs_sal33: PROCESS
BEGIN
	sal33 <= '0';
WAIT;
END PROCESS t_prcs_sal33;

-- sal34
t_prcs_sal34: PROCESS
BEGIN
	sal34 <= '0';
WAIT;
END PROCESS t_prcs_sal34;

-- sal35
t_prcs_sal35: PROCESS
BEGIN
	sal35 <= '0';
WAIT;
END PROCESS t_prcs_sal35;

-- sal36
t_prcs_sal36: PROCESS
BEGIN
	sal36 <= '0';
	WAIT FOR 100000 ps;
	sal36 <= '1';
	WAIT FOR 20000 ps;
	sal36 <= '0';
WAIT;
END PROCESS t_prcs_sal36;

-- sal37
t_prcs_sal37: PROCESS
BEGIN
	sal37 <= '0';
	WAIT FOR 100000 ps;
	sal37 <= '1';
	WAIT FOR 20000 ps;
	sal37 <= '0';
WAIT;
END PROCESS t_prcs_sal37;

-- sal40
t_prcs_sal40: PROCESS
BEGIN
	sal40 <= '0';
WAIT;
END PROCESS t_prcs_sal40;

-- sal41
t_prcs_sal41: PROCESS
BEGIN
	sal41 <= '0';
WAIT;
END PROCESS t_prcs_sal41;

-- sal42
t_prcs_sal42: PROCESS
BEGIN
	sal42 <= '0';
WAIT;
END PROCESS t_prcs_sal42;

-- sal43
t_prcs_sal43: PROCESS
BEGIN
	sal43 <= '0';
WAIT;
END PROCESS t_prcs_sal43;

-- sal44
t_prcs_sal44: PROCESS
BEGIN
	sal44 <= '0';
WAIT;
END PROCESS t_prcs_sal44;

-- sal45
t_prcs_sal45: PROCESS
BEGIN
	sal45 <= '0';
	WAIT FOR 140000 ps;
	sal45 <= '1';
	WAIT FOR 40000 ps;
	sal45 <= '0';
WAIT;
END PROCESS t_prcs_sal45;

-- sal46
t_prcs_sal46: PROCESS
BEGIN
	sal46 <= '0';
WAIT;
END PROCESS t_prcs_sal46;

-- sal47
t_prcs_sal47: PROCESS
BEGIN
	sal47 <= '0';
WAIT;
END PROCESS t_prcs_sal47;
-- selectora[1]
t_prcs_selectora_1: PROCESS
BEGIN
LOOP
	selectora(1) <= '0';
	WAIT FOR 100000 ps;
	selectora(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_selectora_1;
-- selectora[0]
t_prcs_selectora_0: PROCESS
BEGIN
LOOP
	selectora(0) <= '0';
	WAIT FOR 50000 ps;
	selectora(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_selectora_0;
END block2_arch;
