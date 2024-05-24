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

-- DATE "01/04/2014 20:41:05"

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

ENTITY 	fourB IS
    PORT (
	s1 : OUT std_logic;
	b4 : IN std_logic;
	c0 : IN std_logic;
	a1 : IN std_logic;
	a2 : IN std_logic;
	b1 : IN std_logic;
	b2 : IN std_logic;
	a3 : IN std_logic;
	b3 : IN std_logic;
	a4 : IN std_logic;
	s2 : OUT std_logic;
	s3 : OUT std_logic;
	s4 : OUT std_logic;
	c4 : OUT std_logic
	);
END fourB;

-- Design Ports Information
-- s1	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c4	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a4	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fourB IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_b4 : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_a4 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s4 : std_logic;
SIGNAL ww_c4 : std_logic;
SIGNAL \s1~output_o\ : std_logic;
SIGNAL \s2~output_o\ : std_logic;
SIGNAL \s3~output_o\ : std_logic;
SIGNAL \s4~output_o\ : std_logic;
SIGNAL \c4~output_o\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \c0~input_o\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \inst|42~0_combout\ : std_logic;
SIGNAL \inst|54~0_combout\ : std_logic;
SIGNAL \inst|18~0_combout\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \inst|43~combout\ : std_logic;
SIGNAL \inst|20~0_combout\ : std_logic;
SIGNAL \inst|24~combout\ : std_logic;
SIGNAL \inst|51~0_combout\ : std_logic;
SIGNAL \b3~input_o\ : std_logic;
SIGNAL \a3~input_o\ : std_logic;
SIGNAL \inst|44~combout\ : std_logic;
SIGNAL \a4~input_o\ : std_logic;
SIGNAL \b4~input_o\ : std_logic;
SIGNAL \inst|45~0_combout\ : std_logic;
SIGNAL \inst|45~1_combout\ : std_logic;
SIGNAL \inst|45~2_combout\ : std_logic;
SIGNAL \inst|2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_44~combout\ : std_logic;
SIGNAL \inst|ALT_INV_43~combout\ : std_logic;

BEGIN

s1 <= ww_s1;
ww_b4 <= b4;
ww_c0 <= c0;
ww_a1 <= a1;
ww_a2 <= a2;
ww_b1 <= b1;
ww_b2 <= b2;
ww_a3 <= a3;
ww_b3 <= b3;
ww_a4 <= a4;
s2 <= ww_s2;
s3 <= ww_s3;
s4 <= ww_s4;
c4 <= ww_c4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_44~combout\ <= NOT \inst|44~combout\;
\inst|ALT_INV_43~combout\ <= NOT \inst|43~combout\;

-- Location: IOOBUF_X14_Y0_N9
\s1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|42~0_combout\,
	devoe => ww_devoe,
	o => \s1~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\s2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_43~combout\,
	devoe => ww_devoe,
	o => \s2~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\s3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_44~combout\,
	devoe => ww_devoe,
	o => \s3~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\s4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|45~2_combout\,
	devoe => ww_devoe,
	o => \s4~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\c4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|2~0_combout\,
	devoe => ww_devoe,
	o => \c4~output_o\);

-- Location: IOIBUF_X22_Y0_N1
\b1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\c0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0,
	o => \c0~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\a1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: LCCOMB_X14_Y1_N8
