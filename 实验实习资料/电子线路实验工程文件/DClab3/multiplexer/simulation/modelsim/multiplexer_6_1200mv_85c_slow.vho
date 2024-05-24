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

-- DATE "01/11/2014 19:19:02"

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

ENTITY 	multiplexer IS
    PORT (
	F : OUT std_logic;
	Enable : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	D0 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D1 : IN std_logic
	);
END multiplexer;

-- Design Ports Information
-- F	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplexer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \D3~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \D2~input_o\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst11~1_combout\ : std_logic;
SIGNAL \inst11~2_combout\ : std_logic;

BEGIN

F <= ww_F;
ww_Enable <= Enable;
ww_A1 <= A1;
ww_A0 <= A0;
ww_D0 <= D0;
ww_D2 <= D2;
ww_D3 <= D3;
ww_D1 <= D1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N9
\F~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~2_combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\Enable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\D3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3,
	o => \D3~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\A1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\D2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2,
	o => \D2~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\D0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0,
	o => \D0~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\D1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1,
	o => \D1~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\A0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X24_Y5_N0
\inst11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = (\A1~input_o\ & (((\A0~input_o\)))) # (!\A1~input_o\ & ((\A0~input_o\ & ((\D1~input_o\))) # (!\A0~input_o\ & (\D0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0~input_o\,
	datab => \A1~input_o\,
	datac => \D1~input_o\,
	datad => \A0~input_o\,
	combout => \inst11~0_combout\);

-- Location: LCCOMB_X24_Y5_N2
\inst11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11~1_combout\ = (\A1~input_o\ & ((\inst11~0_combout\ & (\D3~input_o\)) # (!\inst11~0_combout\ & ((\D2~input_o\))))) # (!\A1~input_o\ & (((\inst11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3~input_o\,
	datab => \A1~input_o\,
	datac => \D2~input_o\,
	datad => \inst11~0_combout\,
	combout => \inst11~1_combout\);

-- Location: LCCOMB_X24_Y5_N12
\inst11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11~2_combout\ = (!\Enable~input_o\ & \inst11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~input_o\,
	datad => \inst11~1_combout\,
	combout => \inst11~2_combout\);

ww_F <= \F~output_o\;
END structure;


