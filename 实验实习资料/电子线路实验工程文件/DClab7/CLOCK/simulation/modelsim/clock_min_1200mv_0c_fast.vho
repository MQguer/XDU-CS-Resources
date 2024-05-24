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

-- DATE "04/13/2024 12:32:35"

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

ENTITY 	clock IS
    PORT (
	pin_name2 : OUT std_logic;
	pin_name9 : IN std_logic;
	pin_name1 : IN std_logic;
	pin_name3 : OUT std_logic;
	pin_name4 : OUT std_logic;
	pin_name5 : OUT std_logic;
	pin_name6 : OUT std_logic;
	pin_name7 : OUT std_logic;
	pin_name8 : OUT std_logic;
	pin_name11 : OUT std_logic;
	pin_name12 : OUT std_logic;
	pin_name13 : OUT std_logic;
	pin_name14 : OUT std_logic;
	pin_name15 : OUT std_logic;
	pin_name16 : OUT std_logic
	);
END clock;

-- Design Ports Information
-- pin_name2	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name3	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name4	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name5	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name6	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name7	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name8	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name11	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name12	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name13	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name14	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name15	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name16	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name9	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_name2 : std_logic;
SIGNAL ww_pin_name9 : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_pin_name3 : std_logic;
SIGNAL ww_pin_name4 : std_logic;
SIGNAL ww_pin_name5 : std_logic;
SIGNAL ww_pin_name6 : std_logic;
SIGNAL ww_pin_name7 : std_logic;
SIGNAL ww_pin_name8 : std_logic;
SIGNAL ww_pin_name11 : std_logic;
SIGNAL ww_pin_name12 : std_logic;
SIGNAL ww_pin_name13 : std_logic;
SIGNAL ww_pin_name14 : std_logic;
SIGNAL ww_pin_name15 : std_logic;
SIGNAL ww_pin_name16 : std_logic;
SIGNAL \inst14|45~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pin_name1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pin_name2~output_o\ : std_logic;
SIGNAL \pin_name3~output_o\ : std_logic;
SIGNAL \pin_name4~output_o\ : std_logic;
SIGNAL \pin_name5~output_o\ : std_logic;
SIGNAL \pin_name6~output_o\ : std_logic;
SIGNAL \pin_name7~output_o\ : std_logic;
SIGNAL \pin_name8~output_o\ : std_logic;
SIGNAL \pin_name11~output_o\ : std_logic;
SIGNAL \pin_name12~output_o\ : std_logic;
SIGNAL \pin_name13~output_o\ : std_logic;
SIGNAL \pin_name14~output_o\ : std_logic;
SIGNAL \pin_name15~output_o\ : std_logic;
SIGNAL \pin_name16~output_o\ : std_logic;
SIGNAL \pin_name9~input_o\ : std_logic;
SIGNAL \inst34|sub|9~0_combout\ : std_logic;
SIGNAL \inst38|16~2_combout\ : std_logic;
SIGNAL \inst34|sub|9~q\ : std_logic;
SIGNAL \inst38|15~combout\ : std_logic;
SIGNAL \inst34|sub|87~q\ : std_logic;
SIGNAL \pin_name1~input_o\ : std_logic;
SIGNAL \pin_name1~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|6~0_combout\ : std_logic;
SIGNAL \inst|6~feeder_combout\ : std_logic;
SIGNAL \inst|6~q\ : std_logic;
SIGNAL \inst|7~0_combout\ : std_logic;
SIGNAL \inst|7~q\ : std_logic;
SIGNAL \inst|8~0_combout\ : std_logic;
SIGNAL \inst|8~q\ : std_logic;
SIGNAL \inst|13~combout\ : std_logic;
SIGNAL \inst|9~q\ : std_logic;
SIGNAL \inst|45~combout\ : std_logic;
SIGNAL \inst10|6~0_combout\ : std_logic;
SIGNAL \inst10|7~0_combout\ : std_logic;
SIGNAL \inst10|7~feeder_combout\ : std_logic;
SIGNAL \inst10|7~q\ : std_logic;
SIGNAL \inst10|8~0_combout\ : std_logic;
SIGNAL \inst10|8~q\ : std_logic;
SIGNAL \inst10|13~0_combout\ : std_logic;
SIGNAL \inst10|6~q\ : std_logic;
SIGNAL \inst12~combout\ : std_logic;
SIGNAL \inst12~clkctrl_outclk\ : std_logic;
SIGNAL \inst14|6~0_combout\ : std_logic;
SIGNAL \inst14|6~feeder_combout\ : std_logic;
SIGNAL \inst14|6~q\ : std_logic;
SIGNAL \inst14|13~combout\ : std_logic;
SIGNAL \inst14|9~q\ : std_logic;
SIGNAL \inst14|7~0_combout\ : std_logic;
SIGNAL \inst14|7~q\ : std_logic;
SIGNAL \inst14|8~0_combout\ : std_logic;
SIGNAL \inst14|8~q\ : std_logic;
SIGNAL \inst23|sub|78~0_combout\ : std_logic;
SIGNAL \inst14|45~combout\ : std_logic;
SIGNAL \inst14|45~clkctrl_outclk\ : std_logic;
SIGNAL \inst16|6~0_combout\ : std_logic;
SIGNAL \inst16|7~0_combout\ : std_logic;
SIGNAL \inst16|7~q\ : std_logic;
SIGNAL \inst16|13~0_combout\ : std_logic;
SIGNAL \inst16|6~q\ : std_logic;
SIGNAL \inst16|8~0_combout\ : std_logic;
SIGNAL \inst16|8~q\ : std_logic;
SIGNAL \inst23|sub|78~1_combout\ : std_logic;
SIGNAL \inst25|sub|78~0_combout\ : std_logic;
SIGNAL \inst22|sub|78~0_combout\ : std_logic;
SIGNAL \inst22|sub|78~1_combout\ : std_logic;
SIGNAL \inst24|sub|78~0_combout\ : std_logic;
SIGNAL \inst24|sub|78~1_combout\ : std_logic;
SIGNAL \inst26|69~0_combout\ : std_logic;
SIGNAL \inst26|68~0_combout\ : std_logic;
SIGNAL \inst26|70~combout\ : std_logic;
SIGNAL \inst26|67~0_combout\ : std_logic;
SIGNAL \inst26|71~combout\ : std_logic;
SIGNAL \inst26|66~0_combout\ : std_logic;
SIGNAL \inst26|72~combout\ : std_logic;
SIGNAL \inst38|16~0_combout\ : std_logic;
SIGNAL \inst38|16~1_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_13~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_13~0_combout\ : std_logic;
SIGNAL \inst38|ALT_INV_16~2_combout\ : std_logic;
SIGNAL \inst38|ALT_INV_15~combout\ : std_logic;

