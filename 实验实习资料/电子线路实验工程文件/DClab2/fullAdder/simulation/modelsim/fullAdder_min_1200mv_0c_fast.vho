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

-- DATE "01/04/2014 21:43:46"

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

ENTITY 	fullAdder IS
    PORT (
	C1 : OUT std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	C2 : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	C3 : OUT std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	C4 : OUT std_logic;
	A4 : IN std_logic;
	B4 : IN std_logic;
	Ci1 : OUT std_logic
	);
END fullAdder;

-- Design Ports Information
-- C1	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C2	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C3	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C4	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ci1	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fullAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_C2 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_C3 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_C4 : std_logic;
SIGNAL ww_A4 : std_logic;
SIGNAL ww_B4 : std_logic;
SIGNAL ww_Ci1 : std_logic;
SIGNAL \C1~output_o\ : std_logic;
SIGNAL \C2~output_o\ : std_logic;
SIGNAL \C3~output_o\ : std_logic;
SIGNAL \C4~output_o\ : std_logic;
SIGNAL \Ci1~output_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst49~combout\ : std_logic;
SIGNAL \inst51~combout\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \inst9~1_cout\ : std_logic;
SIGNAL \inst9~2_combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \inst9~3\ : std_logic;
SIGNAL \inst9~4_combout\ : std_logic;
SIGNAL \A4~input_o\ : std_logic;
SIGNAL \B4~input_o\ : std_logic;
SIGNAL \inst9~5\ : std_logic;
SIGNAL \inst9~6_combout\ : std_logic;
SIGNAL \inst9~7\ : std_logic;
SIGNAL \inst9~8_combout\ : std_logic;

BEGIN

C1 <= ww_C1;
ww_A1 <= A1;
ww_B1 <= B1;
C2 <= ww_C2;
ww_A2 <= A2;
ww_B2 <= B2;
C3 <= ww_C3;
ww_A3 <= A3;
ww_B3 <= B3;
C4 <= ww_C4;
ww_A4 <= A4;
ww_B4 <= B4;
Ci1 <= ww_Ci1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N2
\C1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst49~combout\,
	devoe => ww_devoe,
	o => \C1~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\C2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~2_combout\,
	devoe => ww_devoe,
	o => \C2~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\C3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~4_combout\,
	devoe => ww_devoe,
	o => \C3~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\C4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~6_combout\,
	devoe => ww_devoe,
	o => \C4~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Ci1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~8_combout\,
	devoe => ww_devoe,
	o => \Ci1~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\A1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\B1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LCCOMB_X23_Y1_N26
inst49 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst49~combout\ = \A1~input_o\ $ (\B1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1~input_o\,
	datad => \B1~input_o\,
	combout => \inst49~combout\);

-- Location: LCCOMB_X23_Y1_N12
inst51 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst51~combout\ = (\A1~input_o\ & \B1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1~input_o\,
	datad => \B1~input_o\,
	combout => \inst51~combout\);

-- Location: IOIBUF_X29_Y0_N1
\A2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\B2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: LCCOMB_X23_Y1_N0
\inst9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9~1_cout\ = CARRY(\B2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2~input_o\,
	datad => VCC,
	cout => \inst9~1_cout\);

-- Location: LCCOMB_X23_Y1_N2
\inst9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9~2_combout\ = (\inst51~combout\ & ((\A2~input_o\ & (\inst9~1_cout\ & VCC)) # (!\A2~input_o\ & (!\inst9~1_cout\)))) # (!\inst51~combout\ & ((\A2~input_o\ & (!\inst9~1_cout\)) # (!\A2~input_o\ & ((\inst9~1_cout\) # (GND)))))
-- \inst9~3\ = CARRY((\inst51~combout\ & (!\A2~input_o\ & !\inst9~1_cout\)) # (!\inst51~combout\ & ((!\inst9~1_cout\) # (!\A2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst51~combout\,
	datab => \A2~input_o\,
	datad => VCC,
	cin => \inst9~1_cout\,
	combout => \inst9~2_combout\,
	cout => \inst9~3\);

-- Location: IOIBUF_X29_Y0_N8
\B3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\A3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: LCCOMB_X23_Y1_N4
\inst9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9~4_combout\ = ((\B3~input_o\ $ (\A3~input_o\ $ (!\inst9~3\)))) # (GND)
-- \inst9~5\ = CARRY((\B3~input_o\ & ((\A3~input_o\) # (!\inst9~3\))) # (!\B3~input_o\ & (\A3~input_o\ & !\inst9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \A3~input_o\,
	datad => VCC,
	cin => \inst9~3\,
	combout => \inst9~4_combout\,
	cout => \inst9~5\);

-- Location: IOIBUF_X26_Y0_N8
\A4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A4,
	o => \A4~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\B4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B4,
	o => \B4~input_o\);

-- Location: LCCOMB_X23_Y1_N6
\inst9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9~6_combout\ = (\A4~input_o\ & ((\B4~input_o\ & (\inst9~5\ & VCC)) # (!\B4~input_o\ & (!\inst9~5\)))) # (!\A4~input_o\ & ((\B4~input_o\ & (!\inst9~5\)) # (!\B4~input_o\ & ((\inst9~5\) # (GND)))))
-- \inst9~7\ = CARRY((\A4~input_o\ & (!\B4~input_o\ & !\inst9~5\)) # (!\A4~input_o\ & ((!\inst9~5\) # (!\B4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A4~input_o\,
	datab => \B4~input_o\,
	datad => VCC,
	cin => \inst9~5\,
	combout => \inst9~6_combout\,
	cout => \inst9~7\);

-- Location: LCCOMB_X23_Y1_N8
\inst9~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9~8_combout\ = !\inst9~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst9~7\,
	combout => \inst9~8_combout\);

ww_C1 <= \C1~output_o\;

ww_C2 <= \C2~output_o\;

ww_C3 <= \C3~output_o\;

ww_C4 <= \C4~output_o\;

ww_Ci1 <= \Ci1~output_o\;
END structure;


