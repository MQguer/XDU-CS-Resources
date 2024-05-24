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

-- DATE "02/01/2014 21:28:42"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test611 IS
    PORT (
	O1 : OUT std_logic;
	clk : IN std_logic;
	O2 : OUT std_logic;
	O3 : OUT std_logic;
	O4 : OUT std_logic;
	O5 : OUT std_logic;
	O6 : OUT std_logic;
	O7 : OUT std_logic;
	O8 : OUT std_logic;
	L1 : OUT std_logic;
	L2 : OUT std_logic;
	L3 : OUT std_logic;
	L4 : OUT std_logic;
	L5 : OUT std_logic;
	L6 : OUT std_logic;
	L7 : OUT std_logic;
	L8 : OUT std_logic
	);
END test611;

-- Design Ports Information
-- O1	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O2	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O3	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O4	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O5	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O6	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O7	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O8	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L1	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L2	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L3	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L4	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L5	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L6	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L7	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L8	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test611 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_O1 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_O2 : std_logic;
SIGNAL ww_O3 : std_logic;
SIGNAL ww_O4 : std_logic;
SIGNAL ww_O5 : std_logic;
SIGNAL ww_O6 : std_logic;
SIGNAL ww_O7 : std_logic;
SIGNAL ww_O8 : std_logic;
SIGNAL ww_L1 : std_logic;
SIGNAL ww_L2 : std_logic;
SIGNAL ww_L3 : std_logic;
SIGNAL ww_L4 : std_logic;
SIGNAL ww_L5 : std_logic;
SIGNAL ww_L6 : std_logic;
SIGNAL ww_L7 : std_logic;
SIGNAL ww_L8 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \O1~output_o\ : std_logic;
SIGNAL \O2~output_o\ : std_logic;
SIGNAL \O3~output_o\ : std_logic;
SIGNAL \O4~output_o\ : std_logic;
SIGNAL \O5~output_o\ : std_logic;
SIGNAL \O6~output_o\ : std_logic;
SIGNAL \O7~output_o\ : std_logic;
SIGNAL \O8~output_o\ : std_logic;
SIGNAL \L1~output_o\ : std_logic;
SIGNAL \L2~output_o\ : std_logic;
SIGNAL \L3~output_o\ : std_logic;
SIGNAL \L4~output_o\ : std_logic;
SIGNAL \L5~output_o\ : std_logic;
SIGNAL \L6~output_o\ : std_logic;
SIGNAL \L7~output_o\ : std_logic;
SIGNAL \L8~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst0|15~0_combout\ : std_logic;
SIGNAL \inst0|15~q\ : std_logic;
SIGNAL \inst0|14~0_combout\ : std_logic;
SIGNAL \inst0|14~q\ : std_logic;
SIGNAL \inst0|13~0_combout\ : std_logic;
SIGNAL \inst0|13~q\ : std_logic;
SIGNAL \inst2|sub|81~0_combout\ : std_logic;
SIGNAL \inst13|sub|81~combout\ : std_logic;
SIGNAL \inst15|sub|83~combout\ : std_logic;
SIGNAL \inst15|sub|83~0_combout\ : std_logic;
SIGNAL \inst12|sub|81~0_combout\ : std_logic;
SIGNAL \inst1|15~0_combout\ : std_logic;
SIGNAL \inst1|15~1_combout\ : std_logic;
SIGNAL \inst1|15~2_combout\ : std_logic;
SIGNAL \inst1|15~3_combout\ : std_logic;
SIGNAL \inst1|15~4_combout\ : std_logic;
SIGNAL \inst1|15~5_combout\ : std_logic;
SIGNAL \inst1|15~6_combout\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst15|sub|ALT_INV_83~combout\ : std_logic;
SIGNAL \inst13|sub|ALT_INV_81~combout\ : std_logic;
SIGNAL \inst2|sub|ALT_INV_81~0_combout\ : std_logic;

BEGIN