BEGIN

pin_name2 <= ww_pin_name2;
ww_pin_name9 <= pin_name9;
ww_pin_name1 <= pin_name1;
pin_name3 <= ww_pin_name3;
pin_name4 <= ww_pin_name4;
pin_name5 <= ww_pin_name5;
pin_name6 <= ww_pin_name6;
pin_name7 <= ww_pin_name7;
pin_name8 <= ww_pin_name8;
pin_name11 <= ww_pin_name11;
pin_name12 <= ww_pin_name12;
pin_name13 <= ww_pin_name13;
pin_name14 <= ww_pin_name14;
pin_name15 <= ww_pin_name15;
pin_name16 <= ww_pin_name16;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst14|45~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst14|45~combout\);

\inst12~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst12~combout\);

\pin_name1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pin_name1~input_o\);
\inst16|ALT_INV_13~0_combout\ <= NOT \inst16|13~0_combout\;
\inst10|ALT_INV_13~0_combout\ <= NOT \inst10|13~0_combout\;
\inst38|ALT_INV_16~2_combout\ <= NOT \inst38|16~2_combout\;
\inst38|ALT_INV_15~combout\ <= NOT \inst38|15~combout\;

-- Location: IOOBUF_X18_Y0_N16
\pin_name2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|69~0_combout\,
	devoe => ww_devoe,
	o => \pin_name2~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\pin_name3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|68~0_combout\,
	devoe => ww_devoe,
	o => \pin_name3~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\pin_name4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|70~combout\,
	devoe => ww_devoe,
	o => \pin_name4~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\pin_name5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|67~0_combout\,
	devoe => ww_devoe,
	o => \pin_name5~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\pin_name6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|71~combout\,
	devoe => ww_devoe,
	o => \pin_name6~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\pin_name7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|66~0_combout\,
	devoe => ww_devoe,
	o => \pin_name7~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\pin_name8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|72~combout\,
	devoe => ww_devoe,
	o => \pin_name8~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\pin_name11~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst38|ALT_INV_15~combout\,
	devoe => ww_devoe,
	o => \pin_name11~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\pin_name12~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst38|16~0_combout\,
	devoe => ww_devoe,
	o => \pin_name12~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\pin_name13~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst38|16~1_combout\,
	devoe => ww_devoe,
	o => \pin_name13~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\pin_name14~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst38|16~2_combout\,
	devoe => ww_devoe,
	o => \pin_name14~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\pin_name15~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pin_name15~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\pin_name16~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pin_name16~output_o\);

