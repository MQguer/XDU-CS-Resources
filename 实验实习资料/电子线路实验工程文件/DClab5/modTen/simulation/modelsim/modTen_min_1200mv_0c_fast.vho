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

-- DATE "01/25/2014 20:48:49"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	modTen IS
    PORT (
	Q3 : OUT std_logic;
	CP : IN std_logic;
	ClearAll : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic
	);
END modTen;

-- Design Ports Information
-- Q3	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CP	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ClearAll	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF modTen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_CP : std_logic;
SIGNAL ww_ClearAll : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL \CP~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \CP~input_o\ : std_logic;
SIGNAL \CP~inputclkctrl_outclk\ : std_logic;
SIGNAL \D0|9~0_combout\ : std_logic;
SIGNAL \ClearAll~input_o\ : std_logic;
SIGNAL \D1|9~0_combout\ : std_logic;
SIGNAL \D1|9~q\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \inst15~combout\ : std_logic;
SIGNAL \D0|9~q\ : std_logic;
SIGNAL \D2|9~0_combout\ : std_logic;
SIGNAL \D2|9~q\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \ALT_INV_inst15~combout\ : std_logic;

BEGIN

Q3 <= ww_Q3;
ww_CP <= CP;
ww_ClearAll <= ClearAll;
Q0 <= ww_Q0;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CP~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CP~input_o\);
\ALT_INV_inst15~combout\ <= NOT \inst15~combout\;

-- Location: IOOBUF_X12_Y0_N9
\Q3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~q\,
	devoe => ww_devoe,
	o => \Q3~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\Q0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D0|9~q\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\Q1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|9~q\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\Q2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|9~q\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\CP~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CP,
	o => \CP~input_o\);

-- Location: CLKCTRL_G17
\CP~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CP~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CP~inputclkctrl_outclk\);

-- Location: LCCOMB_X10_Y1_N18
\D0|9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0|9~0_combout\ = !\D0|9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D0|9~q\,
	combout => \D0|9~0_combout\);

-- Location: IOIBUF_X10_Y0_N8
\ClearAll~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ClearAll,
	o => \ClearAll~input_o\);

-- Location: LCCOMB_X10_Y1_N28
\D1|9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1|9~0_combout\ = \D1|9~q\ $ (\D0|9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D1|9~q\,
	datad => \D0|9~q\,
	combout => \D1|9~0_combout\);

-- Location: FF_X10_Y1_N29
\D1|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputclkctrl_outclk\,
	d => \D1|9~0_combout\,
	clrn => \ALT_INV_inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|9~q\);

-- Location: LCCOMB_X10_Y1_N12
\inst15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = (!\D2|9~q\ & !\D0|9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D2|9~q\,
	datad => \D0|9~q\,
	combout => \inst15~0_combout\);

-- Location: LCCOMB_X10_Y1_N14
inst15 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15~combout\ = ((\D1|9~q\ & (\inst11~q\ & \inst15~0_combout\))) # (!\ClearAll~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClearAll~input_o\,
	datab => \D1|9~q\,
	datac => \inst11~q\,
	datad => \inst15~0_combout\,
	combout => \inst15~combout\);

-- Location: FF_X10_Y1_N19
\D0|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputclkctrl_outclk\,
	d => \D0|9~0_combout\,
	clrn => \ALT_INV_inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D0|9~q\);

-- Location: LCCOMB_X10_Y1_N30
\D2|9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2|9~0_combout\ = \D2|9~q\ $ (((\D0|9~q\ & \D1|9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D0|9~q\,
	datac => \D2|9~q\,
	datad => \D1|9~q\,
	combout => \D2|9~0_combout\);

-- Location: FF_X10_Y1_N31
\D2|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputclkctrl_outclk\,
	d => \D2|9~0_combout\,
	clrn => \ALT_INV_inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|9~q\);

-- Location: LCCOMB_X10_Y1_N8
\inst11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = \inst11~q\ $ (((\D2|9~q\ & (\D0|9~q\ & \D1|9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|9~q\,
	datab => \D0|9~q\,
	datac => \inst11~q\,
	datad => \D1|9~q\,
	combout => \inst11~0_combout\);

-- Location: FF_X10_Y1_N9
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputclkctrl_outclk\,
	d => \inst11~0_combout\,
	clrn => \ALT_INV_inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

ww_Q3 <= \Q3~output_o\;

ww_Q0 <= \Q0~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;
END structure;