\inst|42~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|42~0_combout\ = \b1~input_o\ $ (\c0~input_o\ $ (\a1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~input_o\,
	datac => \c0~input_o\,
	datad => \a1~input_o\,
	combout => \inst|42~0_combout\);

-- Location: LCCOMB_X14_Y1_N10
\inst|54~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|54~0_combout\ = (!\b1~input_o\ & !\c0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~input_o\,
	datac => \c0~input_o\,
	combout => \inst|54~0_combout\);

-- Location: LCCOMB_X14_Y1_N28
\inst|18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|18~0_combout\ = (!\a1~input_o\ & ((!\c0~input_o\) # (!\b1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~input_o\,
	datac => \c0~input_o\,
	datad => \a1~input_o\,
	combout => \inst|18~0_combout\);

-- Location: IOIBUF_X14_Y0_N1
\a2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\b2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: LCCOMB_X14_Y1_N6
\inst|43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|43~combout\ = \a2~input_o\ $ (\b2~input_o\ $ (((\inst|54~0_combout\) # (\inst|18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|54~0_combout\,
	datab => \inst|18~0_combout\,
	datac => \a2~input_o\,
	datad => \b2~input_o\,
	combout => \inst|43~combout\);

-- Location: LCCOMB_X14_Y1_N24
\inst|20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|20~0_combout\ = (!\a2~input_o\ & !\b2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a2~input_o\,
	datad => \b2~input_o\,
	combout => \inst|20~0_combout\);

-- Location: LCCOMB_X14_Y1_N26
\inst|24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|24~combout\ = (\a2~input_o\ & \b2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a2~input_o\,
	datad => \b2~input_o\,
	combout => \inst|24~combout\);

-- Location: LCCOMB_X14_Y1_N12
\inst|51~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|51~0_combout\ = (\inst|20~0_combout\) # ((!\inst|24~combout\ & ((\inst|54~0_combout\) # (\inst|18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|54~0_combout\,
	datab => \inst|20~0_combout\,
	datac => \inst|24~combout\,
	datad => \inst|18~0_combout\,
	combout => \inst|51~0_combout\);

-- Location: IOIBUF_X8_Y0_N1
\b3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3,
	o => \b3~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\a3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3,
	o => \a3~input_o\);

-- Location: LCCOMB_X14_Y1_N22
\inst|44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|44~combout\ = \inst|51~0_combout\ $ (\b3~input_o\ $ (\a3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|51~0_combout\,
	datac => \b3~input_o\,
	datad => \a3~input_o\,
	combout => \inst|44~combout\);

-- Location: IOIBUF_X12_Y0_N8
\a4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a4,
	o => \a4~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\b4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b4,
	o => \b4~input_o\);

-- Location: LCCOMB_X14_Y1_N0
\inst|45~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|45~0_combout\ = (\inst|24~combout\) # ((\b1~input_o\ & ((\c0~input_o\) # (\a1~input_o\))) # (!\b1~input_o\ & (\c0~input_o\ & \a1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|24~combout\,
	datab => \b1~input_o\,
	datac => \c0~input_o\,
	datad => \a1~input_o\,
	combout => \inst|45~0_combout\);

-- Location: LCCOMB_X14_Y1_N18
\inst|45~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|45~1_combout\ = (\b3~input_o\ & ((\a3~input_o\) # ((!\inst|20~0_combout\ & \inst|45~0_combout\)))) # (!\b3~input_o\ & (!\inst|20~0_combout\ & (\inst|45~0_combout\ & \a3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|20~0_combout\,
	datab => \inst|45~0_combout\,
	datac => \b3~input_o\,
	datad => \a3~input_o\,
	combout => \inst|45~1_combout\);

-- Location: LCCOMB_X14_Y1_N20
\inst|45~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|45~2_combout\ = \a4~input_o\ $ (\b4~input_o\ $ (\inst|45~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4~input_o\,
	datab => \b4~input_o\,
	datad => \inst|45~1_combout\,
	combout => \inst|45~2_combout\);

-- Location: LCCOMB_X14_Y1_N30
\inst|2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|2~0_combout\ = (\a4~input_o\ & ((\b4~input_o\) # (\inst|45~1_combout\))) # (!\a4~input_o\ & (\b4~input_o\ & \inst|45~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4~input_o\,
	datab => \b4~input_o\,
	datad => \inst|45~1_combout\,
	combout => \inst|2~0_combout\);

ww_s1 <= \s1~output_o\;

ww_s2 <= \s2~output_o\;

ww_s3 <= \s3~output_o\;

ww_s4 <= \s4~output_o\;

ww_c4 <= \c4~output_o\;
END structure;