-- Location: IOIBUF_X30_Y0_N1
\pin_name9~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name9,
	o => \pin_name9~input_o\);

-- Location: LCCOMB_X29_Y1_N22
\inst34|sub|9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|sub|9~0_combout\ = !\inst34|sub|9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst34|sub|9~q\,
	combout => \inst34|sub|9~0_combout\);

-- Location: LCCOMB_X29_Y1_N24
\inst38|16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|16~2_combout\ = (\inst34|sub|9~q\ & \inst34|sub|87~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst34|sub|9~q\,
	datad => \inst34|sub|87~q\,
	combout => \inst38|16~2_combout\);

-- Location: FF_X29_Y1_N23
\inst34|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name9~input_o\,
	d => \inst34|sub|9~0_combout\,
	clrn => \inst38|ALT_INV_16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|sub|9~q\);

-- Location: LCCOMB_X29_Y1_N4
\inst38|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|15~combout\ = (\inst34|sub|9~q\) # (\inst34|sub|87~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst34|sub|9~q\,
	datad => \inst34|sub|87~q\,
	combout => \inst38|15~combout\);

-- Location: FF_X29_Y1_N29
\inst34|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name9~input_o\,
	asdata => \inst38|15~combout\,
	clrn => \inst38|ALT_INV_16~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|sub|87~q\);

-- Location: IOIBUF_X30_Y0_N8
\pin_name1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name1,
	o => \pin_name1~input_o\);

-- Location: CLKCTRL_G9
\pin_name1~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pin_name1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pin_name1~inputclkctrl_outclk\);

-- Location: LCCOMB_X33_Y11_N4
\inst|6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|6~0_combout\ = !\inst|6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|6~q\,
	combout => \inst|6~0_combout\);

-- Location: LCCOMB_X33_Y11_N18
\inst|6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|6~feeder_combout\ = \inst|6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|6~0_combout\,
	combout => \inst|6~feeder_combout\);

-- Location: FF_X33_Y11_N19
\inst|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|6~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|6~q\);

-- Location: LCCOMB_X33_Y11_N28
\inst|7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|7~0_combout\ = \inst|7~q\ $ (((\inst|6~q\ & !\inst|9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|6~q\,
	datac => \inst|7~q\,
	datad => \inst|9~q\,
	combout => \inst|7~0_combout\);

-- Location: FF_X33_Y11_N29
\inst|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|7~q\);

-- Location: LCCOMB_X33_Y11_N6
\inst|8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|8~0_combout\ = \inst|8~q\ $ (((\inst|6~q\ & \inst|7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|6~q\,
	datac => \inst|8~q\,
	datad => \inst|7~q\,
	combout => \inst|8~0_combout\);

-- Location: FF_X33_Y11_N7
\inst|8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~inputclkctrl_outclk\,
	d => \inst|8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|8~q\);

-- Location: LCCOMB_X32_Y11_N14
\inst|13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|13~combout\ = (\inst|6~q\ & (\inst|7~q\ & ((\inst|8~q\)))) # (!\inst|6~q\ & (((\inst|9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|6~q\,
	datab => \inst|7~q\,
	datac => \inst|9~q\,
	datad => \inst|8~q\,
	combout => \inst|13~combout\);

-- Location: FF_X32_Y11_N15
\inst|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_name1~input_o\,
	d => \inst|13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|9~q\);

