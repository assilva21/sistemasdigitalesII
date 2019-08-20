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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "08/15/2019 14:46:51"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	block1 IS
    PORT (
	led_indicador : OUT std_logic;
	clock50 : IN std_logic;
	resetn : IN std_logic;
	start : IN std_logic;
	jugador1 : IN std_logic;
	jugador2 : IN std_logic;
	led_verde : OUT std_logic;
	led_rojo : OUT std_logic;
	dis : OUT std_logic_vector(1 DOWNTO 0);
	rojocolumna : OUT std_logic_vector(3 DOWNTO 0);
	rojofila : OUT std_logic_vector(7 DOWNTO 0);
	seg : OUT std_logic_vector(6 DOWNTO 0);
	state : OUT std_logic_vector(5 DOWNTO 0);
	verdecolumna : OUT std_logic_vector(3 DOWNTO 0);
	verdefila : OUT std_logic_vector(7 DOWNTO 0)
	);
END block1;

-- Design Ports Information
-- led_indicador	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_verde	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_rojo	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dis[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojocolumna[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojocolumna[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojocolumna[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojocolumna[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojofila[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojofila[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojofila[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojofila[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojofila[3]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojofila[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojofila[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojofila[0]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verdecolumna[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verdecolumna[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verdecolumna[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verdecolumna[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verdefila[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verdefila[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verdefila[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verdefila[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verdefila[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verdefila[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verdefila[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verdefila[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jugador1	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jugador2	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led_indicador : std_logic;
SIGNAL ww_clock50 : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_jugador1 : std_logic;
SIGNAL ww_jugador2 : std_logic;
SIGNAL ww_led_verde : std_logic;
SIGNAL ww_led_rojo : std_logic;
SIGNAL ww_dis : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rojocolumna : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rojofila : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_state : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_verdecolumna : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_verdefila : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst15|CLOCK_100Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|CLOCK_10KHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|clock_100Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|CLOCK_1MHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|clock_10Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|clock_1Mhz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|clock_1Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led_indicador~output_o\ : std_logic;
SIGNAL \led_verde~output_o\ : std_logic;
SIGNAL \led_rojo~output_o\ : std_logic;
SIGNAL \dis[1]~output_o\ : std_logic;
SIGNAL \dis[0]~output_o\ : std_logic;
SIGNAL \rojocolumna[3]~output_o\ : std_logic;
SIGNAL \rojocolumna[2]~output_o\ : std_logic;
SIGNAL \rojocolumna[1]~output_o\ : std_logic;
SIGNAL \rojocolumna[0]~output_o\ : std_logic;
SIGNAL \rojofila[7]~output_o\ : std_logic;
SIGNAL \rojofila[6]~output_o\ : std_logic;
SIGNAL \rojofila[5]~output_o\ : std_logic;
SIGNAL \rojofila[4]~output_o\ : std_logic;
SIGNAL \rojofila[3]~output_o\ : std_logic;
SIGNAL \rojofila[2]~output_o\ : std_logic;
SIGNAL \rojofila[1]~output_o\ : std_logic;
SIGNAL \rojofila[0]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \state[5]~output_o\ : std_logic;
SIGNAL \state[4]~output_o\ : std_logic;
SIGNAL \state[3]~output_o\ : std_logic;
SIGNAL \state[2]~output_o\ : std_logic;
SIGNAL \state[1]~output_o\ : std_logic;
SIGNAL \state[0]~output_o\ : std_logic;
SIGNAL \verdecolumna[3]~output_o\ : std_logic;
SIGNAL \verdecolumna[2]~output_o\ : std_logic;
SIGNAL \verdecolumna[1]~output_o\ : std_logic;
SIGNAL \verdecolumna[0]~output_o\ : std_logic;
SIGNAL \verdefila[7]~output_o\ : std_logic;
SIGNAL \verdefila[6]~output_o\ : std_logic;
SIGNAL \verdefila[5]~output_o\ : std_logic;
SIGNAL \verdefila[4]~output_o\ : std_logic;
SIGNAL \verdefila[3]~output_o\ : std_logic;
SIGNAL \verdefila[2]~output_o\ : std_logic;
SIGNAL \verdefila[1]~output_o\ : std_logic;
SIGNAL \verdefila[0]~output_o\ : std_logic;
SIGNAL \clock50~input_o\ : std_logic;
SIGNAL \clock50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst15|count_1Mhz[0]~6_combout\ : std_logic;
SIGNAL \inst15|count_1Mhz[3]~13\ : std_logic;
SIGNAL \inst15|count_1Mhz[4]~14_combout\ : std_logic;
SIGNAL \inst15|count_1Mhz[4]~15\ : std_logic;
SIGNAL \inst15|count_1Mhz[5]~16_combout\ : std_logic;
SIGNAL \inst15|LessThan0~0_combout\ : std_logic;
SIGNAL \inst15|LessThan0~1_combout\ : std_logic;
SIGNAL \inst15|count_1Mhz[0]~7\ : std_logic;
SIGNAL \inst15|count_1Mhz[1]~8_combout\ : std_logic;
SIGNAL \inst15|count_1Mhz[1]~9\ : std_logic;
SIGNAL \inst15|count_1Mhz[2]~10_combout\ : std_logic;
SIGNAL \inst15|count_1Mhz[2]~11\ : std_logic;
SIGNAL \inst15|count_1Mhz[3]~12_combout\ : std_logic;
SIGNAL \inst15|LessThan1~0_combout\ : std_logic;
SIGNAL \inst15|clock_1Mhz_int~q\ : std_logic;
SIGNAL \inst15|clock_1Mhz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst15|count_100Khz[1]~1_combout\ : std_logic;
SIGNAL \inst15|count_100Khz~2_combout\ : std_logic;
SIGNAL \inst15|count_100Khz~0_combout\ : std_logic;
SIGNAL \inst15|clock_100Khz_int~0_combout\ : std_logic;
SIGNAL \inst15|clock_100Khz_int~feeder_combout\ : std_logic;
SIGNAL \inst15|clock_100Khz_int~q\ : std_logic;
SIGNAL \inst15|clock_100Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst15|count_10Khz[1]~1_combout\ : std_logic;
SIGNAL \inst15|count_10Khz~2_combout\ : std_logic;
SIGNAL \inst15|count_10Khz~0_combout\ : std_logic;
SIGNAL \inst15|clock_10Khz_int~0_combout\ : std_logic;
SIGNAL \inst15|clock_10Khz_int~feeder_combout\ : std_logic;
SIGNAL \inst15|clock_10Khz_int~q\ : std_logic;
SIGNAL \inst15|CLOCK_10KHz~q\ : std_logic;
SIGNAL \inst15|CLOCK_10KHz~clkctrl_outclk\ : std_logic;
SIGNAL \inst15|clock_10Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst15|count_1Khz[1]~1_combout\ : std_logic;
SIGNAL \inst15|count_1Khz~2_combout\ : std_logic;
SIGNAL \inst15|count_1Khz~0_combout\ : std_logic;
SIGNAL \inst15|clock_1Khz_int~0_combout\ : std_logic;
SIGNAL \inst15|clock_1Khz_int~feeder_combout\ : std_logic;
SIGNAL \inst15|clock_1Khz_int~q\ : std_logic;
SIGNAL \inst15|clock_1Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst15|count_100hz~0_combout\ : std_logic;
SIGNAL \inst15|count_100hz[1]~1_combout\ : std_logic;
SIGNAL \inst15|count_100hz~2_combout\ : std_logic;
SIGNAL \inst15|clock_100hz_int~0_combout\ : std_logic;
SIGNAL \inst15|clock_100hz_int~feeder_combout\ : std_logic;
SIGNAL \inst15|clock_100hz_int~q\ : std_logic;
SIGNAL \inst15|CLOCK_100Hz~feeder_combout\ : std_logic;
SIGNAL \inst15|CLOCK_100Hz~q\ : std_logic;
SIGNAL \inst15|CLOCK_100Hz~clkctrl_outclk\ : std_logic;
SIGNAL \jugador2~input_o\ : std_logic;
SIGNAL \inst19|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst19|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst19|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst19|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst19|Equal0~0_combout\ : std_logic;
SIGNAL \inst19|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \jugador1~input_o\ : std_logic;
SIGNAL \inst18|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst18|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst18|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst18|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst18|Equal0~0_combout\ : std_logic;
SIGNAL \inst18|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \inst16|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst16|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst16|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst16|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst16|Equal0~0_combout\ : std_logic;
SIGNAL \inst16|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \inst29|Selector0~0_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \inst29|y.T1~q\ : std_logic;
SIGNAL \inst29|y~22_combout\ : std_logic;
SIGNAL \inst29|y.T2~q\ : std_logic;
SIGNAL \inst29|y~17_combout\ : std_logic;
SIGNAL \inst29|y.T3~q\ : std_logic;
SIGNAL \inst29|y.T4~q\ : std_logic;
SIGNAL \inst15|CLOCK_1MHz~feeder_combout\ : std_logic;
SIGNAL \inst15|CLOCK_1MHz~q\ : std_logic;
SIGNAL \inst15|CLOCK_1MHz~clkctrl_outclk\ : std_logic;
SIGNAL \inst|y.T4~feeder_combout\ : std_logic;
SIGNAL \inst|y.T4~q\ : std_logic;
SIGNAL \inst|y.T5~feeder_combout\ : std_logic;
SIGNAL \inst|y.T5~q\ : std_logic;
SIGNAL \inst|y.T6~feeder_combout\ : std_logic;
SIGNAL \inst|y.T6~q\ : std_logic;
SIGNAL \inst|y.T1~0_combout\ : std_logic;
SIGNAL \inst|y.T1~q\ : std_logic;
SIGNAL \inst|y.T2~0_combout\ : std_logic;
SIGNAL \inst|y.T2~q\ : std_logic;
SIGNAL \inst|y.T3~feeder_combout\ : std_logic;
SIGNAL \inst|y.T3~q\ : std_logic;
SIGNAL \inst|WideOr0~combout\ : std_logic;
SIGNAL \inst4|temp[2]~feeder_combout\ : std_logic;
SIGNAL \inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst4|temp[1]~feeder_combout\ : std_logic;
SIGNAL \inst|WideOr2~combout\ : std_logic;
SIGNAL \inst4|temp[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|temp[0]~6_combout\ : std_logic;
SIGNAL \inst6|temp[0]~7\ : std_logic;
SIGNAL \inst6|temp[1]~8_combout\ : std_logic;
SIGNAL \inst6|temp[1]~9\ : std_logic;
SIGNAL \inst6|temp[2]~10_combout\ : std_logic;
SIGNAL \inst6|temp[2]~11\ : std_logic;
SIGNAL \inst6|temp[3]~12_combout\ : std_logic;
SIGNAL \inst6|temp[3]~13\ : std_logic;
SIGNAL \inst6|temp[4]~14_combout\ : std_logic;
SIGNAL \inst6|temp[4]~15\ : std_logic;
SIGNAL \inst6|temp[5]~16_combout\ : std_logic;
SIGNAL \inst29|Selector1~0_combout\ : std_logic;
SIGNAL \inst29|Selector1~1_combout\ : std_logic;
SIGNAL \inst29|y.T5~q\ : std_logic;
SIGNAL \inst29|y~18_combout\ : std_logic;
SIGNAL \inst29|y.T7~q\ : std_logic;
SIGNAL \inst29|y~19_combout\ : std_logic;
SIGNAL \inst29|y.T10~q\ : std_logic;
SIGNAL \inst29|y.T11~q\ : std_logic;
SIGNAL \inst5|temp[0]~6_combout\ : std_logic;
SIGNAL \inst5|temp[0]~7\ : std_logic;
SIGNAL \inst5|temp[1]~8_combout\ : std_logic;
SIGNAL \inst5|temp[1]~9\ : std_logic;
SIGNAL \inst5|temp[2]~10_combout\ : std_logic;
SIGNAL \inst5|temp[2]~11\ : std_logic;
SIGNAL \inst5|temp[3]~12_combout\ : std_logic;
SIGNAL \inst5|temp[3]~13\ : std_logic;
SIGNAL \inst5|temp[4]~14_combout\ : std_logic;
SIGNAL \inst5|temp[4]~15\ : std_logic;
SIGNAL \inst5|temp[5]~16_combout\ : std_logic;
SIGNAL \inst29|Selector2~0_combout\ : std_logic;
SIGNAL \inst29|Selector2~1_combout\ : std_logic;
SIGNAL \inst29|y.T6~q\ : std_logic;
SIGNAL \inst29|y~20_combout\ : std_logic;
SIGNAL \inst29|y.T8~q\ : std_logic;
SIGNAL \inst29|y~21_combout\ : std_logic;
SIGNAL \inst29|y.T9~q\ : std_logic;
SIGNAL \inst29|y.T12~q\ : std_logic;
SIGNAL \inst29|Selector3~0_combout\ : std_logic;
SIGNAL \inst29|y.T13~q\ : std_logic;
SIGNAL \inst29|WideOr8~combout\ : std_logic;
SIGNAL \inst29|WideOr9~combout\ : std_logic;
SIGNAL \inst29|WideOr10~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst44|Mux0~4_combout\ : std_logic;
SIGNAL \inst44|Mux0~6_combout\ : std_logic;
SIGNAL \inst44|Mux0~2_combout\ : std_logic;
SIGNAL \inst44|Mux0~5_combout\ : std_logic;
SIGNAL \inst40|Mux0~0_combout\ : std_logic;
SIGNAL \inst41|Mux0~0_combout\ : std_logic;
SIGNAL \inst44|Mux1~0_combout\ : std_logic;
SIGNAL \inst40|Mux1~2_combout\ : std_logic;
SIGNAL \inst43|Mux0~0_combout\ : std_logic;
SIGNAL \inst40|Mux1~4_combout\ : std_logic;
SIGNAL \inst40|Mux1~3_combout\ : std_logic;
SIGNAL \inst30|Mux0~2_combout\ : std_logic;
SIGNAL \inst40|Mux2~0_combout\ : std_logic;
SIGNAL \inst42|Mux0~0_combout\ : std_logic;
SIGNAL \inst42|Mux0~1_combout\ : std_logic;
SIGNAL \inst40|Mux2~1_combout\ : std_logic;
SIGNAL \inst41|Mux0~1_combout\ : std_logic;
SIGNAL \inst40|Mux3~0_combout\ : std_logic;
SIGNAL \inst26|Mux0~0_combout\ : std_logic;
SIGNAL \inst26|Mux0~1_combout\ : std_logic;
SIGNAL \inst30|Mux0~4_combout\ : std_logic;
SIGNAL \inst44|Mux0~3_combout\ : std_logic;
SIGNAL \inst30|Mux0~3_combout\ : std_logic;
SIGNAL \inst32|Mux0~0_combout\ : std_logic;
SIGNAL \inst32|Mux0~1_combout\ : std_logic;
SIGNAL \inst32|Mux1~4_combout\ : std_logic;
SIGNAL \inst32|Mux1~2_combout\ : std_logic;
SIGNAL \inst32|Mux1~1_combout\ : std_logic;
SIGNAL \inst32|Mux1~0_combout\ : std_logic;
SIGNAL \inst32|Mux1~3_combout\ : std_logic;
SIGNAL \inst32|Mux1~5_combout\ : std_logic;
SIGNAL \inst32|Mux2~0_combout\ : std_logic;
SIGNAL \inst32|Mux2~1_combout\ : std_logic;
SIGNAL \inst32|Mux2~2_combout\ : std_logic;
SIGNAL \inst32|Mux3~0_combout\ : std_logic;
SIGNAL \inst32|Mux3~1_combout\ : std_logic;
SIGNAL \inst32|Mux3~2_combout\ : std_logic;
SIGNAL \inst32|Mux4~0_combout\ : std_logic;
SIGNAL \inst32|Mux4~1_combout\ : std_logic;
SIGNAL \inst32|Mux4~2_combout\ : std_logic;
SIGNAL \inst32|Mux5~1_combout\ : std_logic;
SIGNAL \inst32|Mux5~0_combout\ : std_logic;
SIGNAL \inst32|Mux5~2_combout\ : std_logic;
SIGNAL \inst32|Mux5~3_combout\ : std_logic;
SIGNAL \inst43|Mux0~1_combout\ : std_logic;
SIGNAL \inst32|Mux6~0_combout\ : std_logic;
SIGNAL \inst32|Mux6~1_combout\ : std_logic;
SIGNAL \inst43|Mux0~2_combout\ : std_logic;
SIGNAL \inst32|Mux7~0_combout\ : std_logic;
SIGNAL \inst32|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|sal[2]~2_combout\ : std_logic;
SIGNAL \inst1|sal[0]~1_combout\ : std_logic;
SIGNAL \inst1|sal[1]~0_combout\ : std_logic;
SIGNAL \inst22|Mux0~0_combout\ : std_logic;
SIGNAL \inst22|Mux1~0_combout\ : std_logic;
SIGNAL \inst22|Mux2~0_combout\ : std_logic;
SIGNAL \inst22|Mux3~0_combout\ : std_logic;
SIGNAL \inst22|Mux4~0_combout\ : std_logic;
SIGNAL \inst22|Mux5~0_combout\ : std_logic;
SIGNAL \inst22|Mux6~0_combout\ : std_logic;
SIGNAL \inst29|WideOr4~0_combout\ : std_logic;
SIGNAL \inst29|WideOr4~combout\ : std_logic;
SIGNAL \inst29|WideOr5~0_combout\ : std_logic;
SIGNAL \inst29|WideOr5~combout\ : std_logic;
SIGNAL \inst29|WideOr6~0_combout\ : std_logic;
SIGNAL \inst29|WideOr6~combout\ : std_logic;
SIGNAL \inst29|WideOr7~0_combout\ : std_logic;
SIGNAL \inst29|WideOr7~combout\ : std_logic;
SIGNAL \inst38|Mux0~2_combout\ : std_logic;
SIGNAL \inst17|Mux7~2_combout\ : std_logic;
SIGNAL \inst38|Mux0~0_combout\ : std_logic;
SIGNAL \inst38|Mux0~3_combout\ : std_logic;
SIGNAL \inst39|Mux0~0_combout\ : std_logic;
SIGNAL \inst35|Mux0~0_combout\ : std_logic;
SIGNAL \inst37|Mux0~0_combout\ : std_logic;
SIGNAL \inst39|Mux1~4_combout\ : std_logic;
SIGNAL \inst38|Mux1~0_combout\ : std_logic;
SIGNAL \inst39|Mux1~2_combout\ : std_logic;
SIGNAL \inst39|Mux1~3_combout\ : std_logic;
SIGNAL \inst20|Mux0~2_combout\ : std_logic;
SIGNAL \inst39|Mux2~0_combout\ : std_logic;
SIGNAL \inst36|Mux0~0_combout\ : std_logic;
SIGNAL \inst36|Mux0~1_combout\ : std_logic;
SIGNAL \inst39|Mux2~1_combout\ : std_logic;
SIGNAL \inst35|Mux0~1_combout\ : std_logic;
SIGNAL \inst39|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~1_combout\ : std_logic;
SIGNAL \inst38|Mux0~1_combout\ : std_logic;
SIGNAL \inst20|Mux0~4_combout\ : std_logic;
SIGNAL \inst20|Mux0~3_combout\ : std_logic;
SIGNAL \inst23|Mux0~0_combout\ : std_logic;
SIGNAL \inst23|Mux0~1_combout\ : std_logic;
SIGNAL \inst23|Mux1~4_combout\ : std_logic;
SIGNAL \inst23|Mux1~2_combout\ : std_logic;
SIGNAL \inst23|Mux1~1_combout\ : std_logic;
SIGNAL \inst23|Mux1~0_combout\ : std_logic;
SIGNAL \inst23|Mux1~3_combout\ : std_logic;
SIGNAL \inst23|Mux1~5_combout\ : std_logic;
SIGNAL \inst23|Mux2~0_combout\ : std_logic;
SIGNAL \inst23|Mux2~1_combout\ : std_logic;
SIGNAL \inst23|Mux2~2_combout\ : std_logic;
SIGNAL \inst23|Mux3~0_combout\ : std_logic;
SIGNAL \inst23|Mux3~1_combout\ : std_logic;
SIGNAL \inst23|Mux3~2_combout\ : std_logic;
SIGNAL \inst23|Mux4~0_combout\ : std_logic;
SIGNAL \inst23|Mux4~1_combout\ : std_logic;
SIGNAL \inst23|Mux4~2_combout\ : std_logic;
SIGNAL \inst23|Mux5~1_combout\ : std_logic;
SIGNAL \inst23|Mux5~0_combout\ : std_logic;
SIGNAL \inst23|Mux5~2_combout\ : std_logic;
SIGNAL \inst23|Mux5~3_combout\ : std_logic;
SIGNAL \inst37|Mux0~1_combout\ : std_logic;
SIGNAL \inst23|Mux6~0_combout\ : std_logic;
SIGNAL \inst23|Mux6~1_combout\ : std_logic;
SIGNAL \inst37|Mux0~2_combout\ : std_logic;
SIGNAL \inst23|Mux7~0_combout\ : std_logic;
SIGNAL \inst23|Mux7~1_combout\ : std_logic;
SIGNAL \inst6|temp\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst18|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|temp\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst5|temp\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst15|count_1Mhz\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst16|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|temp\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst19|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|count_10Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst15|count_100Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst15|count_100hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst15|count_1Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst29|ALT_INV_y.T1~q\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst15|ALT_INV_CLOCK_1MHz~q\ : std_logic;
SIGNAL \inst29|ALT_INV_y.T3~q\ : std_logic;
SIGNAL \ALT_INV_resetn~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

led_indicador <= ww_led_indicador;
ww_clock50 <= clock50;
ww_resetn <= resetn;
ww_start <= start;
ww_jugador1 <= jugador1;
ww_jugador2 <= jugador2;
led_verde <= ww_led_verde;
led_rojo <= ww_led_rojo;
dis <= ww_dis;
rojocolumna <= ww_rojocolumna;
rojofila <= ww_rojofila;
seg <= ww_seg;
state <= ww_state;
verdecolumna <= ww_verdecolumna;
verdefila <= ww_verdefila;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst15|CLOCK_100Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst15|CLOCK_100Hz~q\);

\inst15|CLOCK_10KHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst15|CLOCK_10KHz~q\);

\inst15|clock_100Khz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst15|clock_100Khz_int~q\);

\inst15|CLOCK_1MHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst15|CLOCK_1MHz~q\);

\inst15|clock_10Khz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst15|clock_10Khz_int~q\);

\inst15|clock_1Mhz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst15|clock_1Mhz_int~q\);

\inst15|clock_1Khz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst15|clock_1Khz_int~q\);

\clock50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock50~input_o\);
\inst29|ALT_INV_y.T1~q\ <= NOT \inst29|y.T1~q\;
\inst22|ALT_INV_Mux5~0_combout\ <= NOT \inst22|Mux5~0_combout\;
\inst22|ALT_INV_Mux4~0_combout\ <= NOT \inst22|Mux4~0_combout\;
\inst22|ALT_INV_Mux3~0_combout\ <= NOT \inst22|Mux3~0_combout\;
\inst22|ALT_INV_Mux2~0_combout\ <= NOT \inst22|Mux2~0_combout\;
\inst15|ALT_INV_CLOCK_1MHz~q\ <= NOT \inst15|CLOCK_1MHz~q\;
\inst29|ALT_INV_y.T3~q\ <= NOT \inst29|y.T3~q\;
\ALT_INV_resetn~input_o\ <= NOT \resetn~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X51_Y34_N23
\led_indicador~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|WideOr8~combout\,
	devoe => ww_devoe,
	o => \led_indicador~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\led_verde~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|WideOr9~combout\,
	devoe => ww_devoe,
	o => \led_verde~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\led_rojo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|WideOr10~combout\,
	devoe => ww_devoe,
	o => \led_rojo~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\dis[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|CLOCK_1MHz~q\,
	devoe => ww_devoe,
	o => \dis[1]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\dis[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|ALT_INV_CLOCK_1MHz~q\,
	devoe => ww_devoe,
	o => \dis[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\rojocolumna[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \rojocolumna[3]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\rojocolumna[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \rojocolumna[2]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\rojocolumna[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \rojocolumna[1]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\rojocolumna[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \rojocolumna[0]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\rojofila[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \rojofila[7]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\rojofila[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|Mux1~5_combout\,
	devoe => ww_devoe,
	o => \rojofila[6]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\rojofila[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \rojofila[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\rojofila[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \rojofila[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\rojofila[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \rojofila[3]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\rojofila[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \rojofila[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\rojofila[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \rojofila[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\rojofila[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \rojofila[0]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\state[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \state[5]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\state[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \state[4]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\state[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|WideOr4~combout\,
	devoe => ww_devoe,
	o => \state[3]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\state[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|WideOr5~combout\,
	devoe => ww_devoe,
	o => \state[2]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\state[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|WideOr6~combout\,
	devoe => ww_devoe,
	o => \state[1]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\state[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|WideOr7~combout\,
	devoe => ww_devoe,
	o => \state[0]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\verdecolumna[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \verdecolumna[3]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\verdecolumna[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \verdecolumna[2]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\verdecolumna[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \verdecolumna[1]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\verdecolumna[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \verdecolumna[0]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\verdefila[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \verdefila[7]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\verdefila[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|Mux1~5_combout\,
	devoe => ww_devoe,
	o => \verdefila[6]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\verdefila[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \verdefila[5]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\verdefila[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \verdefila[4]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\verdefila[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \verdefila[3]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\verdefila[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \verdefila[2]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\verdefila[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \verdefila[1]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\verdefila[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \verdefila[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clock50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock50,
	o => \clock50~input_o\);

-- Location: CLKCTRL_G18
\clock50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock50~inputclkctrl_outclk\);

-- Location: LCCOMB_X26_Y1_N4
\inst15|count_1Mhz[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_1Mhz[0]~6_combout\ = \inst15|count_1Mhz\(0) $ (VCC)
-- \inst15|count_1Mhz[0]~7\ = CARRY(\inst15|count_1Mhz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count_1Mhz\(0),
	datad => VCC,
	combout => \inst15|count_1Mhz[0]~6_combout\,
	cout => \inst15|count_1Mhz[0]~7\);

-- Location: LCCOMB_X26_Y1_N10
\inst15|count_1Mhz[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_1Mhz[3]~12_combout\ = (\inst15|count_1Mhz\(3) & (!\inst15|count_1Mhz[2]~11\)) # (!\inst15|count_1Mhz\(3) & ((\inst15|count_1Mhz[2]~11\) # (GND)))
-- \inst15|count_1Mhz[3]~13\ = CARRY((!\inst15|count_1Mhz[2]~11\) # (!\inst15|count_1Mhz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count_1Mhz\(3),
	datad => VCC,
	cin => \inst15|count_1Mhz[2]~11\,
	combout => \inst15|count_1Mhz[3]~12_combout\,
	cout => \inst15|count_1Mhz[3]~13\);

-- Location: LCCOMB_X26_Y1_N12
\inst15|count_1Mhz[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_1Mhz[4]~14_combout\ = (\inst15|count_1Mhz\(4) & (\inst15|count_1Mhz[3]~13\ $ (GND))) # (!\inst15|count_1Mhz\(4) & (!\inst15|count_1Mhz[3]~13\ & VCC))
-- \inst15|count_1Mhz[4]~15\ = CARRY((\inst15|count_1Mhz\(4) & !\inst15|count_1Mhz[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count_1Mhz\(4),
	datad => VCC,
	cin => \inst15|count_1Mhz[3]~13\,
	combout => \inst15|count_1Mhz[4]~14_combout\,
	cout => \inst15|count_1Mhz[4]~15\);

-- Location: FF_X26_Y1_N13
\inst15|count_1Mhz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock50~inputclkctrl_outclk\,
	d => \inst15|count_1Mhz[4]~14_combout\,
	sclr => \inst15|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_1Mhz\(4));

-- Location: LCCOMB_X26_Y1_N14
\inst15|count_1Mhz[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_1Mhz[5]~16_combout\ = \inst15|count_1Mhz\(5) $ (\inst15|count_1Mhz[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count_1Mhz\(5),
	cin => \inst15|count_1Mhz[4]~15\,
	combout => \inst15|count_1Mhz[5]~16_combout\);

-- Location: FF_X26_Y1_N15
\inst15|count_1Mhz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock50~inputclkctrl_outclk\,
	d => \inst15|count_1Mhz[5]~16_combout\,
	sclr => \inst15|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_1Mhz\(5));

-- Location: LCCOMB_X26_Y1_N20
\inst15|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|LessThan0~0_combout\ = (!\inst15|count_1Mhz\(1) & (!\inst15|count_1Mhz\(3) & (!\inst15|count_1Mhz\(0) & !\inst15|count_1Mhz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count_1Mhz\(1),
	datab => \inst15|count_1Mhz\(3),
	datac => \inst15|count_1Mhz\(0),
	datad => \inst15|count_1Mhz\(2),
	combout => \inst15|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y1_N18
\inst15|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|LessThan0~1_combout\ = (\inst15|count_1Mhz\(4) & (\inst15|count_1Mhz\(5) & !\inst15|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count_1Mhz\(4),
	datac => \inst15|count_1Mhz\(5),
	datad => \inst15|LessThan0~0_combout\,
	combout => \inst15|LessThan0~1_combout\);

-- Location: FF_X26_Y1_N5
\inst15|count_1Mhz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock50~inputclkctrl_outclk\,
	d => \inst15|count_1Mhz[0]~6_combout\,
	sclr => \inst15|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_1Mhz\(0));

-- Location: LCCOMB_X26_Y1_N6
\inst15|count_1Mhz[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_1Mhz[1]~8_combout\ = (\inst15|count_1Mhz\(1) & (!\inst15|count_1Mhz[0]~7\)) # (!\inst15|count_1Mhz\(1) & ((\inst15|count_1Mhz[0]~7\) # (GND)))
-- \inst15|count_1Mhz[1]~9\ = CARRY((!\inst15|count_1Mhz[0]~7\) # (!\inst15|count_1Mhz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count_1Mhz\(1),
	datad => VCC,
	cin => \inst15|count_1Mhz[0]~7\,
	combout => \inst15|count_1Mhz[1]~8_combout\,
	cout => \inst15|count_1Mhz[1]~9\);

-- Location: FF_X26_Y1_N7
\inst15|count_1Mhz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock50~inputclkctrl_outclk\,
	d => \inst15|count_1Mhz[1]~8_combout\,
	sclr => \inst15|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_1Mhz\(1));

-- Location: LCCOMB_X26_Y1_N8
\inst15|count_1Mhz[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_1Mhz[2]~10_combout\ = (\inst15|count_1Mhz\(2) & (\inst15|count_1Mhz[1]~9\ $ (GND))) # (!\inst15|count_1Mhz\(2) & (!\inst15|count_1Mhz[1]~9\ & VCC))
-- \inst15|count_1Mhz[2]~11\ = CARRY((\inst15|count_1Mhz\(2) & !\inst15|count_1Mhz[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count_1Mhz\(2),
	datad => VCC,
	cin => \inst15|count_1Mhz[1]~9\,
	combout => \inst15|count_1Mhz[2]~10_combout\,
	cout => \inst15|count_1Mhz[2]~11\);

-- Location: FF_X26_Y1_N9
\inst15|count_1Mhz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock50~inputclkctrl_outclk\,
	d => \inst15|count_1Mhz[2]~10_combout\,
	sclr => \inst15|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_1Mhz\(2));

-- Location: FF_X26_Y1_N11
\inst15|count_1Mhz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock50~inputclkctrl_outclk\,
	d => \inst15|count_1Mhz[3]~12_combout\,
	sclr => \inst15|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_1Mhz\(3));

-- Location: LCCOMB_X26_Y1_N28
\inst15|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|LessThan1~0_combout\ = (\inst15|count_1Mhz\(3)) # ((\inst15|count_1Mhz\(2)) # ((\inst15|count_1Mhz\(5)) # (\inst15|count_1Mhz\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count_1Mhz\(3),
	datab => \inst15|count_1Mhz\(2),
	datac => \inst15|count_1Mhz\(5),
	datad => \inst15|count_1Mhz\(4),
	combout => \inst15|LessThan1~0_combout\);

-- Location: FF_X26_Y1_N29
\inst15|clock_1Mhz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock50~inputclkctrl_outclk\,
	d => \inst15|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clock_1Mhz_int~q\);

-- Location: CLKCTRL_G17
\inst15|clock_1Mhz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst15|clock_1Mhz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst15|clock_1Mhz_int~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y17_N12
\inst15|count_100Khz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_100Khz[1]~1_combout\ = \inst15|count_100Khz\(1) $ (\inst15|count_100Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|count_100Khz\(1),
	datad => \inst15|count_100Khz\(0),
	combout => \inst15|count_100Khz[1]~1_combout\);

-- Location: FF_X52_Y17_N13
\inst15|count_100Khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_1Mhz_int~clkctrl_outclk\,
	d => \inst15|count_100Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_100Khz\(1));

-- Location: LCCOMB_X52_Y17_N4
\inst15|count_100Khz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_100Khz~2_combout\ = (\inst15|count_100Khz\(1) & (\inst15|count_100Khz\(2) $ (\inst15|count_100Khz\(0)))) # (!\inst15|count_100Khz\(1) & (\inst15|count_100Khz\(2) & \inst15|count_100Khz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count_100Khz\(1),
	datac => \inst15|count_100Khz\(2),
	datad => \inst15|count_100Khz\(0),
	combout => \inst15|count_100Khz~2_combout\);

-- Location: FF_X52_Y17_N5
\inst15|count_100Khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_1Mhz_int~clkctrl_outclk\,
	d => \inst15|count_100Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_100Khz\(2));

-- Location: LCCOMB_X52_Y17_N26
\inst15|count_100Khz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_100Khz~0_combout\ = (!\inst15|count_100Khz\(0) & ((\inst15|count_100Khz\(1)) # (!\inst15|count_100Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count_100Khz\(1),
	datac => \inst15|count_100Khz\(0),
	datad => \inst15|count_100Khz\(2),
	combout => \inst15|count_100Khz~0_combout\);

-- Location: FF_X52_Y17_N27
\inst15|count_100Khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_1Mhz_int~clkctrl_outclk\,
	d => \inst15|count_100Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_100Khz\(0));

-- Location: LCCOMB_X52_Y17_N22
\inst15|clock_100Khz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clock_100Khz_int~0_combout\ = \inst15|clock_100Khz_int~q\ $ (((!\inst15|count_100Khz\(0) & (\inst15|count_100Khz\(2) & !\inst15|count_100Khz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count_100Khz\(0),
	datab => \inst15|clock_100Khz_int~q\,
	datac => \inst15|count_100Khz\(2),
	datad => \inst15|count_100Khz\(1),
	combout => \inst15|clock_100Khz_int~0_combout\);

-- Location: LCCOMB_X52_Y17_N24
\inst15|clock_100Khz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clock_100Khz_int~feeder_combout\ = \inst15|clock_100Khz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clock_100Khz_int~0_combout\,
	combout => \inst15|clock_100Khz_int~feeder_combout\);

-- Location: FF_X52_Y17_N25
\inst15|clock_100Khz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_1Mhz_int~clkctrl_outclk\,
	d => \inst15|clock_100Khz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clock_100Khz_int~q\);

-- Location: CLKCTRL_G8
\inst15|clock_100Khz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst15|clock_100Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst15|clock_100Khz_int~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y33_N28
\inst15|count_10Khz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_10Khz[1]~1_combout\ = \inst15|count_10Khz\(1) $ (\inst15|count_10Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|count_10Khz\(1),
	datad => \inst15|count_10Khz\(0),
	combout => \inst15|count_10Khz[1]~1_combout\);

-- Location: FF_X24_Y33_N29
\inst15|count_10Khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_100Khz_int~clkctrl_outclk\,
	d => \inst15|count_10Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_10Khz\(1));

-- Location: LCCOMB_X24_Y33_N8
\inst15|count_10Khz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_10Khz~2_combout\ = (\inst15|count_10Khz\(1) & (\inst15|count_10Khz\(2) $ (\inst15|count_10Khz\(0)))) # (!\inst15|count_10Khz\(1) & (\inst15|count_10Khz\(2) & \inst15|count_10Khz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count_10Khz\(1),
	datac => \inst15|count_10Khz\(2),
	datad => \inst15|count_10Khz\(0),
	combout => \inst15|count_10Khz~2_combout\);

-- Location: FF_X24_Y33_N9
\inst15|count_10Khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_100Khz_int~clkctrl_outclk\,
	d => \inst15|count_10Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_10Khz\(2));

-- Location: LCCOMB_X24_Y33_N26
\inst15|count_10Khz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_10Khz~0_combout\ = (!\inst15|count_10Khz\(0) & ((\inst15|count_10Khz\(1)) # (!\inst15|count_10Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count_10Khz\(1),
	datac => \inst15|count_10Khz\(0),
	datad => \inst15|count_10Khz\(2),
	combout => \inst15|count_10Khz~0_combout\);

-- Location: FF_X24_Y33_N27
\inst15|count_10Khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_100Khz_int~clkctrl_outclk\,
	d => \inst15|count_10Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_10Khz\(0));

-- Location: LCCOMB_X24_Y33_N10
\inst15|clock_10Khz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clock_10Khz_int~0_combout\ = \inst15|clock_10Khz_int~q\ $ (((!\inst15|count_10Khz\(0) & (\inst15|count_10Khz\(2) & !\inst15|count_10Khz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count_10Khz\(0),
	datab => \inst15|clock_10Khz_int~q\,
	datac => \inst15|count_10Khz\(2),
	datad => \inst15|count_10Khz\(1),
	combout => \inst15|clock_10Khz_int~0_combout\);

-- Location: LCCOMB_X24_Y33_N6
\inst15|clock_10Khz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clock_10Khz_int~feeder_combout\ = \inst15|clock_10Khz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clock_10Khz_int~0_combout\,
	combout => \inst15|clock_10Khz_int~feeder_combout\);

-- Location: FF_X24_Y33_N7
\inst15|clock_10Khz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_100Khz_int~clkctrl_outclk\,
	d => \inst15|clock_10Khz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clock_10Khz_int~q\);

-- Location: FF_X28_Y32_N27
\inst15|CLOCK_10KHz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock50~inputclkctrl_outclk\,
	asdata => \inst15|clock_10Khz_int~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|CLOCK_10KHz~q\);

-- Location: CLKCTRL_G13
\inst15|CLOCK_10KHz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst15|CLOCK_10KHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst15|CLOCK_10KHz~clkctrl_outclk\);

-- Location: CLKCTRL_G11
\inst15|clock_10Khz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst15|clock_10Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst15|clock_10Khz_int~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y16_N0
\inst15|count_1Khz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_1Khz[1]~1_combout\ = \inst15|count_1Khz\(1) $ (\inst15|count_1Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|count_1Khz\(1),
	datad => \inst15|count_1Khz\(0),
	combout => \inst15|count_1Khz[1]~1_combout\);

-- Location: FF_X1_Y16_N1
\inst15|count_1Khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_10Khz_int~clkctrl_outclk\,
	d => \inst15|count_1Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_1Khz\(1));

-- Location: LCCOMB_X1_Y16_N8
\inst15|count_1Khz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_1Khz~2_combout\ = (\inst15|count_1Khz\(1) & (\inst15|count_1Khz\(2) $ (\inst15|count_1Khz\(0)))) # (!\inst15|count_1Khz\(1) & (\inst15|count_1Khz\(2) & \inst15|count_1Khz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count_1Khz\(1),
	datac => \inst15|count_1Khz\(2),
	datad => \inst15|count_1Khz\(0),
	combout => \inst15|count_1Khz~2_combout\);

-- Location: FF_X1_Y16_N9
\inst15|count_1Khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_10Khz_int~clkctrl_outclk\,
	d => \inst15|count_1Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_1Khz\(2));

-- Location: LCCOMB_X1_Y16_N26
\inst15|count_1Khz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_1Khz~0_combout\ = (!\inst15|count_1Khz\(0) & ((\inst15|count_1Khz\(1)) # (!\inst15|count_1Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count_1Khz\(1),
	datac => \inst15|count_1Khz\(0),
	datad => \inst15|count_1Khz\(2),
	combout => \inst15|count_1Khz~0_combout\);

-- Location: FF_X1_Y16_N27
\inst15|count_1Khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_10Khz_int~clkctrl_outclk\,
	d => \inst15|count_1Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_1Khz\(0));

-- Location: LCCOMB_X1_Y16_N30
\inst15|clock_1Khz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clock_1Khz_int~0_combout\ = \inst15|clock_1Khz_int~q\ $ (((!\inst15|count_1Khz\(0) & (\inst15|count_1Khz\(2) & !\inst15|count_1Khz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count_1Khz\(0),
	datab => \inst15|clock_1Khz_int~q\,
	datac => \inst15|count_1Khz\(2),
	datad => \inst15|count_1Khz\(1),
	combout => \inst15|clock_1Khz_int~0_combout\);

-- Location: LCCOMB_X1_Y16_N22
\inst15|clock_1Khz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clock_1Khz_int~feeder_combout\ = \inst15|clock_1Khz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|clock_1Khz_int~0_combout\,
	combout => \inst15|clock_1Khz_int~feeder_combout\);

-- Location: FF_X1_Y16_N23
\inst15|clock_1Khz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_10Khz_int~clkctrl_outclk\,
	d => \inst15|clock_1Khz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clock_1Khz_int~q\);

-- Location: CLKCTRL_G4
\inst15|clock_1Khz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst15|clock_1Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst15|clock_1Khz_int~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y15_N22
\inst15|count_100hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_100hz~0_combout\ = (!\inst15|count_100hz\(0) & ((\inst15|count_100hz\(1)) # (!\inst15|count_100hz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count_100hz\(1),
	datac => \inst15|count_100hz\(0),
	datad => \inst15|count_100hz\(2),
	combout => \inst15|count_100hz~0_combout\);

-- Location: FF_X1_Y15_N23
\inst15|count_100hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_1Khz_int~clkctrl_outclk\,
	d => \inst15|count_100hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_100hz\(0));

-- Location: LCCOMB_X1_Y15_N24
\inst15|count_100hz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_100hz[1]~1_combout\ = \inst15|count_100hz\(1) $ (\inst15|count_100hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|count_100hz\(1),
	datad => \inst15|count_100hz\(0),
	combout => \inst15|count_100hz[1]~1_combout\);

-- Location: FF_X1_Y15_N25
\inst15|count_100hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_1Khz_int~clkctrl_outclk\,
	d => \inst15|count_100hz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_100hz\(1));

-- Location: LCCOMB_X1_Y15_N30
\inst15|count_100hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count_100hz~2_combout\ = (\inst15|count_100hz\(1) & (\inst15|count_100hz\(2) $ (\inst15|count_100hz\(0)))) # (!\inst15|count_100hz\(1) & (\inst15|count_100hz\(2) & \inst15|count_100hz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count_100hz\(1),
	datac => \inst15|count_100hz\(2),
	datad => \inst15|count_100hz\(0),
	combout => \inst15|count_100hz~2_combout\);

-- Location: FF_X1_Y15_N31
\inst15|count_100hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_1Khz_int~clkctrl_outclk\,
	d => \inst15|count_100hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count_100hz\(2));

-- Location: LCCOMB_X1_Y15_N28
\inst15|clock_100hz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clock_100hz_int~0_combout\ = \inst15|clock_100hz_int~q\ $ (((\inst15|count_100hz\(2) & (!\inst15|count_100hz\(0) & !\inst15|count_100hz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count_100hz\(2),
	datab => \inst15|count_100hz\(0),
	datac => \inst15|clock_100hz_int~q\,
	datad => \inst15|count_100hz\(1),
	combout => \inst15|clock_100hz_int~0_combout\);

-- Location: LCCOMB_X1_Y15_N26
\inst15|clock_100hz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clock_100hz_int~feeder_combout\ = \inst15|clock_100hz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|clock_100hz_int~0_combout\,
	combout => \inst15|clock_100hz_int~feeder_combout\);

-- Location: FF_X1_Y15_N27
\inst15|clock_100hz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|clock_1Khz_int~clkctrl_outclk\,
	d => \inst15|clock_100hz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clock_100hz_int~q\);

-- Location: LCCOMB_X1_Y15_N4
\inst15|CLOCK_100Hz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|CLOCK_100Hz~feeder_combout\ = \inst15|clock_100hz_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clock_100hz_int~q\,
	combout => \inst15|CLOCK_100Hz~feeder_combout\);

-- Location: FF_X1_Y15_N5
\inst15|CLOCK_100Hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock50~inputclkctrl_outclk\,
	d => \inst15|CLOCK_100Hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|CLOCK_100Hz~q\);

-- Location: CLKCTRL_G0
\inst15|CLOCK_100Hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst15|CLOCK_100Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst15|CLOCK_100Hz~clkctrl_outclk\);

-- Location: IOIBUF_X43_Y34_N22
\jugador2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jugador2,
	o => \jugador2~input_o\);

-- Location: LCCOMB_X39_Y32_N30
\inst19|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|SHIFT_PB[3]~0_combout\ = !\jugador2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador2~input_o\,
	combout => \inst19|SHIFT_PB[3]~0_combout\);

-- Location: FF_X39_Y32_N31
\inst19|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst19|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|SHIFT_PB\(3));

-- Location: LCCOMB_X39_Y32_N16
\inst19|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|SHIFT_PB[2]~feeder_combout\ = \inst19|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|SHIFT_PB\(3),
	combout => \inst19|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X39_Y32_N17
\inst19|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst19|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|SHIFT_PB\(2));

-- Location: LCCOMB_X39_Y32_N6
\inst19|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|SHIFT_PB[1]~feeder_combout\ = \inst19|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|SHIFT_PB\(2),
	combout => \inst19|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X39_Y32_N7
\inst19|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst19|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|SHIFT_PB\(1));

-- Location: LCCOMB_X39_Y32_N8
\inst19|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|SHIFT_PB[0]~feeder_combout\ = \inst19|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|SHIFT_PB\(1),
	combout => \inst19|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X39_Y32_N9
\inst19|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst19|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|SHIFT_PB\(0));

-- Location: LCCOMB_X39_Y32_N4
\inst19|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Equal0~0_combout\ = (\inst19|SHIFT_PB\(1)) # ((\inst19|SHIFT_PB\(0)) # ((\inst19|SHIFT_PB\(3)) # (\inst19|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|SHIFT_PB\(1),
	datab => \inst19|SHIFT_PB\(0),
	datac => \inst19|SHIFT_PB\(3),
	datad => \inst19|SHIFT_PB\(2),
	combout => \inst19|Equal0~0_combout\);

-- Location: FF_X39_Y32_N5
\inst19|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst19|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X40_Y34_N8
\jugador1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jugador1,
	o => \jugador1~input_o\);

-- Location: LCCOMB_X37_Y32_N2
\inst18|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|SHIFT_PB[3]~0_combout\ = !\jugador1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \jugador1~input_o\,
	combout => \inst18|SHIFT_PB[3]~0_combout\);

-- Location: FF_X37_Y32_N3
\inst18|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst18|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|SHIFT_PB\(3));

-- Location: LCCOMB_X37_Y32_N0
\inst18|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|SHIFT_PB[2]~feeder_combout\ = \inst18|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|SHIFT_PB\(3),
	combout => \inst18|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X37_Y32_N1
\inst18|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst18|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|SHIFT_PB\(2));

-- Location: LCCOMB_X37_Y32_N6
\inst18|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|SHIFT_PB[1]~feeder_combout\ = \inst18|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|SHIFT_PB\(2),
	combout => \inst18|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X37_Y32_N7
\inst18|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst18|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|SHIFT_PB\(1));

-- Location: LCCOMB_X37_Y32_N4
\inst18|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|SHIFT_PB[0]~feeder_combout\ = \inst18|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|SHIFT_PB\(1),
	combout => \inst18|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X37_Y32_N5
\inst18|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst18|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|SHIFT_PB\(0));

-- Location: LCCOMB_X37_Y32_N8
\inst18|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Equal0~0_combout\ = (\inst18|SHIFT_PB\(1)) # ((\inst18|SHIFT_PB\(3)) # ((\inst18|SHIFT_PB\(0)) # (\inst18|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|SHIFT_PB\(1),
	datab => \inst18|SHIFT_PB\(3),
	datac => \inst18|SHIFT_PB\(0),
	datad => \inst18|SHIFT_PB\(2),
	combout => \inst18|Equal0~0_combout\);

-- Location: FF_X37_Y32_N9
\inst18|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst18|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|PB_SIN_REBOTE~q\);

-- Location: LCCOMB_X38_Y32_N8
\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = !\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\);

-- Location: IOIBUF_X51_Y34_N15
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X37_Y32_N18
\inst16|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|SHIFT_PB[3]~0_combout\ = !\start~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \start~input_o\,
	combout => \inst16|SHIFT_PB[3]~0_combout\);

-- Location: FF_X37_Y32_N19
\inst16|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst16|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|SHIFT_PB\(3));

-- Location: LCCOMB_X37_Y32_N16
\inst16|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|SHIFT_PB[2]~feeder_combout\ = \inst16|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|SHIFT_PB\(3),
	combout => \inst16|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X37_Y32_N17
\inst16|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst16|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|SHIFT_PB\(2));

-- Location: LCCOMB_X37_Y32_N26
\inst16|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|SHIFT_PB[1]~feeder_combout\ = \inst16|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|SHIFT_PB\(2),
	combout => \inst16|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X37_Y32_N27
\inst16|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst16|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|SHIFT_PB\(1));

-- Location: LCCOMB_X37_Y32_N12
\inst16|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|SHIFT_PB[0]~feeder_combout\ = \inst16|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|SHIFT_PB\(1),
	combout => \inst16|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X37_Y32_N13
\inst16|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst16|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|SHIFT_PB\(0));

-- Location: LCCOMB_X37_Y32_N14
\inst16|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Equal0~0_combout\ = (\inst16|SHIFT_PB\(0)) # ((\inst16|SHIFT_PB\(3)) # ((\inst16|SHIFT_PB\(1)) # (\inst16|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|SHIFT_PB\(0),
	datab => \inst16|SHIFT_PB\(3),
	datac => \inst16|SHIFT_PB\(1),
	datad => \inst16|SHIFT_PB\(2),
	combout => \inst16|Equal0~0_combout\);

-- Location: FF_X37_Y32_N15
\inst16|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst16|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|PB_SIN_REBOTE~q\);

-- Location: LCCOMB_X38_Y32_N22
\inst29|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector0~0_combout\ = (!\inst29|y.T13~q\ & ((\inst29|y.T1~q\) # (\inst16|PB_SIN_REBOTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|y.T1~q\,
	datac => \inst29|y.T13~q\,
	datad => \inst16|PB_SIN_REBOTE~q\,
	combout => \inst29|Selector0~0_combout\);

-- Location: IOIBUF_X43_Y34_N15
\resetn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: FF_X38_Y32_N17
\inst29|y.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	asdata => \inst29|Selector0~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|y.T1~q\);

-- Location: FF_X38_Y32_N9
\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock50~inputclkctrl_outclk\,
	d => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	ena => \inst29|ALT_INV_y.T1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X37_Y32_N24
\inst29|y~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|y~22_combout\ = (\inst16|PB_SIN_REBOTE~q\ & ((\inst29|y.T2~q\) # (!\inst29|y.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|PB_SIN_REBOTE~q\,
	datac => \inst29|y.T2~q\,
	datad => \inst29|y.T1~q\,
	combout => \inst29|y~22_combout\);

-- Location: FF_X37_Y32_N25
\inst29|y.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst29|y~22_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|y.T2~q\);

-- Location: LCCOMB_X35_Y32_N28
\inst29|y~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|y~17_combout\ = (!\inst16|PB_SIN_REBOTE~q\ & \inst29|y.T2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|PB_SIN_REBOTE~q\,
	datad => \inst29|y.T2~q\,
	combout => \inst29|y~17_combout\);

-- Location: FF_X35_Y32_N29
\inst29|y.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst29|y~17_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|y.T3~q\);

-- Location: FF_X38_Y32_N1
\inst29|y.T4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	asdata => \inst29|y.T3~q\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|y.T4~q\);

-- Location: LCCOMB_X26_Y1_N26
\inst15|CLOCK_1MHz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|CLOCK_1MHz~feeder_combout\ = \inst15|clock_1Mhz_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|clock_1Mhz_int~q\,
	combout => \inst15|CLOCK_1MHz~feeder_combout\);

-- Location: FF_X26_Y1_N27
\inst15|CLOCK_1MHz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock50~inputclkctrl_outclk\,
	d => \inst15|CLOCK_1MHz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|CLOCK_1MHz~q\);

-- Location: CLKCTRL_G16
\inst15|CLOCK_1MHz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst15|CLOCK_1MHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst15|CLOCK_1MHz~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y32_N4
\inst|y.T4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y.T4~feeder_combout\ = \inst|y.T3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.T3~q\,
	combout => \inst|y.T4~feeder_combout\);

-- Location: FF_X34_Y32_N5
\inst|y.T4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|y.T4~feeder_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T4~q\);

-- Location: LCCOMB_X34_Y32_N26
\inst|y.T5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y.T5~feeder_combout\ = \inst|y.T4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.T4~q\,
	combout => \inst|y.T5~feeder_combout\);

-- Location: FF_X34_Y32_N27
\inst|y.T5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|y.T5~feeder_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T5~q\);

-- Location: LCCOMB_X34_Y32_N18
\inst|y.T6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y.T6~feeder_combout\ = \inst|y.T5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.T5~q\,
	combout => \inst|y.T6~feeder_combout\);

-- Location: FF_X34_Y32_N19
\inst|y.T6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|y.T6~feeder_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T6~q\);

-- Location: LCCOMB_X34_Y32_N2
\inst|y.T1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y.T1~0_combout\ = !\inst|y.T6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|y.T6~q\,
	combout => \inst|y.T1~0_combout\);

-- Location: FF_X34_Y32_N3
\inst|y.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|y.T1~0_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T1~q\);

-- Location: LCCOMB_X34_Y32_N14
\inst|y.T2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y.T2~0_combout\ = !\inst|y.T1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|y.T1~q\,
	combout => \inst|y.T2~0_combout\);

-- Location: FF_X34_Y32_N15
\inst|y.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|y.T2~0_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T2~q\);

-- Location: LCCOMB_X34_Y32_N22
\inst|y.T3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y.T3~feeder_combout\ = \inst|y.T2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.T2~q\,
	combout => \inst|y.T3~feeder_combout\);

-- Location: FF_X34_Y32_N23
\inst|y.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|y.T3~feeder_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T3~q\);

-- Location: LCCOMB_X34_Y32_N24
\inst|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr0~combout\ = (!\inst|y.T3~q\ & (!\inst|y.T2~q\ & \inst|y.T1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T3~q\,
	datac => \inst|y.T2~q\,
	datad => \inst|y.T1~q\,
	combout => \inst|WideOr0~combout\);

-- Location: LCCOMB_X34_Y32_N8
\inst4|temp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|temp[2]~feeder_combout\ = \inst|WideOr0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|WideOr0~combout\,
	combout => \inst4|temp[2]~feeder_combout\);

-- Location: FF_X34_Y32_N9
\inst4|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_1MHz~clkctrl_outclk\,
	d => \inst4|temp[2]~feeder_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|temp\(2));

-- Location: LCCOMB_X34_Y32_N28
\inst|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr1~0_combout\ = (!\inst|y.T5~q\ & (!\inst|y.T4~q\ & \inst|y.T1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T5~q\,
	datac => \inst|y.T4~q\,
	datad => \inst|y.T1~q\,
	combout => \inst|WideOr1~0_combout\);

-- Location: LCCOMB_X34_Y32_N16
\inst4|temp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|temp[1]~feeder_combout\ = \inst|WideOr1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|WideOr1~0_combout\,
	combout => \inst4|temp[1]~feeder_combout\);

-- Location: FF_X34_Y32_N17
\inst4|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_1MHz~clkctrl_outclk\,
	d => \inst4|temp[1]~feeder_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|temp\(1));

-- Location: LCCOMB_X34_Y32_N12
\inst|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~combout\ = (\inst|y.T3~q\) # ((\inst|y.T5~q\) # (!\inst|y.T1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T3~q\,
	datac => \inst|y.T5~q\,
	datad => \inst|y.T1~q\,
	combout => \inst|WideOr2~combout\);

-- Location: LCCOMB_X34_Y32_N6
\inst4|temp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|temp[0]~feeder_combout\ = \inst|WideOr2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr2~combout\,
	combout => \inst4|temp[0]~feeder_combout\);

-- Location: FF_X34_Y32_N7
\inst4|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_1MHz~clkctrl_outclk\,
	d => \inst4|temp[0]~feeder_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|temp\(0));

-- Location: LCCOMB_X35_Y32_N12
\inst6|temp[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|temp[0]~6_combout\ = (\inst6|temp\(0) & (\inst4|temp\(0) $ (VCC))) # (!\inst6|temp\(0) & (\inst4|temp\(0) & VCC))
-- \inst6|temp[0]~7\ = CARRY((\inst6|temp\(0) & \inst4|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(0),
	datab => \inst4|temp\(0),
	datad => VCC,
	combout => \inst6|temp[0]~6_combout\,
	cout => \inst6|temp[0]~7\);

-- Location: FF_X35_Y32_N13
\inst6|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst6|temp[0]~6_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|temp\(0));

-- Location: LCCOMB_X35_Y32_N14
\inst6|temp[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|temp[1]~8_combout\ = (\inst4|temp\(1) & ((\inst6|temp\(1) & (\inst6|temp[0]~7\ & VCC)) # (!\inst6|temp\(1) & (!\inst6|temp[0]~7\)))) # (!\inst4|temp\(1) & ((\inst6|temp\(1) & (!\inst6|temp[0]~7\)) # (!\inst6|temp\(1) & ((\inst6|temp[0]~7\) # 
-- (GND)))))
-- \inst6|temp[1]~9\ = CARRY((\inst4|temp\(1) & (!\inst6|temp\(1) & !\inst6|temp[0]~7\)) # (!\inst4|temp\(1) & ((!\inst6|temp[0]~7\) # (!\inst6|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp\(1),
	datab => \inst6|temp\(1),
	datad => VCC,
	cin => \inst6|temp[0]~7\,
	combout => \inst6|temp[1]~8_combout\,
	cout => \inst6|temp[1]~9\);

-- Location: FF_X35_Y32_N15
\inst6|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst6|temp[1]~8_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|temp\(1));

-- Location: LCCOMB_X35_Y32_N16
\inst6|temp[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|temp[2]~10_combout\ = ((\inst4|temp\(2) $ (\inst6|temp\(2) $ (!\inst6|temp[1]~9\)))) # (GND)
-- \inst6|temp[2]~11\ = CARRY((\inst4|temp\(2) & ((\inst6|temp\(2)) # (!\inst6|temp[1]~9\))) # (!\inst4|temp\(2) & (\inst6|temp\(2) & !\inst6|temp[1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp\(2),
	datab => \inst6|temp\(2),
	datad => VCC,
	cin => \inst6|temp[1]~9\,
	combout => \inst6|temp[2]~10_combout\,
	cout => \inst6|temp[2]~11\);

-- Location: FF_X35_Y32_N17
\inst6|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst6|temp[2]~10_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|temp\(2));

-- Location: LCCOMB_X35_Y32_N18
\inst6|temp[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|temp[3]~12_combout\ = (\inst6|temp\(3) & (!\inst6|temp[2]~11\)) # (!\inst6|temp\(3) & ((\inst6|temp[2]~11\) # (GND)))
-- \inst6|temp[3]~13\ = CARRY((!\inst6|temp[2]~11\) # (!\inst6|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|temp\(3),
	datad => VCC,
	cin => \inst6|temp[2]~11\,
	combout => \inst6|temp[3]~12_combout\,
	cout => \inst6|temp[3]~13\);

-- Location: FF_X35_Y32_N19
\inst6|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst6|temp[3]~12_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|temp\(3));

-- Location: LCCOMB_X35_Y32_N20
\inst6|temp[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|temp[4]~14_combout\ = (\inst6|temp\(4) & (\inst6|temp[3]~13\ $ (GND))) # (!\inst6|temp\(4) & (!\inst6|temp[3]~13\ & VCC))
-- \inst6|temp[4]~15\ = CARRY((\inst6|temp\(4) & !\inst6|temp[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|temp\(4),
	datad => VCC,
	cin => \inst6|temp[3]~13\,
	combout => \inst6|temp[4]~14_combout\,
	cout => \inst6|temp[4]~15\);

-- Location: FF_X35_Y32_N21
\inst6|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst6|temp[4]~14_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|temp\(4));

-- Location: LCCOMB_X35_Y32_N22
\inst6|temp[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|temp[5]~16_combout\ = \inst6|temp\(5) $ (\inst6|temp[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(5),
	cin => \inst6|temp[4]~15\,
	combout => \inst6|temp[5]~16_combout\);

-- Location: FF_X35_Y32_N23
\inst6|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst6|temp[5]~16_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T9~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|temp\(5));

-- Location: LCCOMB_X38_Y32_N10
\inst29|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector1~0_combout\ = (\inst29|y.T12~q\ & (((\inst29|y.T5~q\ & !\inst18|PB_SIN_REBOTE~q\)) # (!\inst6|temp\(5)))) # (!\inst29|y.T12~q\ & (\inst29|y.T5~q\ & ((!\inst18|PB_SIN_REBOTE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|y.T12~q\,
	datab => \inst29|y.T5~q\,
	datac => \inst6|temp\(5),
	datad => \inst18|PB_SIN_REBOTE~q\,
	combout => \inst29|Selector1~0_combout\);

-- Location: LCCOMB_X38_Y32_N24
\inst29|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector1~1_combout\ = (\inst29|Selector1~0_combout\) # ((\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst29|y.T4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst29|y.T4~q\,
	datad => \inst29|Selector1~0_combout\,
	combout => \inst29|Selector1~1_combout\);

-- Location: FF_X38_Y32_N25
\inst29|y.T5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst29|Selector1~1_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|y.T5~q\);

-- Location: LCCOMB_X37_Y32_N30
\inst29|y~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|y~18_combout\ = (\inst18|PB_SIN_REBOTE~q\ & ((\inst29|y.T7~q\) # (\inst29|y.T5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|y.T7~q\,
	datac => \inst18|PB_SIN_REBOTE~q\,
	datad => \inst29|y.T5~q\,
	combout => \inst29|y~18_combout\);

-- Location: FF_X37_Y32_N21
\inst29|y.T7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	asdata => \inst29|y~18_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|y.T7~q\);

-- Location: LCCOMB_X37_Y32_N10
\inst29|y~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|y~19_combout\ = (!\inst18|PB_SIN_REBOTE~q\ & \inst29|y.T7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|PB_SIN_REBOTE~q\,
	datad => \inst29|y.T7~q\,
	combout => \inst29|y~19_combout\);

-- Location: FF_X37_Y32_N11
\inst29|y.T10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst29|y~19_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|y.T10~q\);

-- Location: FF_X38_Y32_N7
\inst29|y.T11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	asdata => \inst29|y.T10~q\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|y.T11~q\);

-- Location: FF_X36_Y32_N9
\inst14|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_1MHz~clkctrl_outclk\,
	asdata => \inst|WideOr0~combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	sload => VCC,
	ena => \inst29|y.T7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|temp\(2));

-- Location: FF_X36_Y32_N29
\inst14|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_1MHz~clkctrl_outclk\,
	asdata => \inst|WideOr1~0_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	sload => VCC,
	ena => \inst29|y.T7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|temp\(1));

-- Location: FF_X36_Y32_N3
\inst14|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_1MHz~clkctrl_outclk\,
	asdata => \inst|WideOr2~combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	sload => VCC,
	ena => \inst29|y.T7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|temp\(0));