O1 <= ww_O1;
ww_clk <= clk;
O2 <= ww_O2;
O3 <= ww_O3;
O4 <= ww_O4;
O5 <= ww_O5;
O6 <= ww_O6;
O7 <= ww_O7;
O8 <= ww_O8;
L1 <= ww_L1;
L2 <= ww_L2;
L3 <= ww_L3;
L4 <= ww_L4;
L5 <= ww_L5;
L6 <= ww_L6;
L7 <= ww_L7;
L8 <= ww_L8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\inst15|sub|ALT_INV_83~combout\ <= NOT \inst15|sub|83~combout\;
\inst13|sub|ALT_INV_81~combout\ <= NOT \inst13|sub|81~combout\;
\inst2|sub|ALT_INV_81~0_combout\ <= NOT \inst2|sub|81~0_combout\;

-- Location: IOOBUF_X16_Y24_N23
\O1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sub|ALT_INV_81~0_combout\,
	devoe => ww_devoe,
	o => \O1~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\O2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|sub|ALT_INV_81~combout\,
	devoe => ww_devoe,
	o => \O2~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\O3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sub|ALT_INV_81~0_combout\,
	devoe => ww_devoe,
	o => \O3~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\O4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|sub|ALT_INV_83~combout\,
	devoe => ww_devoe,
	o => \O4~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\O5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|sub|83~0_combout\,
	devoe => ww_devoe,
	o => \O5~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\O6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|sub|81~0_combout\,
	devoe => ww_devoe,
	o => \O6~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\O7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0|15~q\,
	devoe => ww_devoe,
	o => \O7~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\O8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \O8~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\L1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|15~0_combout\,
	devoe => ww_devoe,
	o => \L1~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\L2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|15~1_combout\,
	devoe => ww_devoe,
	o => \L2~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\L3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|15~2_combout\,
	devoe => ww_devoe,
	o => \L3~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\L4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|15~3_combout\,
	devoe => ww_devoe,
	o => \L4~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\L5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|15~4_combout\,
	devoe => ww_devoe,
	o => \L5~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\L6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|15~5_combout\,
	devoe => ww_devoe,
	o => \L6~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\L7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|sub|83~combout\,
	devoe => ww_devoe,
	o => \L7~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\L8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|15~6_combout\,
	devoe => ww_devoe,
	o => \L8~output_o\);

-- Location: IOIBUF_X30_Y0_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X4_Y8_N18
\inst0|15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|15~0_combout\ = !\inst0|15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|15~q\,
	combout => \inst0|15~0_combout\);

-- Location: FF_X4_Y8_N19
\inst0|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|15~q\);

-- Location: LCCOMB_X4_Y8_N16
\inst0|14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|14~0_combout\ = \inst0|14~q\ $ (\inst0|15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|14~q\,
	datad => \inst0|15~q\,
	combout => \inst0|14~0_combout\);

-- Location: FF_X4_Y8_N17
\inst0|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|14~q\);

-- Location: LCCOMB_X4_Y8_N20
\inst0|13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst0|13~0_combout\ = \inst0|13~q\ $ (((\inst0|14~q\ & \inst0|15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst0|14~q\,
	datac => \inst0|13~q\,
	datad => \inst0|15~q\,
	combout => \inst0|13~0_combout\);

-- Location: FF_X4_Y8_N21
\inst0|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst0|13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0|13~q\);

-- Location: LCCOMB_X4_Y8_N6
\inst2|sub|81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sub|81~0_combout\ = (\inst0|15~q\ & (!\inst0|14~q\)) # (!\inst0|15~q\ & ((\inst0|13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|14~q\,
	datac => \inst0|15~q\,
	datad => \inst0|13~q\,
	combout => \inst2|sub|81~0_combout\);

-- Location: LCCOMB_X4_Y8_N12
\inst13|sub|81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|sub|81~combout\ = (!\inst0|13~q\) # (!\inst0|15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|15~q\,
	datad => \inst0|13~q\,
	combout => \inst13|sub|81~combout\);