-- Location: LCCOMB_X33_Y11_N22
\inst|45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|45~combout\ = LCELL((!\inst|6~q\) # (!\inst|9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|9~q\,
	datad => \inst|6~q\,
	combout => \inst|45~combout\);

-- Location: LCCOMB_X33_Y11_N2
\inst10|6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|6~0_combout\ = !\inst10|6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|6~q\,
	combout => \inst10|6~0_combout\);

-- Location: LCCOMB_X33_Y11_N10
\inst10|7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|7~0_combout\ = \inst10|6~q\ $ (\inst10|7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|6~q\,
	datad => \inst10|7~q\,
	combout => \inst10|7~0_combout\);

-- Location: LCCOMB_X33_Y11_N24
\inst10|7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|7~feeder_combout\ = \inst10|7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|7~0_combout\,
	combout => \inst10|7~feeder_combout\);

-- Location: FF_X33_Y11_N25
\inst10|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|45~combout\,
	d => \inst10|7~feeder_combout\,
	clrn => \inst10|ALT_INV_13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|7~q\);

-- Location: LCCOMB_X33_Y11_N30
\inst10|8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|8~0_combout\ = (\inst10|8~q\) # ((\inst10|7~q\ & \inst10|6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|7~q\,
	datac => \inst10|8~q\,
	datad => \inst10|6~q\,
	combout => \inst10|8~0_combout\);

-- Location: FF_X33_Y11_N31
\inst10|8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|45~combout\,
	d => \inst10|8~0_combout\,
	clrn => \inst10|ALT_INV_13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|8~q\);

-- Location: LCCOMB_X33_Y11_N14
\inst10|13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|13~0_combout\ = (\inst10|8~q\ & \inst10|7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|8~q\,
	datad => \inst10|7~q\,
	combout => \inst10|13~0_combout\);

-- Location: FF_X33_Y11_N5
\inst10|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|45~combout\,
	asdata => \inst10|6~0_combout\,
	clrn => \inst10|ALT_INV_13~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|6~q\);

-- Location: LCCOMB_X33_Y11_N16
inst12 : cycloneive_lcell_comb
-- Equation(s):
-- \inst12~combout\ = LCELL((!\inst10|6~q\ & (!\inst10|8~q\ & !\inst10|7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|6~q\,
	datac => \inst10|8~q\,
	datad => \inst10|7~q\,
	combout => \inst12~combout\);

-- Location: CLKCTRL_G7
\inst12~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst12~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst12~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y12_N24
\inst14|6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|6~0_combout\ = !\inst14|6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|6~q\,
	combout => \inst14|6~0_combout\);

-- Location: LCCOMB_X33_Y12_N18
\inst14|6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|6~feeder_combout\ = \inst14|6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|6~0_combout\,
	combout => \inst14|6~feeder_combout\);

-- Location: FF_X33_Y12_N19
\inst14|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12~clkctrl_outclk\,
	d => \inst14|6~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|6~q\);

-- Location: LCCOMB_X33_Y12_N22
\inst14|13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|13~combout\ = (\inst14|6~q\ & (\inst14|7~q\ & ((\inst14|8~q\)))) # (!\inst14|6~q\ & (((\inst14|9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|6~q\,
	datab => \inst14|7~q\,
	datac => \inst14|9~q\,
	datad => \inst14|8~q\,
	combout => \inst14|13~combout\);

-- Location: FF_X33_Y12_N23
\inst14|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12~combout\,
	d => \inst14|13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|9~q\);

