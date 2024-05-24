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

-- DATE "01/18/2014 21:29:46"

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

ENTITY 	fourBitCounterSync IS
    PORT (
	Q3 : OUT std_logic;
	CP : IN std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic
	);
END fourBitCounterSync;

-- Design Ports Information
-- Q3	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CP	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fourBitCounterSync IS
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
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL \D0|9~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \CP~input_o\ : std_logic;
SIGNAL \D0|9~0_combout\ : std_logic;
SIGNAL \D0|9~feeder_combout\ : std_logic;
SIGNAL \D0|9~q\ : std_logic;
SIGNAL \D0|9~clkctrl_outclk\ : std_logic;
SIGNAL \D1|9~0_combout\ : std_logic;
SIGNAL \D1|9~feeder_combout\ : std_logic;
SIGNAL \D1|9~q\ : std_logic;
SIGNAL \D2|9~0_combout\ : std_logic;
SIGNAL \D2|9~q\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst11~q\ : std_logic;

BEGIN

Q3 <= ww_Q3;
ww_CP <= CP;
Q0 <= ww_Q0;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\D0|9~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \D0|9~q\);

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X12_Y0_N9
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

-- Location: IOOBUF_X10_Y0_N9
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

-- Location: IOIBUF_X14_Y0_N8
\CP~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CP,
	o => \CP~input_o\);

-- Location: LCCOMB_X15_Y1_N0
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

-- Location: LCCOMB_X15_Y1_N12
\D0|9~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D0|9~feeder_combout\ = \D0|9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D0|9~0_combout\,
	combout => \D0|9~feeder_combout\);

-- Location: FF_X15_Y1_N13
\D0|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~input_o\,
	d => \D0|9~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D0|9~q\);

-- Location: CLKCTRL_G19
\D0|9~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \D0|9~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \D0|9~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y1_N16
\D1|9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1|9~0_combout\ = \D0|9~q\ $ (\D1|9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0|9~q\,
	datad => \D1|9~q\,
	combout => \D1|9~0_combout\);

-- Location: LCCOMB_X15_Y1_N18
\D1|9~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D1|9~feeder_combout\ = \D1|9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D1|9~0_combout\,
	combout => \D1|9~feeder_combout\);

-- Location: FF_X15_Y1_N19
\D1|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D0|9~clkctrl_outclk\,
	d => \D1|9~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|9~q\);

-- Location: LCCOMB_X15_Y1_N6
\D2|9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \D2|9~0_combout\ = \D2|9~q\ $ (\D1|9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D2|9~q\,
	datad => \D1|9~q\,
	combout => \D2|9~0_combout\);

-- Location: FF_X15_Y1_N7
\D2|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D0|9~clkctrl_outclk\,
	d => \D2|9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|9~q\);

-- Location: LCCOMB_X15_Y1_N26
\inst11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = \inst11~q\ $ (((\D2|9~q\ & \D1|9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2|9~q\,
	datac => \inst11~q\,
	datad => \D1|9~q\,
	combout => \inst11~0_combout\);

-- Location: FF_X15_Y1_N27
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D0|9~clkctrl_outclk\,
	d => \inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

ww_Q3 <= \Q3~output_o\;

ww_Q0 <= \Q0~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;
END structure;


