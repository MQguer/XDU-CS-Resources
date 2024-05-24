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

-- DATE "01/04/2014 19:50:37"

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

ENTITY 	hgh IS
    PORT (
	o1 : OUT std_logic;
	in1 : IN std_logic;
	in2 : IN std_logic;
	o2 : OUT std_logic;
	o3 : OUT std_logic;
	o4 : OUT std_logic;
	o5 : OUT std_logic;
	o6 : OUT std_logic;
	o7 : OUT std_logic;
	o8 : OUT std_logic;
	pin_name4 : IN std_logic;
	in3 : IN std_logic;
	in5 : IN std_logic;
	in6 : IN std_logic
	);
END hgh;

-- Design Ports Information
-- o1	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o2	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o3	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o4	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o5	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o6	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o7	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o8	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name4	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in5	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in6	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hgh IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_o1 : std_logic;
SIGNAL ww_in1 : std_logic;
SIGNAL ww_in2 : std_logic;
SIGNAL ww_o2 : std_logic;
SIGNAL ww_o3 : std_logic;
SIGNAL ww_o4 : std_logic;
SIGNAL ww_o5 : std_logic;
SIGNAL ww_o6 : std_logic;
SIGNAL ww_o7 : std_logic;
SIGNAL ww_o8 : std_logic;
SIGNAL ww_pin_name4 : std_logic;
SIGNAL ww_in3 : std_logic;
SIGNAL ww_in5 : std_logic;
SIGNAL ww_in6 : std_logic;
SIGNAL \pin_name4~input_o\ : std_logic;
SIGNAL \in3~input_o\ : std_logic;
SIGNAL \in5~input_o\ : std_logic;
SIGNAL \in6~input_o\ : std_logic;
SIGNAL \o1~output_o\ : std_logic;
SIGNAL \o2~output_o\ : std_logic;
SIGNAL \o3~output_o\ : std_logic;
SIGNAL \o4~output_o\ : std_logic;
SIGNAL \o5~output_o\ : std_logic;
SIGNAL \o6~output_o\ : std_logic;
SIGNAL \o7~output_o\ : std_logic;
SIGNAL \o8~output_o\ : std_logic;
SIGNAL \in2~input_o\ : std_logic;
SIGNAL \in1~input_o\ : std_logic;
SIGNAL \inst|15~combout\ : std_logic;
SIGNAL \inst|17~0_combout\ : std_logic;
SIGNAL \inst|17~1_combout\ : std_logic;
SIGNAL \inst|17~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_17~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_17~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_17~0_combout\ : std_logic;

BEGIN

o1 <= ww_o1;
ww_in1 <= in1;
ww_in2 <= in2;
o2 <= ww_o2;
o3 <= ww_o3;
o4 <= ww_o4;
o5 <= ww_o5;
o6 <= ww_o6;
o7 <= ww_o7;
o8 <= ww_o8;
ww_pin_name4 <= pin_name4;
ww_in3 <= in3;
ww_in5 <= in5;
ww_in6 <= in6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_17~2_combout\ <= NOT \inst|17~2_combout\;
\inst|ALT_INV_17~1_combout\ <= NOT \inst|17~1_combout\;
\inst|ALT_INV_17~0_combout\ <= NOT \inst|17~0_combout\;

-- Location: IOOBUF_X14_Y0_N2
\o1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|15~combout\,
	devoe => ww_devoe,
	o => \o1~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\o2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_17~0_combout\,
	devoe => ww_devoe,
	o => \o2~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\o3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_17~1_combout\,
	devoe => ww_devoe,
	o => \o3~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\o4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_17~2_combout\,
	devoe => ww_devoe,
	o => \o4~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\o5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o5~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\o6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o6~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\o7~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o7~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\o8~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o8~output_o\);

-- Location: IOIBUF_X24_Y0_N1
\in2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2,
	o => \in2~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\in1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1,
	o => \in1~input_o\);

-- Location: LCCOMB_X21_Y1_N0
\inst|15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|15~combout\ = (\in2~input_o\) # (\in1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in2~input_o\,
	datad => \in1~input_o\,
	combout => \inst|15~combout\);

-- Location: LCCOMB_X21_Y1_N18
\inst|17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|17~0_combout\ = (!\in2~input_o\ & \in1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in2~input_o\,
	datad => \in1~input_o\,
	combout => \inst|17~0_combout\);

-- Location: LCCOMB_X21_Y1_N4
\inst|17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|17~1_combout\ = (\in2~input_o\ & !\in1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in2~input_o\,
	datad => \in1~input_o\,
	combout => \inst|17~1_combout\);

-- Location: LCCOMB_X21_Y1_N22
\inst|17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|17~2_combout\ = (\in2~input_o\ & \in1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in2~input_o\,
	datad => \in1~input_o\,
	combout => \inst|17~2_combout\);

-- Location: IOIBUF_X29_Y0_N1
\pin_name4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name4,
	o => \pin_name4~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\in3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3,
	o => \in3~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\in5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in5,
	o => \in5~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\in6~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in6,
	o => \in6~input_o\);

ww_o1 <= \o1~output_o\;

ww_o2 <= \o2~output_o\;

ww_o3 <= \o3~output_o\;

ww_o4 <= \o4~output_o\;

ww_o5 <= \o5~output_o\;

ww_o6 <= \o6~output_o\;

ww_o7 <= \o7~output_o\;

ww_o8 <= \o8~output_o\;
END structure;