-- Location: LCCOMB_X33_Y12_N20
\inst14|7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|7~0_combout\ = \inst14|7~q\ $ (((!\inst14|9~q\ & \inst14|6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|9~q\,
	datab => \inst14|6~q\,
	datac => \inst14|7~q\,
	combout => \inst14|7~0_combout\);

-- Location: FF_X33_Y12_N21
\inst14|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12~clkctrl_outclk\,
	d => \inst14|7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|7~q\);

-- Location: LCCOMB_X33_Y12_N16
\inst14|8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|8~0_combout\ = \inst14|8~q\ $ (((\inst14|6~q\ & \inst14|7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|6~q\,
	datac => \inst14|8~q\,
	datad => \inst14|7~q\,
	combout => \inst14|8~0_combout\);

-- Location: FF_X33_Y12_N17
\inst14|8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12~clkctrl_outclk\,
	d => \inst14|8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|8~q\);

-- Location: LCCOMB_X32_Y11_N30
\inst23|sub|78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|sub|78~0_combout\ = (\inst34|sub|87~q\ & ((\inst14|8~q\) # ((\inst34|sub|9~q\)))) # (!\inst34|sub|87~q\ & (((!\inst34|sub|9~q\ & \inst|8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|sub|87~q\,
	datab => \inst14|8~q\,
	datac => \inst34|sub|9~q\,
	datad => \inst|8~q\,
	combout => \inst23|sub|78~0_combout\);

-- Location: LCCOMB_X33_Y12_N28
\inst14|45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|45~combout\ = LCELL((!\inst14|6~q\) # (!\inst14|9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|9~q\,
	datad => \inst14|6~q\,
	combout => \inst14|45~combout\);

-- Location: CLKCTRL_G5
\inst14|45~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst14|45~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14|45~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y11_N18
\inst16|6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|6~0_combout\ = !\inst16|6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|6~q\,
	combout => \inst16|6~0_combout\);

-- Location: LCCOMB_X32_Y11_N4
\inst16|7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|7~0_combout\ = \inst16|7~q\ $ (\inst16|6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|7~q\,
	datad => \inst16|6~q\,
	combout => \inst16|7~0_combout\);

-- Location: FF_X32_Y11_N5
\inst16|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|45~clkctrl_outclk\,
	d => \inst16|7~0_combout\,
	clrn => \inst16|ALT_INV_13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|7~q\);

-- Location: LCCOMB_X32_Y11_N8
\inst16|13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|13~0_combout\ = (\inst16|7~q\ & \inst16|8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|7~q\,
	datad => \inst16|8~q\,
	combout => \inst16|13~0_combout\);

-- Location: FF_X32_Y11_N19
\inst16|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|45~clkctrl_outclk\,
	d => \inst16|6~0_combout\,
	clrn => \inst16|ALT_INV_13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|6~q\);

-- Location: LCCOMB_X32_Y11_N6
\inst16|8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|8~0_combout\ = (\inst16|8~q\) # ((\inst16|6~q\ & \inst16|7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|6~q\,
	datac => \inst16|8~q\,
	datad => \inst16|7~q\,
	combout => \inst16|8~0_combout\);

-- Location: FF_X32_Y11_N7
\inst16|8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|45~clkctrl_outclk\,
	d => \inst16|8~0_combout\,
	clrn => \inst16|ALT_INV_13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|8~q\);

