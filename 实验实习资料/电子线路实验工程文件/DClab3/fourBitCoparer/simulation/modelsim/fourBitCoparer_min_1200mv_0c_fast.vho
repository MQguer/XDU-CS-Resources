-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "01/11/2014 20:05:09"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fourBitCoparer IS
    PORT (
	L0 : OUT std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	S0 : OUT std_logic;
	E0 : OUT std_logic
	);
END fourBitCoparer;

-- Design Ports Information
-- L0	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E0	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fourBitCoparer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_L0 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_E0 : std_logic;
SIGNAL \L0~output_o\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \E0~output_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \ALT_INV_inst~combout\ : std_logic;

BEGIN

L0 <= ww_L0;
ww_A0 <= A0;
ww_B0 <= B0;
S0 <= ww_S0;
E0 <= ww_E0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst~combout\ <= NOT \inst~combout\;

-- Location: IOOBUF_X12_Y0_N9
\L0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~combout\,
	devoe => ww_devoe,
	o => \L0~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\S0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~combout\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\E0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst~combout\,
	devoe => ww_devoe,
	o => \E0~output_o\);

-- Location: IOIBUF_X20_Y0_N1
\A0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\B0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: LCCOMB_X23_Y2_N16
inst1 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (\A0~input_o\ & !\B0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0~input_o\,
	datac => \B0~input_o\,
	combout => \inst1~combout\);

-- Location: LCCOMB_X23_Y2_N2
inst2 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (!\A0~input_o\ & \B0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0~input_o\,
	datac => \B0~input_o\,
	combout => \inst2~combout\);

-- Location: LCCOMB_X23_Y2_N4
inst : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\A0~input_o\) # (\B0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0~input_o\,
	datac => \B0~input_o\,
	combout => \inst~combout\);

ww_L0 <= \L0~output_o\;

ww_S0 <= \S0~output_o\;

ww_E0 <= \E0~output_o\;
END structure;