-- Location: LCCOMB_X36_Y32_N14
\inst5|temp[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp[0]~6_combout\ = (\inst14|temp\(0) & (\inst5|temp\(0) $ (VCC))) # (!\inst14|temp\(0) & (\inst5|temp\(0) & VCC))
-- \inst5|temp[0]~7\ = CARRY((\inst14|temp\(0) & \inst5|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|temp\(0),
	datab => \inst5|temp\(0),
	datad => VCC,
	combout => \inst5|temp[0]~6_combout\,
	cout => \inst5|temp[0]~7\);

-- Location: FF_X36_Y32_N15
\inst5|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst5|temp[0]~6_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|temp\(0));

-- Location: LCCOMB_X36_Y32_N16
\inst5|temp[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp[1]~8_combout\ = (\inst14|temp\(1) & ((\inst5|temp\(1) & (\inst5|temp[0]~7\ & VCC)) # (!\inst5|temp\(1) & (!\inst5|temp[0]~7\)))) # (!\inst14|temp\(1) & ((\inst5|temp\(1) & (!\inst5|temp[0]~7\)) # (!\inst5|temp\(1) & ((\inst5|temp[0]~7\) # 
-- (GND)))))
-- \inst5|temp[1]~9\ = CARRY((\inst14|temp\(1) & (!\inst5|temp\(1) & !\inst5|temp[0]~7\)) # (!\inst14|temp\(1) & ((!\inst5|temp[0]~7\) # (!\inst5|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|temp\(1),
	datab => \inst5|temp\(1),
	datad => VCC,
	cin => \inst5|temp[0]~7\,
	combout => \inst5|temp[1]~8_combout\,
	cout => \inst5|temp[1]~9\);