-- Location: LCCOMB_X32_Y11_N20
\inst23|sub|78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|sub|78~1_combout\ = (\inst23|sub|78~0_combout\ & (((\inst16|8~q\) # (!\inst34|sub|9~q\)))) # (!\inst23|sub|78~0_combout\ & (\inst10|8~q\ & (\inst34|sub|9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|sub|78~0_combout\,
	datab => \inst10|8~q\,
	datac => \inst34|sub|9~q\,
	datad => \inst16|8~q\,
	combout => \inst23|sub|78~1_combout\);

-- Location: LCCOMB_X32_Y11_N26
\inst25|sub|78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|sub|78~0_combout\ = (!\inst34|sub|9~q\ & ((\inst34|sub|87~q\ & ((\inst14|9~q\))) # (!\inst34|sub|87~q\ & (\inst|9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|sub|87~q\,
	datab => \inst34|sub|9~q\,
	datac => \inst|9~q\,
	datad => \inst14|9~q\,
	combout => \inst25|sub|78~0_combout\);

-- Location: LCCOMB_X32_Y11_N28
\inst22|sub|78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|sub|78~0_combout\ = (\inst34|sub|87~q\ & (\inst34|sub|9~q\)) # (!\inst34|sub|87~q\ & ((\inst34|sub|9~q\ & ((\inst10|6~q\))) # (!\inst34|sub|9~q\ & (\inst|6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|sub|87~q\,
	datab => \inst34|sub|9~q\,
	datac => \inst|6~q\,
	datad => \inst10|6~q\,
	combout => \inst22|sub|78~0_combout\);

-- Location: LCCOMB_X32_Y11_N12
\inst22|sub|78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|sub|78~1_combout\ = (\inst34|sub|87~q\ & ((\inst22|sub|78~0_combout\ & ((\inst16|6~q\))) # (!\inst22|sub|78~0_combout\ & (\inst14|6~q\)))) # (!\inst34|sub|87~q\ & (((\inst22|sub|78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|sub|87~q\,
	datab => \inst14|6~q\,
	datac => \inst16|6~q\,
	datad => \inst22|sub|78~0_combout\,
	combout => \inst22|sub|78~1_combout\);

-- Location: LCCOMB_X32_Y11_N22
\inst24|sub|78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|sub|78~0_combout\ = (\inst34|sub|87~q\ & (((\inst34|sub|9~q\)))) # (!\inst34|sub|87~q\ & ((\inst34|sub|9~q\ & (\inst10|7~q\)) # (!\inst34|sub|9~q\ & ((\inst|7~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|sub|87~q\,
	datab => \inst10|7~q\,
	datac => \inst34|sub|9~q\,
	datad => \inst|7~q\,
	combout => \inst24|sub|78~0_combout\);

-- Location: LCCOMB_X32_Y11_N24
\inst24|sub|78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|sub|78~1_combout\ = (\inst24|sub|78~0_combout\ & (((\inst16|7~q\) # (!\inst34|sub|87~q\)))) # (!\inst24|sub|78~0_combout\ & (\inst14|7~q\ & (\inst34|sub|87~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|sub|78~0_combout\,
	datab => \inst14|7~q\,
	datac => \inst34|sub|87~q\,
	datad => \inst16|7~q\,
	combout => \inst24|sub|78~1_combout\);

-- Location: LCCOMB_X24_Y4_N4
\inst26|69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|69~0_combout\ = (\inst23|sub|78~1_combout\ & (((\inst25|sub|78~0_combout\ & \inst24|sub|78~1_combout\)) # (!\inst22|sub|78~1_combout\))) # (!\inst23|sub|78~1_combout\ & ((\inst25|sub|78~0_combout\ & ((\inst24|sub|78~1_combout\))) # 
-- (!\inst25|sub|78~0_combout\ & (\inst22|sub|78~1_combout\ & !\inst24|sub|78~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|sub|78~1_combout\,
	datab => \inst25|sub|78~0_combout\,
	datac => \inst22|sub|78~1_combout\,
	datad => \inst24|sub|78~1_combout\,
	combout => \inst26|69~0_combout\);

-- Location: LCCOMB_X24_Y4_N6
\inst26|68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|68~0_combout\ = (\inst24|sub|78~1_combout\ & ((\inst25|sub|78~0_combout\) # ((\inst23|sub|78~1_combout\ & !\inst22|sub|78~1_combout\)))) # (!\inst24|sub|78~1_combout\ & (\inst23|sub|78~1_combout\ & ((\inst22|sub|78~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|sub|78~1_combout\,
	datab => \inst25|sub|78~0_combout\,
	datac => \inst22|sub|78~1_combout\,
	datad => \inst24|sub|78~1_combout\,
	combout => \inst26|68~0_combout\);

-- Location: LCCOMB_X24_Y4_N28
\inst26|70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|70~combout\ = (\inst23|sub|78~1_combout\ & (\inst25|sub|78~0_combout\)) # (!\inst23|sub|78~1_combout\ & (((!\inst22|sub|78~1_combout\ & \inst24|sub|78~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|sub|78~1_combout\,
	datab => \inst25|sub|78~0_combout\,
	datac => \inst22|sub|78~1_combout\,
	datad => \inst24|sub|78~1_combout\,
	combout => \inst26|70~combout\);

-- Location: LCCOMB_X24_Y4_N14
\inst26|67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|67~0_combout\ = (\inst23|sub|78~1_combout\ & (\inst22|sub|78~1_combout\ $ (!\inst24|sub|78~1_combout\))) # (!\inst23|sub|78~1_combout\ & (\inst22|sub|78~1_combout\ & !\inst24|sub|78~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|sub|78~1_combout\,
	datac => \inst22|sub|78~1_combout\,
	datad => \inst24|sub|78~1_combout\,
	combout => \inst26|67~0_combout\);

-- Location: LCCOMB_X24_Y4_N20
\inst26|71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|71~combout\ = (\inst22|sub|78~1_combout\) # ((\inst23|sub|78~1_combout\ & !\inst24|sub|78~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|sub|78~1_combout\,
	datac => \inst22|sub|78~1_combout\,
	datad => \inst24|sub|78~1_combout\,
	combout => \inst26|71~combout\);

-- Location: LCCOMB_X24_Y4_N22
\inst26|66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|66~0_combout\ = (\inst23|sub|78~1_combout\ & (((\inst22|sub|78~1_combout\ & \inst24|sub|78~1_combout\)))) # (!\inst23|sub|78~1_combout\ & ((\inst24|sub|78~1_combout\) # ((!\inst25|sub|78~0_combout\ & \inst22|sub|78~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|sub|78~1_combout\,
	datab => \inst25|sub|78~0_combout\,
	datac => \inst22|sub|78~1_combout\,
	datad => \inst24|sub|78~1_combout\,
	combout => \inst26|66~0_combout\);

-- Location: LCCOMB_X24_Y4_N24
\inst26|72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|72~combout\ = (\inst23|sub|78~1_combout\ & (((\inst22|sub|78~1_combout\ & \inst24|sub|78~1_combout\)))) # (!\inst23|sub|78~1_combout\ & (!\inst25|sub|78~0_combout\ & ((!\inst24|sub|78~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|sub|78~1_combout\,
	datab => \inst25|sub|78~0_combout\,
	datac => \inst22|sub|78~1_combout\,
	datad => \inst24|sub|78~1_combout\,
	combout => \inst26|72~combout\);

-- Location: LCCOMB_X29_Y1_N28
\inst38|16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|16~0_combout\ = (!\inst34|sub|87~q\ & \inst34|sub|9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst34|sub|87~q\,
	datad => \inst34|sub|9~q\,
	combout => \inst38|16~0_combout\);

-- Location: LCCOMB_X29_Y1_N6
\inst38|16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|16~1_combout\ = (\inst34|sub|87~q\ & !\inst34|sub|9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst34|sub|87~q\,
	datad => \inst34|sub|9~q\,
	combout => \inst38|16~1_combout\);

ww_pin_name2 <= \pin_name2~output_o\;

ww_pin_name3 <= \pin_name3~output_o\;

ww_pin_name4 <= \pin_name4~output_o\;

ww_pin_name5 <= \pin_name5~output_o\;

ww_pin_name6 <= \pin_name6~output_o\;

ww_pin_name7 <= \pin_name7~output_o\;

ww_pin_name8 <= \pin_name8~output_o\;

ww_pin_name11 <= \pin_name11~output_o\;

ww_pin_name12 <= \pin_name12~output_o\;

ww_pin_name13 <= \pin_name13~output_o\;

ww_pin_name14 <= \pin_name14~output_o\;

ww_pin_name15 <= \pin_name15~output_o\;

ww_pin_name16 <= \pin_name16~output_o\;
END structure;


