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

-- DATE "01/04/2014 21:28:43"

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

ENTITY 	One IS
    PORT (
	S : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C_i : IN std_logic;
	Ci1 : OUT std_logic
	);
END One;

-- Design Ports Information
-- S	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ci1	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_i	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF One IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C_i : std_logic;
SIGNAL ww_Ci1 : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \Ci1~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \C_i~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \inst16~0_combout\ : std_logic;

BEGIN

S <= ww_S;
ww_A <= A;
ww_B <= B;
ww_C_i <= C_i;
Ci1 <= ww_Ci1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N9
\S~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~0_combout\,
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\Ci1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~0_combout\,
	devoe => ww_devoe,
	o => \Ci1~output_o\);

-- Location: IOIBUF_X8_Y0_N1
\A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\C_i~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_i,
	o => \C_i~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X8_Y1_N24
\inst9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = \A~input_o\ $ (\C_i~input_o\ $ (\B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datac => \C_i~input_o\,
	datad => \B~input_o\,
	combout => \inst9~0_combout\);

-- Location: LCCOMB_X8_Y1_N2
\inst16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst16~0_combout\ = (\A~input_o\ & ((\C_i~input_o\) # (\B~input_o\))) # (!\A~input_o\ & (\C_i~input_o\ & \B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datac => \C_i~input_o\,
	datad => \B~input_o\,
	combout => \inst16~0_combout\);

ww_S <= \S~output_o\;

ww_Ci1 <= \Ci1~output_o\;
END structure;