-- Location: FF_X36_Y32_N17
\inst5|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst5|temp[1]~8_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|temp\(1));

-- Location: LCCOMB_X36_Y32_N18
\inst5|temp[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp[2]~10_combout\ = ((\inst14|temp\(2) $ (\inst5|temp\(2) $ (!\inst5|temp[1]~9\)))) # (GND)
-- \inst5|temp[2]~11\ = CARRY((\inst14|temp\(2) & ((\inst5|temp\(2)) # (!\inst5|temp[1]~9\))) # (!\inst14|temp\(2) & (\inst5|temp\(2) & !\inst5|temp[1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|temp\(2),
	datab => \inst5|temp\(2),
	datad => VCC,
	cin => \inst5|temp[1]~9\,
	combout => \inst5|temp[2]~10_combout\,
	cout => \inst5|temp[2]~11\);

-- Location: FF_X36_Y32_N19
\inst5|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst5|temp[2]~10_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|temp\(2));

-- Location: LCCOMB_X36_Y32_N20
\inst5|temp[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp[3]~12_combout\ = (\inst5|temp\(3) & (!\inst5|temp[2]~11\)) # (!\inst5|temp\(3) & ((\inst5|temp[2]~11\) # (GND)))
-- \inst5|temp[3]~13\ = CARRY((!\inst5|temp[2]~11\) # (!\inst5|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|temp\(3),
	datad => VCC,
	cin => \inst5|temp[2]~11\,
	combout => \inst5|temp[3]~12_combout\,
	cout => \inst5|temp[3]~13\);

-- Location: FF_X36_Y32_N21
\inst5|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst5|temp[3]~12_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|temp\(3));

-- Location: LCCOMB_X36_Y32_N22
\inst5|temp[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp[4]~14_combout\ = (\inst5|temp\(4) & (\inst5|temp[3]~13\ $ (GND))) # (!\inst5|temp\(4) & (!\inst5|temp[3]~13\ & VCC))
-- \inst5|temp[4]~15\ = CARRY((\inst5|temp\(4) & !\inst5|temp[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(4),
	datad => VCC,
	cin => \inst5|temp[3]~13\,
	combout => \inst5|temp[4]~14_combout\,
	cout => \inst5|temp[4]~15\);

-- Location: FF_X36_Y32_N23
\inst5|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst5|temp[4]~14_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|temp\(4));

-- Location: LCCOMB_X36_Y32_N24
\inst5|temp[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp[5]~16_combout\ = \inst5|temp[4]~15\ $ (\inst5|temp\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|temp\(5),
	cin => \inst5|temp[4]~15\,
	combout => \inst5|temp[5]~16_combout\);

-- Location: FF_X36_Y32_N25
\inst5|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst5|temp[5]~16_combout\,
	clrn => \inst29|ALT_INV_y.T3~q\,
	ena => \inst29|y.T10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|temp\(5));

-- Location: LCCOMB_X38_Y32_N4
\inst29|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector2~0_combout\ = (\inst29|y.T11~q\ & (((\inst29|y.T4~q\ & !\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst5|temp\(5)))) # (!\inst29|y.T11~q\ & (\inst29|y.T4~q\ & 
-- (!\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|y.T11~q\,
	datab => \inst29|y.T4~q\,
	datac => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst5|temp\(5),
	combout => \inst29|Selector2~0_combout\);

-- Location: LCCOMB_X38_Y32_N20
\inst29|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector2~1_combout\ = (\inst29|Selector2~0_combout\) # ((!\inst19|PB_SIN_REBOTE~q\ & \inst29|y.T6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|PB_SIN_REBOTE~q\,
	datac => \inst29|y.T6~q\,
	datad => \inst29|Selector2~0_combout\,
	combout => \inst29|Selector2~1_combout\);

-- Location: FF_X38_Y32_N21
\inst29|y.T6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst29|Selector2~1_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|y.T6~q\);

-- Location: LCCOMB_X39_Y32_N14
\inst29|y~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|y~20_combout\ = (\inst19|PB_SIN_REBOTE~q\ & ((\inst29|y.T8~q\) # (\inst29|y.T6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|y.T8~q\,
	datac => \inst19|PB_SIN_REBOTE~q\,
	datad => \inst29|y.T6~q\,
	combout => \inst29|y~20_combout\);

-- Location: FF_X39_Y32_N25
\inst29|y.T8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	asdata => \inst29|y~20_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|y.T8~q\);

-- Location: LCCOMB_X39_Y32_N22
\inst29|y~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|y~21_combout\ = (!\inst19|PB_SIN_REBOTE~q\ & \inst29|y.T8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|PB_SIN_REBOTE~q\,
	datad => \inst29|y.T8~q\,
	combout => \inst29|y~21_combout\);

-- Location: FF_X39_Y32_N23
\inst29|y.T9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst29|y~21_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|y.T9~q\);

-- Location: FF_X38_Y32_N13
\inst29|y.T12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	asdata => \inst29|y.T9~q\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|y.T12~q\);

-- Location: LCCOMB_X38_Y32_N26
\inst29|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector3~0_combout\ = (\inst29|y.T12~q\ & ((\inst6|temp\(5)) # ((\inst5|temp\(5) & \inst29|y.T11~q\)))) # (!\inst29|y.T12~q\ & (\inst5|temp\(5) & ((\inst29|y.T11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|y.T12~q\,
	datab => \inst5|temp\(5),
	datac => \inst6|temp\(5),
	datad => \inst29|y.T11~q\,
	combout => \inst29|Selector3~0_combout\);

-- Location: FF_X38_Y32_N27
\inst29|y.T13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_10KHz~clkctrl_outclk\,
	d => \inst29|Selector3~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|y.T13~q\);

-- Location: LCCOMB_X38_Y32_N6
\inst29|WideOr8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|WideOr8~combout\ = (\inst29|y.T13~q\) # ((\inst29|y.T3~q\) # ((\inst29|y.T11~q\) # (\inst29|y.T12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|y.T13~q\,
	datab => \inst29|y.T3~q\,
	datac => \inst29|y.T11~q\,
	datad => \inst29|y.T12~q\,
	combout => \inst29|WideOr8~combout\);