-- Location: LCCOMB_X4_Y8_N10
\inst15|sub|83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|sub|83~combout\ = (\inst0|14~q\ & (!\inst0|15~q\ & \inst0|13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|14~q\,
	datac => \inst0|15~q\,
	datad => \inst0|13~q\,
	combout => \inst15|sub|83~combout\);

-- Location: LCCOMB_X4_Y8_N8
\inst15|sub|83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|sub|83~0_combout\ = (\inst0|14~q\ & \inst0|13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst0|14~q\,
	datad => \inst0|13~q\,
	combout => \inst15|sub|83~0_combout\);

-- Location: LCCOMB_X4_Y8_N2
\inst12|sub|81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|sub|81~0_combout\ = (\inst0|15~q\) # ((\inst0|14~q\ & \inst0|13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|14~q\,
	datac => \inst0|15~q\,
	datad => \inst0|13~q\,
	combout => \inst12|sub|81~0_combout\);

-- Location: LCCOMB_X4_Y8_N4
\inst1|15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|15~0_combout\ = (!\inst0|14~q\ & (!\inst0|15~q\ & !\inst0|13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|14~q\,
	datac => \inst0|15~q\,
	datad => \inst0|13~q\,
	combout => \inst1|15~0_combout\);

-- Location: LCCOMB_X4_Y8_N14
\inst1|15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|15~1_combout\ = (!\inst0|14~q\ & (\inst0|15~q\ & !\inst0|13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|14~q\,
	datac => \inst0|15~q\,
	datad => \inst0|13~q\,
	combout => \inst1|15~1_combout\);

-- Location: LCCOMB_X4_Y8_N0
\inst1|15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|15~2_combout\ = (\inst0|14~q\ & (!\inst0|15~q\ & !\inst0|13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|14~q\,
	datac => \inst0|15~q\,
	datad => \inst0|13~q\,
	combout => \inst1|15~2_combout\);

-- Location: LCCOMB_X4_Y8_N30
\inst1|15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|15~3_combout\ = (\inst0|14~q\ & (\inst0|15~q\ & !\inst0|13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|14~q\,
	datac => \inst0|15~q\,
	datad => \inst0|13~q\,
	combout => \inst1|15~3_combout\);

-- Location: LCCOMB_X4_Y8_N28
\inst1|15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|15~4_combout\ = (!\inst0|14~q\ & (!\inst0|15~q\ & \inst0|13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|14~q\,
	datac => \inst0|15~q\,
	datad => \inst0|13~q\,
	combout => \inst1|15~4_combout\);

-- Location: LCCOMB_X4_Y8_N26
\inst1|15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|15~5_combout\ = (!\inst0|14~q\ & (\inst0|15~q\ & \inst0|13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|14~q\,
	datac => \inst0|15~q\,
	datad => \inst0|13~q\,
	combout => \inst1|15~5_combout\);

-- Location: LCCOMB_X4_Y8_N24
\inst1|15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|15~6_combout\ = (\inst0|14~q\ & (\inst0|15~q\ & \inst0|13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst0|14~q\,
	datac => \inst0|15~q\,
	datad => \inst0|13~q\,
	combout => \inst1|15~6_combout\);

ww_O1 <= \O1~output_o\;

ww_O2 <= \O2~output_o\;

ww_O3 <= \O3~output_o\;

ww_O4 <= \O4~output_o\;

ww_O5 <= \O5~output_o\;

ww_O6 <= \O6~output_o\;

ww_O7 <= \O7~output_o\;

ww_O8 <= \O8~output_o\;

ww_L1 <= \L1~output_o\;

ww_L2 <= \L2~output_o\;

ww_L3 <= \L3~output_o\;

ww_L4 <= \L4~output_o\;

ww_L5 <= \L5~output_o\;

ww_L6 <= \L6~output_o\;

ww_L7 <= \L7~output_o\;

ww_L8 <= \L8~output_o\;
END structure;


