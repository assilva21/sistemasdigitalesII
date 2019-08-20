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
-- Generated on "07/26/2019 19:07:12"
                                                             
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
SIGNAL C : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL clock50 : STD_LOGIC;
SIGNAL cnt_en : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL DADO1 : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL DADO2 : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL dis : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL E : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL enable1 : STD_LOGIC;
SIGNAL enable2 : STD_LOGIC;
SIGNAL enable3 : STD_LOGIC;
SIGNAL enable4 : STD_LOGIC;
SIGNAL F : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL jugador1 : STD_LOGIC;
SIGNAL jugador1_n : STD_LOGIC;
SIGNAL jugador2 : STD_LOGIC;
SIGNAL jugador2_n : STD_LOGIC;
SIGNAL meta : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL n : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL reset1 : STD_LOGIC;
SIGNAL reset2 : STD_LOGIC;
SIGNAL reset3 : STD_LOGIC;
SIGNAL reset4 : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
SIGNAL Resetn : STD_LOGIC;
SIGNAL Resetn28 : STD_LOGIC;
SIGNAL seg : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL start : STD_LOGIC;
SIGNAL start_n : STD_LOGIC;
SIGNAL Yo5 : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT block1
	PORT (
	C : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	clock50 : IN STD_LOGIC;
	cnt_en : IN STD_LOGIC;
	D : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	DADO1 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	DADO2 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	dis : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	E : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
	enable : IN STD_LOGIC;
	enable1 : IN STD_LOGIC;
	enable2 : IN STD_LOGIC;
	enable3 : IN STD_LOGIC;
	enable4 : IN STD_LOGIC;
	F : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
	jugador1 : IN STD_LOGIC;
	jugador1_n : OUT STD_LOGIC;
	jugador2 : IN STD_LOGIC;
	jugador2_n : OUT STD_LOGIC;
	meta : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	n : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
	reset : IN STD_LOGIC;
	reset1 : IN STD_LOGIC;
	reset2 : IN STD_LOGIC;
	reset3 : IN STD_LOGIC;
	reset4 : IN STD_LOGIC;
	reset_n : OUT STD_LOGIC;
	Resetn : IN STD_LOGIC;
	Resetn28 : IN STD_LOGIC;
	seg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	start : IN STD_LOGIC;
	start_n : OUT STD_LOGIC;
	Yo5 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : block1
	PORT MAP (
-- list connections between master ports and signals
	C => C,
	clock50 => clock50,
	cnt_en => cnt_en,
	D => D,
	DADO1 => DADO1,
	DADO2 => DADO2,
	dis => dis,
	E => E,
	enable => enable,
	enable1 => enable1,
	enable2 => enable2,
	enable3 => enable3,
	enable4 => enable4,
	F => F,
	jugador1 => jugador1,
	jugador1_n => jugador1_n,
	jugador2 => jugador2,
	jugador2_n => jugador2_n,
	meta => meta,
	n => n,
	q => q,
	reset => reset,
	reset1 => reset1,
	reset2 => reset2,
	reset3 => reset3,
	reset4 => reset4,
	reset_n => reset_n,
	Resetn => Resetn,
	Resetn28 => Resetn28,
	seg => seg,
	start => start,
	start_n => start_n,
	Yo5 => Yo5
	);

-- reset1
t_prcs_reset1: PROCESS
BEGIN
	reset1 <= '0';
WAIT;
END PROCESS t_prcs_reset1;

-- reset2
t_prcs_reset2: PROCESS
BEGIN
	reset2 <= '0';
WAIT;
END PROCESS t_prcs_reset2;

-- reset3
t_prcs_reset3: PROCESS
BEGIN
	reset3 <= '0';
WAIT;
END PROCESS t_prcs_reset3;

-- reset4
t_prcs_reset4: PROCESS
BEGIN
	reset4 <= '0';
WAIT;
END PROCESS t_prcs_reset4;

-- Resetn
t_prcs_Resetn: PROCESS
BEGIN
	Resetn <= '0';
WAIT;
END PROCESS t_prcs_Resetn;

-- cnt_en
t_prcs_cnt_en: PROCESS
BEGIN
	cnt_en <= '1';
	WAIT FOR 190000 ps;
	cnt_en <= '0';
WAIT;
END PROCESS t_prcs_cnt_en;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- enable1
t_prcs_enable1: PROCESS
BEGIN
	enable1 <= '0';
	WAIT FOR 160000 ps;
	enable1 <= '1';
	WAIT FOR 10000 ps;
	enable1 <= '0';
	WAIT FOR 190000 ps;
	enable1 <= '1';
	WAIT FOR 10000 ps;
	enable1 <= '0';
WAIT;
END PROCESS t_prcs_enable1;

-- enable2
t_prcs_enable2: PROCESS
BEGIN
	enable2 <= '0';
	WAIT FOR 300000 ps;
	enable2 <= '1';
	WAIT FOR 10000 ps;
	enable2 <= '0';
	WAIT FOR 140000 ps;
	enable2 <= '1';
	WAIT FOR 10000 ps;
	enable2 <= '0';
WAIT;
END PROCESS t_prcs_enable2;

-- enable3
t_prcs_enable3: PROCESS
BEGIN
	enable3 <= '0';
	WAIT FOR 270000 ps;
	enable3 <= '1';
	WAIT FOR 10000 ps;
	enable3 <= '0';
	WAIT FOR 120000 ps;
	enable3 <= '1';
	WAIT FOR 10000 ps;
	enable3 <= '0';
WAIT;
END PROCESS t_prcs_enable3;

-- enable4
t_prcs_enable4: PROCESS
BEGIN
	enable4 <= '0';
	WAIT FOR 320000 ps;
	enable4 <= '1';
	WAIT FOR 10000 ps;
	enable4 <= '0';
	WAIT FOR 130000 ps;
	enable4 <= '1';
	WAIT FOR 10000 ps;
	enable4 <= '0';
WAIT;
END PROCESS t_prcs_enable4;
END block1_arch;