-- Location: LCCOMB_X38_Y32_N14
\inst29|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|WideOr9~combout\ = (\inst29|y.T11~q\) # ((\inst29|y.T5~q\) # ((\inst29|y.T10~q\) # (\inst29|y.T7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|y.T11~q\,
	datab => \inst29|y.T5~q\,
	datac => \inst29|y.T10~q\,
	datad => \inst29|y.T7~q\,
	combout => \inst29|WideOr9~combout\);

-- Location: LCCOMB_X39_Y32_N20
\inst29|WideOr10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|WideOr10~combout\ = (\inst29|y.T9~q\) # ((\inst29|y.T8~q\) # ((\inst29|y.T12~q\) # (\inst29|y.T6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|y.T9~q\,
	datab => \inst29|y.T8~q\,
	datac => \inst29|y.T12~q\,
	datad => \inst29|y.T6~q\,
	combout => \inst29|WideOr10~combout\);

-- Location: LCCOMB_X30_Y32_N4
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X30_Y32_N5
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_1MHz~clkctrl_outclk\,
	d => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X30_Y32_N6
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ $ (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\);

-- Location: FF_X30_Y32_N7
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|CLOCK_1MHz~clkctrl_outclk\,
	d => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X35_Y29_N4
\inst44|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Mux0~4_combout\ = (\inst6|temp\(3)) # ((\inst6|temp\(1) & (\inst6|temp\(0) & \inst6|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(3),
	datab => \inst6|temp\(1),
	datac => \inst6|temp\(0),
	datad => \inst6|temp\(2),
	combout => \inst44|Mux0~4_combout\);

