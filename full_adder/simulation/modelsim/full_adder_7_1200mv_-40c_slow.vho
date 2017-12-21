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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "12/19/2017 14:45:47"

-- 
-- Device: Altera EP4CE30F23I7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_adder IS
    PORT (
	cout : OUT std_logic;
	ain : IN std_logic;
	bin : IN std_logic;
	cin : IN std_logic;
	sout : OUT std_logic
	);
END full_adder;

-- Design Ports Information
-- cout	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sout	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ain	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF full_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_ain : std_logic;
SIGNAL ww_bin : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_sout : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \sout~output_o\ : std_logic;
SIGNAL \ain~input_o\ : std_logic;
SIGNAL \bin~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \inst1|inst2~0_combout\ : std_logic;

BEGIN

cout <= ww_cout;
ww_ain <= ain;
ww_bin <= bin;
ww_cin <= cin;
sout <= ww_sout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X36_Y43_N9
\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X45_Y43_N30
\sout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2~0_combout\,
	devoe => ww_devoe,
	o => \sout~output_o\);

-- Location: IOIBUF_X41_Y43_N8
\ain~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ain,
	o => \ain~input_o\);

-- Location: IOIBUF_X45_Y43_N8
\bin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin,
	o => \bin~input_o\);

-- Location: IOIBUF_X45_Y43_N22
\cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X45_Y42_N0
\inst1|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2~0_combout\ = \ain~input_o\ $ (\bin~input_o\ $ (\cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ain~input_o\,
	datac => \bin~input_o\,
	datad => \cin~input_o\,
	combout => \inst1|inst2~0_combout\);

ww_cout <= \cout~output_o\;

ww_sout <= \sout~output_o\;
END structure;