-- Location: LCCOMB_X34_Y29_N30
\inst44|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Mux0~6_combout\ = (\inst15|CLOCK_10KHz~q\ & ((\inst6|temp\(4) & (!\inst6|temp\(5))) # (!\inst6|temp\(4) & (\inst6|temp\(5) & !\inst44|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(4),
	datab => \inst6|temp\(5),
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst44|Mux0~4_combout\,
	combout => \inst44|Mux0~6_combout\);

-- Location: LCCOMB_X35_Y29_N12
\inst44|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Mux0~2_combout\ = (\inst6|temp\(3) & ((\inst6|temp\(1)) # ((\inst6|temp\(0)) # (\inst6|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(3),
	datab => \inst6|temp\(1),
	datac => \inst6|temp\(0),
	datad => \inst6|temp\(2),
	combout => \inst44|Mux0~2_combout\);

-- Location: LCCOMB_X34_Y29_N28
\inst44|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Mux0~5_combout\ = ((!\inst44|Mux0~2_combout\ & !\inst6|temp\(5))) # (!\inst44|Mux0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|Mux0~6_combout\,
	datac => \inst44|Mux0~2_combout\,
	datad => \inst6|temp\(5),
	combout => \inst44|Mux0~5_combout\);

-- Location: LCCOMB_X34_Y29_N18
\inst40|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|Mux0~0_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (\inst44|Mux0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst44|Mux0~5_combout\,
	combout => \inst40|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y29_N10
\inst41|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|Mux0~0_combout\ = (\inst15|CLOCK_10KHz~q\ & ((!\inst44|Mux0~4_combout\) # (!\inst6|temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|temp\(5),
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst44|Mux0~4_combout\,
	combout => \inst41|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y32_N0
\inst44|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Mux1~0_combout\ = \inst6|temp\(3) $ (((\inst6|temp\(1)) # ((\inst6|temp\(2)) # (\inst6|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(1),
	datab => \inst6|temp\(2),
	datac => \inst6|temp\(0),
	datad => \inst6|temp\(3),
	combout => \inst44|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y29_N20
\inst40|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|Mux1~2_combout\ = (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst6|temp\(5)) # (!\inst44|Mux1~0_combout\)) # (!\inst6|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(4),
	datab => \inst6|temp\(5),
	datac => \inst44|Mux1~0_combout\,
	datad => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst40|Mux1~2_combout\);

-- Location: LCCOMB_X35_Y32_N26
\inst43|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Mux0~0_combout\ = (!\inst6|temp\(1) & (!\inst6|temp\(2) & (!\inst6|temp\(0) & !\inst6|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(1),
	datab => \inst6|temp\(2),
	datac => \inst6|temp\(0),
	datad => \inst6|temp\(3),
	combout => \inst43|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y29_N0
\inst40|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|Mux1~4_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst6|temp\(4) & ((\inst6|temp\(5)) # (\inst43|Mux0~0_combout\))) # (!\inst6|temp\(4) & (!\inst6|temp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(4),
	datab => \inst6|temp\(5),
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst43|Mux0~0_combout\,
	combout => \inst40|Mux1~4_combout\);

-- Location: LCCOMB_X34_Y29_N8
\inst40|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|Mux1~3_combout\ = ((\inst40|Mux1~2_combout\) # ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (\inst40|Mux1~4_combout\))) # (!\inst41|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Mux0~0_combout\,
	datab => \inst40|Mux1~2_combout\,
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst40|Mux1~4_combout\,
	combout => \inst40|Mux1~3_combout\);

-- Location: LCCOMB_X34_Y29_N22
\inst30|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux0~2_combout\ = (\inst15|CLOCK_10KHz~q\ & !\inst6|temp\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst6|temp\(5),
	combout => \inst30|Mux0~2_combout\);

-- Location: LCCOMB_X34_Y29_N12
\inst40|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|Mux2~0_combout\ = ((\inst6|temp\(4) & ((!\inst43|Mux0~0_combout\))) # (!\inst6|temp\(4) & (!\inst44|Mux0~2_combout\))) # (!\inst30|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|Mux0~2_combout\,
	datab => \inst44|Mux0~2_combout\,
	datac => \inst6|temp\(4),
	datad => \inst43|Mux0~0_combout\,
	combout => \inst40|Mux2~0_combout\);

-- Location: LCCOMB_X34_Y29_N2
\inst42|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst42|Mux0~0_combout\ = (\inst6|temp\(4) & (\inst6|temp\(5))) # (!\inst6|temp\(4) & ((\inst6|temp\(5) & ((\inst44|Mux0~4_combout\))) # (!\inst6|temp\(5) & (!\inst44|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(4),
	datab => \inst6|temp\(5),
	datac => \inst44|Mux0~2_combout\,
	datad => \inst44|Mux0~4_combout\,
	combout => \inst42|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y29_N4
\inst42|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst42|Mux0~1_combout\ = (\inst42|Mux0~0_combout\) # (!\inst15|CLOCK_10KHz~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst42|Mux0~0_combout\,
	combout => \inst42|Mux0~1_combout\);

-- Location: LCCOMB_X34_Y29_N6
\inst40|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|Mux2~1_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (((\inst42|Mux0~1_combout\) # (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst40|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|Mux2~0_combout\,
	datab => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst42|Mux0~1_combout\,
	datad => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst40|Mux2~1_combout\);

-- Location: LCCOMB_X34_Y29_N16
\inst41|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|Mux0~1_combout\ = ((\inst6|temp\(5) & (\inst6|temp\(4))) # (!\inst6|temp\(5) & (!\inst6|temp\(4) & \inst43|Mux0~0_combout\))) # (!\inst41|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Mux0~0_combout\,
	datab => \inst6|temp\(5),
	datac => \inst6|temp\(4),
	datad => \inst43|Mux0~0_combout\,
	combout => \inst41|Mux0~1_combout\);

-- Location: LCCOMB_X34_Y29_N26
\inst40|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|Mux3~0_combout\ = ((\inst41|Mux0~1_combout\) # (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst41|Mux0~1_combout\,
	combout => \inst40|Mux3~0_combout\);

-- Location: LCCOMB_X34_Y29_N24
\inst26|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux0~0_combout\ = (!\inst6|temp\(4) & (\inst6|temp\(5) & (\inst15|CLOCK_10KHz~q\ & !\inst44|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(4),
	datab => \inst6|temp\(5),
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst44|Mux0~4_combout\,
	combout => \inst26|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y29_N2
\inst26|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux0~1_combout\ = (\inst26|Mux0~0_combout\) # ((\inst30|Mux0~2_combout\ & ((\inst6|temp\(4)) # (\inst6|temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(4),
	datab => \inst30|Mux0~2_combout\,
	datac => \inst6|temp\(3),
	datad => \inst26|Mux0~0_combout\,
	combout => \inst26|Mux0~1_combout\);

-- Location: LCCOMB_X34_Y29_N14
\inst30|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux0~4_combout\ = (!\inst6|temp\(4) & (\inst6|temp\(5) & (\inst15|CLOCK_10KHz~q\ & !\inst44|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(4),
	datab => \inst6|temp\(5),
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst44|Mux0~4_combout\,
	combout => \inst30|Mux0~4_combout\);

-- Location: LCCOMB_X35_Y29_N10
\inst44|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Mux0~3_combout\ = \inst6|temp\(5) $ (\inst6|temp\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(5),
	datac => \inst6|temp\(4),
	combout => \inst44|Mux0~3_combout\);

-- Location: LCCOMB_X35_Y29_N26
\inst30|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux0~3_combout\ = (\inst30|Mux0~4_combout\) # ((\inst30|Mux0~2_combout\ & (\inst6|temp\(3) & \inst44|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|Mux0~4_combout\,
	datab => \inst30|Mux0~2_combout\,
	datac => \inst6|temp\(3),
	datad => \inst44|Mux0~3_combout\,
	combout => \inst30|Mux0~3_combout\);

-- Location: LCCOMB_X35_Y29_N20
\inst32|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux0~0_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst30|Mux0~3_combout\))) # (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst44|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst44|Mux0~5_combout\,
	datac => \inst30|Mux0~3_combout\,
	datad => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst32|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y29_N8
\inst32|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux0~1_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst32|Mux0~0_combout\ & (\inst26|Mux0~1_combout\)) # (!\inst32|Mux0~0_combout\ & ((!\inst42|Mux0~1_combout\))))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (((\inst32|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst26|Mux0~1_combout\,
	datac => \inst42|Mux0~1_combout\,
	datad => \inst32|Mux0~0_combout\,
	combout => \inst32|Mux0~1_combout\);

-- Location: LCCOMB_X35_Y29_N28
\inst32|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux1~4_combout\ = (\inst6|temp\(5) & ((\inst44|Mux0~4_combout\) # ((\inst6|temp\(4))))) # (!\inst6|temp\(5) & (((!\inst6|temp\(4)) # (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(5),
	datab => \inst44|Mux0~4_combout\,
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst6|temp\(4),
	combout => \inst32|Mux1~4_combout\);

-- Location: LCCOMB_X36_Y29_N6
\inst32|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux1~2_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst6|temp\(2) & \inst6|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst6|temp\(2),
	datad => \inst6|temp\(1),
	combout => \inst32|Mux1~2_combout\);

-- Location: LCCOMB_X36_Y29_N28
\inst32|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux1~1_combout\ = (\inst6|temp\(3) & ((\inst6|temp\(1)) # ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (\inst6|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(1),
	datab => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst6|temp\(2),
	datad => \inst6|temp\(3),
	combout => \inst32|Mux1~1_combout\);

-- Location: LCCOMB_X35_Y29_N14
\inst32|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux1~0_combout\ = (!\inst6|temp\(5) & ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (\inst6|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(5),
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst6|temp\(4),
	combout => \inst32|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y29_N16
\inst32|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux1~3_combout\ = (\inst32|Mux1~0_combout\ & ((\inst32|Mux1~1_combout\) # ((\inst32|Mux1~2_combout\ & \inst6|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|Mux1~2_combout\,
	datab => \inst32|Mux1~1_combout\,
	datac => \inst6|temp\(0),
	datad => \inst32|Mux1~0_combout\,
	combout => \inst32|Mux1~3_combout\);

-- Location: LCCOMB_X36_Y29_N30
\inst32|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux1~5_combout\ = (\inst15|CLOCK_10KHz~q\ & ((\inst32|Mux1~3_combout\) # (!\inst32|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|Mux1~4_combout\,
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst32|Mux1~3_combout\,
	combout => \inst32|Mux1~5_combout\);

-- Location: LCCOMB_X36_Y29_N4
\inst32|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux2~0_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # ((\inst6|temp\(2)) # ((\inst6|temp\(0) & \inst6|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(0),
	datab => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst6|temp\(2),
	datad => \inst6|temp\(1),
	combout => \inst32|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y29_N22
\inst32|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux2~1_combout\ = (\inst32|Mux1~0_combout\ & ((\inst6|temp\(3) & (\inst32|Mux2~0_combout\)) # (!\inst6|temp\(3) & ((\inst32|Mux1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|Mux1~0_combout\,
	datab => \inst6|temp\(3),
	datac => \inst32|Mux2~0_combout\,
	datad => \inst32|Mux1~2_combout\,
	combout => \inst32|Mux2~1_combout\);

-- Location: LCCOMB_X36_Y29_N24
\inst32|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux2~2_combout\ = (\inst15|CLOCK_10KHz~q\ & ((\inst32|Mux2~1_combout\) # (!\inst32|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|Mux2~1_combout\,
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst32|Mux1~4_combout\,
	combout => \inst32|Mux2~2_combout\);

-- Location: LCCOMB_X36_Y29_N18
\inst32|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux3~0_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst6|temp\(2) & ((\inst6|temp\(0)) # (\inst6|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(0),
	datab => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst6|temp\(2),
	datad => \inst6|temp\(1),
	combout => \inst32|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y29_N0
\inst32|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux3~1_combout\ = (\inst6|temp\(3) & ((\inst6|temp\(2)) # ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\inst6|temp\(3) & (((\inst32|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(2),
	datab => \inst6|temp\(3),
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst32|Mux3~0_combout\,
	combout => \inst32|Mux3~1_combout\);

-- Location: LCCOMB_X36_Y29_N14
\inst32|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux3~2_combout\ = (\inst15|CLOCK_10KHz~q\ & (((\inst32|Mux1~0_combout\ & \inst32|Mux3~1_combout\)) # (!\inst32|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|Mux1~0_combout\,
	datab => \inst32|Mux1~4_combout\,
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst32|Mux3~1_combout\,
	combout => \inst32|Mux3~2_combout\);

-- Location: LCCOMB_X35_Y29_N22
\inst32|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux4~0_combout\ = (\inst6|temp\(3) & (\inst6|temp\(2) & ((\inst6|temp\(1)) # (\inst6|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(3),
	datab => \inst6|temp\(1),
	datac => \inst6|temp\(0),
	datad => \inst6|temp\(2),
	combout => \inst32|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y29_N0
\inst32|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux4~1_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst6|temp\(3)) # ((\inst6|temp\(2))))) # (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst32|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(3),
	datab => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst32|Mux4~0_combout\,
	datad => \inst6|temp\(2),
	combout => \inst32|Mux4~1_combout\);

-- Location: LCCOMB_X36_Y29_N8
\inst32|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux4~2_combout\ = (\inst15|CLOCK_10KHz~q\ & (((\inst32|Mux4~1_combout\ & \inst32|Mux1~0_combout\)) # (!\inst32|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|Mux4~1_combout\,
	datab => \inst32|Mux1~4_combout\,
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst32|Mux1~0_combout\,
	combout => \inst32|Mux4~2_combout\);

-- Location: LCCOMB_X35_Y29_N30
\inst32|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux5~1_combout\ = (\inst6|temp\(3) & (\inst6|temp\(1) & \inst6|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(3),
	datac => \inst6|temp\(1),
	datad => \inst6|temp\(2),
	combout => \inst32|Mux5~1_combout\);

-- Location: LCCOMB_X36_Y29_N10
\inst32|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux5~0_combout\ = (\inst6|temp\(3)) # ((\inst6|temp\(2)) # ((\inst6|temp\(1) & \inst6|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(1),
	datab => \inst6|temp\(3),
	datac => \inst6|temp\(2),
	datad => \inst6|temp\(0),
	combout => \inst32|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y29_N12
\inst32|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux5~2_combout\ = (\inst32|Mux1~0_combout\ & ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst32|Mux5~0_combout\))) # (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst32|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|Mux1~0_combout\,
	datab => \inst32|Mux5~1_combout\,
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst32|Mux5~0_combout\,
	combout => \inst32|Mux5~2_combout\);

-- Location: LCCOMB_X36_Y29_N2
\inst32|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux5~3_combout\ = (\inst15|CLOCK_10KHz~q\ & ((\inst32|Mux5~2_combout\) # (!\inst32|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|Mux1~4_combout\,
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst32|Mux5~2_combout\,
	combout => \inst32|Mux5~3_combout\);

-- Location: LCCOMB_X35_Y29_N24
\inst43|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Mux0~1_combout\ = (!\inst6|temp\(3) & (!\inst6|temp\(1) & !\inst6|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(3),
	datac => \inst6|temp\(1),
	datad => \inst6|temp\(2),
	combout => \inst43|Mux0~1_combout\);

-- Location: LCCOMB_X36_Y29_N20
\inst32|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux6~0_combout\ = (\inst6|temp\(0) & ((\inst32|Mux5~1_combout\) # ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\inst43|Mux0~1_combout\)))) # (!\inst6|temp\(0) & 
-- (((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\inst43|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(0),
	datab => \inst32|Mux5~1_combout\,
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst43|Mux0~1_combout\,
	combout => \inst32|Mux6~0_combout\);

-- Location: LCCOMB_X36_Y29_N26
\inst32|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux6~1_combout\ = (\inst15|CLOCK_10KHz~q\ & (((\inst32|Mux1~0_combout\ & \inst32|Mux6~0_combout\)) # (!\inst32|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|Mux1~0_combout\,
	datab => \inst32|Mux1~4_combout\,
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst32|Mux6~0_combout\,
	combout => \inst32|Mux6~1_combout\);

-- Location: LCCOMB_X35_Y29_N6
\inst43|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|Mux0~2_combout\ = ((!\inst6|temp\(5) & (!\inst6|temp\(0) & \inst43|Mux0~1_combout\))) # (!\inst44|Mux0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|temp\(5),
	datab => \inst44|Mux0~6_combout\,
	datac => \inst6|temp\(0),
	datad => \inst43|Mux0~1_combout\,
	combout => \inst43|Mux0~2_combout\);

-- Location: LCCOMB_X35_Y29_N16
\inst32|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux7~0_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (!\inst43|Mux0~2_combout\)))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst26|Mux0~0_combout\ & (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst26|Mux0~0_combout\,
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst43|Mux0~2_combout\,
	combout => \inst32|Mux7~0_combout\);

-- Location: LCCOMB_X35_Y29_N18
\inst32|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|Mux7~1_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst32|Mux7~0_combout\ & (!\inst41|Mux0~1_combout\)) # (!\inst32|Mux7~0_combout\ & ((\inst44|Mux0~6_combout\))))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (((\inst32|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Mux0~1_combout\,
	datab => \inst44|Mux0~6_combout\,
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst32|Mux7~0_combout\,
	combout => \inst32|Mux7~1_combout\);

-- Location: LCCOMB_X36_Y32_N8
\inst1|sal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sal[2]~2_combout\ = (\inst15|CLOCK_1MHz~q\ & (\inst4|temp\(2))) # (!\inst15|CLOCK_1MHz~q\ & ((\inst14|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|temp\(2),
	datac => \inst14|temp\(2),
	datad => \inst15|CLOCK_1MHz~q\,
	combout => \inst1|sal[2]~2_combout\);

-- Location: LCCOMB_X36_Y32_N2
\inst1|sal[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sal[0]~1_combout\ = (\inst15|CLOCK_1MHz~q\ & (\inst4|temp\(0))) # (!\inst15|CLOCK_1MHz~q\ & ((\inst14|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp\(0),
	datac => \inst14|temp\(0),
	datad => \inst15|CLOCK_1MHz~q\,
	combout => \inst1|sal[0]~1_combout\);

-- Location: LCCOMB_X36_Y32_N28
\inst1|sal[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sal[1]~0_combout\ = (\inst15|CLOCK_1MHz~q\ & (\inst4|temp\(1))) # (!\inst15|CLOCK_1MHz~q\ & ((\inst14|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp\(1),
	datac => \inst14|temp\(1),
	datad => \inst15|CLOCK_1MHz~q\,
	combout => \inst1|sal[1]~0_combout\);

-- Location: LCCOMB_X26_Y32_N20
\inst22|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux0~0_combout\ = (\inst1|sal[1]~0_combout\) # (\inst1|sal[2]~2_combout\ $ (!\inst1|sal[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sal[2]~2_combout\,
	datac => \inst1|sal[0]~1_combout\,
	datad => \inst1|sal[1]~0_combout\,
	combout => \inst22|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y32_N6
\inst22|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux1~0_combout\ = (\inst1|sal[0]~1_combout\ $ (!\inst1|sal[1]~0_combout\)) # (!\inst1|sal[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sal[2]~2_combout\,
	datac => \inst1|sal[0]~1_combout\,
	datad => \inst1|sal[1]~0_combout\,
	combout => \inst22|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y32_N12
\inst22|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux2~0_combout\ = (!\inst1|sal[2]~2_combout\ & (!\inst1|sal[0]~1_combout\ & \inst1|sal[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sal[2]~2_combout\,
	datac => \inst1|sal[0]~1_combout\,
	datad => \inst1|sal[1]~0_combout\,
	combout => \inst22|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y32_N10
\inst22|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux3~0_combout\ = (\inst1|sal[2]~2_combout\ & (\inst1|sal[0]~1_combout\ $ (!\inst1|sal[1]~0_combout\))) # (!\inst1|sal[2]~2_combout\ & (\inst1|sal[0]~1_combout\ & !\inst1|sal[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sal[2]~2_combout\,
	datac => \inst1|sal[0]~1_combout\,
	datad => \inst1|sal[1]~0_combout\,
	combout => \inst22|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y32_N8
\inst22|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux4~0_combout\ = (\inst1|sal[0]~1_combout\) # ((\inst1|sal[2]~2_combout\ & !\inst1|sal[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sal[2]~2_combout\,
	datac => \inst1|sal[0]~1_combout\,
	datad => \inst1|sal[1]~0_combout\,
	combout => \inst22|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y32_N30
\inst22|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux5~0_combout\ = (\inst1|sal[2]~2_combout\ & (\inst1|sal[0]~1_combout\ & \inst1|sal[1]~0_combout\)) # (!\inst1|sal[2]~2_combout\ & ((\inst1|sal[0]~1_combout\) # (\inst1|sal[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sal[2]~2_combout\,
	datac => \inst1|sal[0]~1_combout\,
	datad => \inst1|sal[1]~0_combout\,
	combout => \inst22|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y32_N0
\inst22|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux6~0_combout\ = (\inst1|sal[2]~2_combout\ & ((!\inst1|sal[1]~0_combout\) # (!\inst1|sal[0]~1_combout\))) # (!\inst1|sal[2]~2_combout\ & ((\inst1|sal[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sal[2]~2_combout\,
	datac => \inst1|sal[0]~1_combout\,
	datad => \inst1|sal[1]~0_combout\,
	combout => \inst22|Mux6~0_combout\);

-- Location: LCCOMB_X38_Y32_N18
\inst29|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|WideOr4~0_combout\ = (\inst29|y.T13~q\) # ((\inst29|y.T8~q\) # ((\inst29|y.T9~q\) # (\inst29|y.T12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|y.T13~q\,
	datab => \inst29|y.T8~q\,
	datac => \inst29|y.T9~q\,
	datad => \inst29|y.T12~q\,
	combout => \inst29|WideOr4~0_combout\);

-- Location: LCCOMB_X38_Y32_N0
\inst29|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|WideOr4~combout\ = (\inst29|y.T11~q\) # ((\inst29|y.T10~q\) # (\inst29|WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|y.T11~q\,
	datab => \inst29|y.T10~q\,
	datad => \inst29|WideOr4~0_combout\,
	combout => \inst29|WideOr4~combout\);

-- Location: LCCOMB_X38_Y32_N12
\inst29|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|WideOr5~0_combout\ = (\inst29|y.T13~q\) # ((\inst29|y.T7~q\) # ((\inst29|y.T12~q\) # (\inst29|y.T5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|y.T13~q\,
	datab => \inst29|y.T7~q\,
	datac => \inst29|y.T12~q\,
	datad => \inst29|y.T5~q\,
	combout => \inst29|WideOr5~0_combout\);

-- Location: LCCOMB_X39_Y32_N18
\inst29|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|WideOr5~combout\ = (\inst29|WideOr5~0_combout\) # ((\inst29|y.T6~q\) # (\inst29|y.T4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|WideOr5~0_combout\,
	datab => \inst29|y.T6~q\,
	datac => \inst29|y.T4~q\,
	combout => \inst29|WideOr5~combout\);

-- Location: LCCOMB_X38_Y32_N2
\inst29|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|WideOr6~0_combout\ = (\inst29|y.T11~q\) # ((\inst29|y.T6~q\) # ((\inst29|y.T3~q\) # (\inst29|y.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|y.T11~q\,
	datab => \inst29|y.T6~q\,
	datac => \inst29|y.T3~q\,
	datad => \inst29|y.T2~q\,
	combout => \inst29|WideOr6~0_combout\);

-- Location: LCCOMB_X38_Y32_N16
\inst29|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|WideOr6~combout\ = (\inst29|WideOr6~0_combout\) # ((\inst29|y.T10~q\) # (\inst29|y.T7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|WideOr6~0_combout\,
	datab => \inst29|y.T10~q\,
	datad => \inst29|y.T7~q\,
	combout => \inst29|WideOr6~combout\);

-- Location: LCCOMB_X38_Y32_N30
\inst29|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|WideOr7~0_combout\ = (\inst29|y.T11~q\) # ((\inst29|y.T5~q\) # ((\inst29|y.T3~q\) # (\inst29|y.T7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|y.T11~q\,
	datab => \inst29|y.T5~q\,
	datac => \inst29|y.T3~q\,
	datad => \inst29|y.T7~q\,
	combout => \inst29|WideOr7~0_combout\);

-- Location: LCCOMB_X38_Y32_N28
\inst29|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|WideOr7~combout\ = (\inst29|WideOr7~0_combout\) # ((\inst29|y.T9~q\) # (!\inst29|y.T1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|WideOr7~0_combout\,
	datac => \inst29|y.T9~q\,
	datad => \inst29|y.T1~q\,
	combout => \inst29|WideOr7~combout\);

-- Location: LCCOMB_X36_Y32_N30
\inst38|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|Mux0~2_combout\ = (\inst5|temp\(3)) # ((\inst5|temp\(0) & (\inst5|temp\(2) & \inst5|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(0),
	datab => \inst5|temp\(2),
	datac => \inst5|temp\(1),
	datad => \inst5|temp\(3),
	combout => \inst38|Mux0~2_combout\);

-- Location: LCCOMB_X25_Y32_N18
\inst17|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Mux7~2_combout\ = (!\inst15|CLOCK_10KHz~q\ & ((\inst5|temp\(5) & (!\inst5|temp\(4) & !\inst38|Mux0~2_combout\)) # (!\inst5|temp\(5) & (\inst5|temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(5),
	datab => \inst5|temp\(4),
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst38|Mux0~2_combout\,
	combout => \inst17|Mux7~2_combout\);

-- Location: LCCOMB_X29_Y32_N16
\inst38|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|Mux0~0_combout\ = (\inst5|temp\(3) & ((\inst5|temp\(2)) # ((\inst5|temp\(1)) # (\inst5|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(2),
	datab => \inst5|temp\(1),
	datac => \inst5|temp\(0),
	datad => \inst5|temp\(3),
	combout => \inst38|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y32_N28
\inst38|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|Mux0~3_combout\ = ((!\inst5|temp\(5) & !\inst38|Mux0~0_combout\)) # (!\inst17|Mux7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|temp\(5),
	datac => \inst17|Mux7~2_combout\,
	datad => \inst38|Mux0~0_combout\,
	combout => \inst38|Mux0~3_combout\);

-- Location: LCCOMB_X29_Y32_N30
\inst39|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|Mux0~0_combout\ = (\inst38|Mux0~3_combout\) # ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|Mux0~3_combout\,
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst39|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y32_N10
\inst35|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|Mux0~0_combout\ = (!\inst15|CLOCK_10KHz~q\ & ((!\inst38|Mux0~2_combout\) # (!\inst5|temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(5),
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst38|Mux0~2_combout\,
	combout => \inst35|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y32_N12
\inst37|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|Mux0~0_combout\ = (!\inst5|temp\(2) & (!\inst5|temp\(1) & (!\inst5|temp\(0) & !\inst5|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(2),
	datab => \inst5|temp\(1),
	datac => \inst5|temp\(0),
	datad => \inst5|temp\(3),
	combout => \inst37|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y32_N16
\inst39|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|Mux1~4_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst5|temp\(5) & (\inst5|temp\(4))) # (!\inst5|temp\(5) & ((\inst37|Mux0~0_combout\) # (!\inst5|temp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(5),
	datab => \inst5|temp\(4),
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst37|Mux0~0_combout\,
	combout => \inst39|Mux1~4_combout\);

-- Location: LCCOMB_X36_Y32_N12
\inst38|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|Mux1~0_combout\ = \inst5|temp\(3) $ (((\inst5|temp\(0)) # ((\inst5|temp\(2)) # (\inst5|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(0),
	datab => \inst5|temp\(2),
	datac => \inst5|temp\(1),
	datad => \inst5|temp\(3),
	combout => \inst38|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y32_N8
\inst39|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|Mux1~2_combout\ = (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst5|temp\(5)) # ((!\inst38|Mux1~0_combout\) # (!\inst5|temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(5),
	datab => \inst5|temp\(4),
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst38|Mux1~0_combout\,
	combout => \inst39|Mux1~2_combout\);

-- Location: LCCOMB_X25_Y32_N0
\inst39|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|Mux1~3_combout\ = ((\inst39|Mux1~4_combout\) # ((\inst39|Mux1~2_combout\) # (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) # (!\inst35|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|Mux0~0_combout\,
	datab => \inst39|Mux1~4_combout\,
	datac => \inst39|Mux1~2_combout\,
	datad => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst39|Mux1~3_combout\);

-- Location: LCCOMB_X29_Y32_N10
\inst20|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux0~2_combout\ = (!\inst15|CLOCK_10KHz~q\ & !\inst5|temp\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst5|temp\(5),
	combout => \inst20|Mux0~2_combout\);

-- Location: LCCOMB_X29_Y32_N0
\inst39|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|Mux2~0_combout\ = ((\inst5|temp\(4) & ((!\inst37|Mux0~0_combout\))) # (!\inst5|temp\(4) & (!\inst38|Mux0~0_combout\))) # (!\inst20|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mux0~2_combout\,
	datab => \inst38|Mux0~0_combout\,
	datac => \inst5|temp\(4),
	datad => \inst37|Mux0~0_combout\,
	combout => \inst39|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y32_N18
\inst36|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|Mux0~0_combout\ = (\inst5|temp\(4) & (((\inst5|temp\(5))))) # (!\inst5|temp\(4) & ((\inst5|temp\(5) & (\inst38|Mux0~2_combout\)) # (!\inst5|temp\(5) & ((!\inst38|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|Mux0~2_combout\,
	datab => \inst38|Mux0~0_combout\,
	datac => \inst5|temp\(4),
	datad => \inst5|temp\(5),
	combout => \inst36|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y32_N8
\inst36|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|Mux0~1_combout\ = (\inst15|CLOCK_10KHz~q\) # (\inst36|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|CLOCK_10KHz~q\,
	datad => \inst36|Mux0~0_combout\,
	combout => \inst36|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y32_N26
\inst39|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|Mux2~1_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (((\inst36|Mux0~1_combout\) # (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst39|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|Mux2~0_combout\,
	datab => \inst36|Mux0~1_combout\,
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst39|Mux2~1_combout\);

-- Location: LCCOMB_X25_Y32_N24
\inst35|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|Mux0~1_combout\ = ((\inst5|temp\(4) & (\inst5|temp\(5))) # (!\inst5|temp\(4) & (!\inst5|temp\(5) & \inst37|Mux0~0_combout\))) # (!\inst35|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|Mux0~0_combout\,
	datab => \inst5|temp\(4),
	datac => \inst5|temp\(5),
	datad => \inst37|Mux0~0_combout\,
	combout => \inst35|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y32_N6
\inst39|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|Mux3~0_combout\ = (\inst35|Mux0~1_combout\) # ((!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|Mux0~1_combout\,
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst39|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y32_N8
\inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (!\inst5|temp\(4) & (\inst5|temp\(5) & (!\inst15|CLOCK_10KHz~q\ & !\inst38|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(4),
	datab => \inst5|temp\(5),
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst38|Mux0~2_combout\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y32_N14
\inst2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~1_combout\ = (\inst2|Mux0~0_combout\) # ((\inst20|Mux0~2_combout\ & ((\inst5|temp\(4)) # (\inst5|temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(4),
	datab => \inst5|temp\(3),
	datac => \inst2|Mux0~0_combout\,
	datad => \inst20|Mux0~2_combout\,
	combout => \inst2|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y32_N26
\inst38|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|Mux0~1_combout\ = \inst5|temp\(5) $ (\inst5|temp\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|temp\(5),
	datac => \inst5|temp\(4),
	combout => \inst38|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y32_N14
\inst20|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux0~4_combout\ = (\inst5|temp\(5) & (!\inst5|temp\(4) & (!\inst15|CLOCK_10KHz~q\ & !\inst38|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(5),
	datab => \inst5|temp\(4),
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst38|Mux0~2_combout\,
	combout => \inst20|Mux0~4_combout\);

-- Location: LCCOMB_X29_Y32_N4
\inst20|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux0~3_combout\ = (\inst20|Mux0~4_combout\) # ((\inst20|Mux0~2_combout\ & (\inst5|temp\(3) & \inst38|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mux0~2_combout\,
	datab => \inst5|temp\(3),
	datac => \inst38|Mux0~1_combout\,
	datad => \inst20|Mux0~4_combout\,
	combout => \inst20|Mux0~3_combout\);

-- Location: LCCOMB_X29_Y32_N2
\inst23|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux0~0_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst20|Mux0~3_combout\) # ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\inst38|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst20|Mux0~3_combout\,
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst38|Mux0~3_combout\,
	combout => \inst23|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y32_N28
\inst23|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux0~1_combout\ = (\inst23|Mux0~0_combout\ & ((\inst2|Mux0~1_combout\) # ((!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))) # (!\inst23|Mux0~0_combout\ & (((!\inst36|Mux0~1_combout\ & 
-- \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~1_combout\,
	datab => \inst23|Mux0~0_combout\,
	datac => \inst36|Mux0~1_combout\,
	datad => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst23|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y32_N30
\inst23|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux1~4_combout\ = (\inst5|temp\(4) & (((\inst5|temp\(5))) # (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) # (!\inst5|temp\(4) & (((\inst38|Mux0~2_combout\) # (!\inst5|temp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst5|temp\(4),
	datac => \inst5|temp\(5),
	datad => \inst38|Mux0~2_combout\,
	combout => \inst23|Mux1~4_combout\);

-- Location: LCCOMB_X28_Y32_N26
\inst23|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux1~2_combout\ = (\inst5|temp\(1) & (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst5|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(1),
	datab => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst5|temp\(2),
	combout => \inst23|Mux1~2_combout\);

-- Location: LCCOMB_X28_Y32_N2
\inst23|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux1~1_combout\ = (\inst5|temp\(3) & ((\inst5|temp\(1)) # ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (\inst5|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(1),
	datab => \inst5|temp\(3),
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst5|temp\(2),
	combout => \inst23|Mux1~1_combout\);

-- Location: LCCOMB_X29_Y32_N24
\inst23|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux1~0_combout\ = (!\inst5|temp\(5) & ((\inst5|temp\(4)) # (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(4),
	datab => \inst5|temp\(5),
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst23|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y32_N24
\inst23|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux1~3_combout\ = (\inst23|Mux1~0_combout\ & ((\inst23|Mux1~1_combout\) # ((\inst23|Mux1~2_combout\ & \inst5|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Mux1~2_combout\,
	datab => \inst23|Mux1~1_combout\,
	datac => \inst5|temp\(0),
	datad => \inst23|Mux1~0_combout\,
	combout => \inst23|Mux1~3_combout\);

-- Location: LCCOMB_X25_Y32_N12
\inst23|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux1~5_combout\ = (!\inst15|CLOCK_10KHz~q\ & ((\inst23|Mux1~3_combout\) # (!\inst23|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Mux1~4_combout\,
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst23|Mux1~3_combout\,
	combout => \inst23|Mux1~5_combout\);

-- Location: LCCOMB_X28_Y32_N14
\inst23|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux2~0_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # ((\inst5|temp\(2)) # ((\inst5|temp\(1) & \inst5|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(1),
	datab => \inst5|temp\(0),
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst5|temp\(2),
	combout => \inst23|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y32_N12
\inst23|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux2~1_combout\ = (\inst23|Mux1~0_combout\ & ((\inst5|temp\(3) & ((\inst23|Mux2~0_combout\))) # (!\inst5|temp\(3) & (\inst23|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Mux1~2_combout\,
	datab => \inst5|temp\(3),
	datac => \inst23|Mux2~0_combout\,
	datad => \inst23|Mux1~0_combout\,
	combout => \inst23|Mux2~1_combout\);

-- Location: LCCOMB_X28_Y32_N0
\inst23|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux2~2_combout\ = (!\inst15|CLOCK_10KHz~q\ & ((\inst23|Mux2~1_combout\) # (!\inst23|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Mux1~4_combout\,
	datab => \inst15|CLOCK_10KHz~q\,
	datad => \inst23|Mux2~1_combout\,
	combout => \inst23|Mux2~2_combout\);

-- Location: LCCOMB_X28_Y32_N20
\inst23|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux3~0_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst5|temp\(2) & ((\inst5|temp\(1)) # (\inst5|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(1),
	datab => \inst5|temp\(0),
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst5|temp\(2),
	combout => \inst23|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y32_N4
\inst23|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux3~1_combout\ = (\inst5|temp\(3) & ((\inst5|temp\(2)) # ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\inst5|temp\(3) & (((\inst23|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(2),
	datab => \inst5|temp\(3),
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst23|Mux3~0_combout\,
	combout => \inst23|Mux3~1_combout\);

-- Location: LCCOMB_X28_Y32_N18
\inst23|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux3~2_combout\ = (!\inst15|CLOCK_10KHz~q\ & (((\inst23|Mux1~0_combout\ & \inst23|Mux3~1_combout\)) # (!\inst23|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Mux1~4_combout\,
	datab => \inst23|Mux1~0_combout\,
	datac => \inst23|Mux3~1_combout\,
	datad => \inst15|CLOCK_10KHz~q\,
	combout => \inst23|Mux3~2_combout\);

-- Location: LCCOMB_X36_Y32_N26
\inst23|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux4~0_combout\ = (\inst5|temp\(2) & (\inst5|temp\(3) & ((\inst5|temp\(0)) # (\inst5|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(0),
	datab => \inst5|temp\(2),
	datac => \inst5|temp\(1),
	datad => \inst5|temp\(3),
	combout => \inst23|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y32_N4
\inst23|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux4~1_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst5|temp\(2)) # ((\inst5|temp\(3))))) # (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst23|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|temp\(2),
	datac => \inst23|Mux4~0_combout\,
	datad => \inst5|temp\(3),
	combout => \inst23|Mux4~1_combout\);

-- Location: LCCOMB_X28_Y32_N16
\inst23|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux4~2_combout\ = (!\inst15|CLOCK_10KHz~q\ & (((\inst23|Mux1~0_combout\ & \inst23|Mux4~1_combout\)) # (!\inst23|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Mux1~4_combout\,
	datab => \inst23|Mux1~0_combout\,
	datac => \inst23|Mux4~1_combout\,
	datad => \inst15|CLOCK_10KHz~q\,
	combout => \inst23|Mux4~2_combout\);

-- Location: LCCOMB_X28_Y32_N10
\inst23|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux5~1_combout\ = (\inst5|temp\(2) & (\inst5|temp\(1) & \inst5|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(2),
	datac => \inst5|temp\(1),
	datad => \inst5|temp\(3),
	combout => \inst23|Mux5~1_combout\);

-- Location: LCCOMB_X28_Y32_N28
\inst23|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux5~0_combout\ = (\inst5|temp\(3)) # ((\inst5|temp\(2)) # ((\inst5|temp\(1) & \inst5|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(1),
	datab => \inst5|temp\(3),
	datac => \inst5|temp\(0),
	datad => \inst5|temp\(2),
	combout => \inst23|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y32_N6
\inst23|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux5~2_combout\ = (\inst23|Mux1~0_combout\ & ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst23|Mux5~0_combout\))) # (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst23|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Mux5~1_combout\,
	datab => \inst23|Mux5~0_combout\,
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst23|Mux1~0_combout\,
	combout => \inst23|Mux5~2_combout\);

-- Location: LCCOMB_X25_Y32_N22
\inst23|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux5~3_combout\ = (!\inst15|CLOCK_10KHz~q\ & ((\inst23|Mux5~2_combout\) # (!\inst23|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Mux1~4_combout\,
	datac => \inst15|CLOCK_10KHz~q\,
	datad => \inst23|Mux5~2_combout\,
	combout => \inst23|Mux5~3_combout\);

-- Location: LCCOMB_X29_Y32_N6
\inst37|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|Mux0~1_combout\ = (!\inst5|temp\(2) & (!\inst5|temp\(1) & !\inst5|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp\(2),
	datab => \inst5|temp\(1),
	datad => \inst5|temp\(3),
	combout => \inst37|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y32_N22
\inst23|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux6~0_combout\ = (\inst23|Mux5~1_combout\ & ((\inst5|temp\(0)) # ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\inst37|Mux0~1_combout\)))) # (!\inst23|Mux5~1_combout\ & 
-- (((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\inst37|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Mux5~1_combout\,
	datab => \inst5|temp\(0),
	datac => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst37|Mux0~1_combout\,
	combout => \inst23|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y32_N30
\inst23|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux6~1_combout\ = (!\inst15|CLOCK_10KHz~q\ & (((\inst23|Mux6~0_combout\ & \inst23|Mux1~0_combout\)) # (!\inst23|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Mux1~4_combout\,
	datab => \inst15|CLOCK_10KHz~q\,
	datac => \inst23|Mux6~0_combout\,
	datad => \inst23|Mux1~0_combout\,
	combout => \inst23|Mux6~1_combout\);

-- Location: LCCOMB_X29_Y32_N20
\inst37|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|Mux0~2_combout\ = ((!\inst5|temp\(5) & (!\inst5|temp\(0) & \inst37|Mux0~1_combout\))) # (!\inst17|Mux7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Mux7~2_combout\,
	datab => \inst5|temp\(5),
	datac => \inst5|temp\(0),
	datad => \inst37|Mux0~1_combout\,
	combout => \inst37|Mux0~2_combout\);

-- Location: LCCOMB_X29_Y32_N22
\inst23|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux7~0_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # ((!\inst37|Mux0~2_combout\)))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst2|Mux0~0_combout\,
	datad => \inst37|Mux0~2_combout\,
	combout => \inst23|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y32_N20
\inst23|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Mux7~1_combout\ = (\inst23|Mux7~0_combout\ & (((!\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (!\inst35|Mux0~1_combout\))) # (!\inst23|Mux7~0_combout\ & (((\inst17|Mux7~2_combout\ & 
-- \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Mux7~0_combout\,
	datab => \inst35|Mux0~1_combout\,
	datac => \inst17|Mux7~2_combout\,
	datad => \inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst23|Mux7~1_combout\);

ww_led_indicador <= \led_indicador~output_o\;

ww_led_verde <= \led_verde~output_o\;

ww_led_rojo <= \led_rojo~output_o\;

ww_dis(1) <= \dis[1]~output_o\;

ww_dis(0) <= \dis[0]~output_o\;

ww_rojocolumna(3) <= \rojocolumna[3]~output_o\;

ww_rojocolumna(2) <= \rojocolumna[2]~output_o\;

ww_rojocolumna(1) <= \rojocolumna[1]~output_o\;

ww_rojocolumna(0) <= \rojocolumna[0]~output_o\;

ww_rojofila(7) <= \rojofila[7]~output_o\;

ww_rojofila(6) <= \rojofila[6]~output_o\;

ww_rojofila(5) <= \rojofila[5]~output_o\;

ww_rojofila(4) <= \rojofila[4]~output_o\;

ww_rojofila(3) <= \rojofila[3]~output_o\;

ww_rojofila(2) <= \rojofila[2]~output_o\;

ww_rojofila(1) <= \rojofila[1]~output_o\;

ww_rojofila(0) <= \rojofila[0]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;

ww_state(5) <= \state[5]~output_o\;

ww_state(4) <= \state[4]~output_o\;

ww_state(3) <= \state[3]~output_o\;

ww_state(2) <= \state[2]~output_o\;

ww_state(1) <= \state[1]~output_o\;

ww_state(0) <= \state[0]~output_o\;

ww_verdecolumna(3) <= \verdecolumna[3]~output_o\;

ww_verdecolumna(2) <= \verdecolumna[2]~output_o\;

ww_verdecolumna(1) <= \verdecolumna[1]~output_o\;

ww_verdecolumna(0) <= \verdecolumna[0]~output_o\;

ww_verdefila(7) <= \verdefila[7]~output_o\;

ww_verdefila(6) <= \verdefila[6]~output_o\;

ww_verdefila(5) <= \verdefila[5]~output_o\;

ww_verdefila(4) <= \verdefila[4]~output_o\;

ww_verdefila(3) <= \verdefila[3]~output_o\;

ww_verdefila(2) <= \verdefila[2]~output_o\;

ww_verdefila(1) <= \verdefila[1]~output_o\;

ww_verdefila(0) <= \verdefila[0]~output_o\;
END structure;


