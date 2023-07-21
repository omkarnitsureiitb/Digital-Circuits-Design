-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/20/2022 16:46:12"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tone_generator IS
    PORT (
	notes : IN std_logic_vector(7 DOWNTO 0);
	clk_50 : IN std_logic;
	output : BUFFER std_logic_vector(7 DOWNTO 0);
	music : BUFFER std_logic
	);
END tone_generator;

-- Design Ports Information
-- output[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- music	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notes[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notes[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notes[5]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notes[6]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notes[7]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notes[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notes[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notes[2]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tone_generator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_notes : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_music : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mux2~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \music~output_o\ : std_logic;
SIGNAL \notes[3]~input_o\ : std_logic;
SIGNAL \notes[4]~input_o\ : std_logic;
SIGNAL \notes[7]~input_o\ : std_logic;
SIGNAL \notes[5]~input_o\ : std_logic;
SIGNAL \notes[6]~input_o\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \notes[1]~input_o\ : std_logic;
SIGNAL \notes[2]~input_o\ : std_logic;
SIGNAL \notes[0]~input_o\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~79_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~4clkctrl_outclk\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~91_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \clk_temp~0_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \music$latch~combout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_notes <= notes;
ww_clk_50 <= clk_50;
output <= ww_output;
music <= ww_music;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Mux2~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux2~4_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y29_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X16_Y0_N16
\output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~2_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~2_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\output[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\output[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~1_combout\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\output[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X60_Y2_N23
\music~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \music$latch~combout\,
	devoe => ww_devoe,
	o => \music~output_o\);

-- Location: IOIBUF_X6_Y0_N1
\notes[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_notes(3),
	o => \notes[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N15
\notes[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_notes(4),
	o => \notes[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\notes[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_notes(7),
	o => \notes[7]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\notes[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_notes(5),
	o => \notes[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\notes[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_notes(6),
	o => \notes[6]~input_o\);

-- Location: LCCOMB_X7_Y3_N28
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!\notes[4]~input_o\ & (!\notes[7]~input_o\ & (!\notes[5]~input_o\ & !\notes[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[4]~input_o\,
	datab => \notes[7]~input_o\,
	datac => \notes[5]~input_o\,
	datad => \notes[6]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X9_Y3_N12
\Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (!\notes[3]~input_o\ & \Mux23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \notes[3]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: IOIBUF_X6_Y0_N29
\notes[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_notes(1),
	o => \notes[1]~input_o\);

-- Location: IOIBUF_X6_Y0_N8
\notes[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_notes(2),
	o => \notes[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\notes[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_notes(0),
	o => \notes[0]~input_o\);

-- Location: LCCOMB_X9_Y3_N6
\Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux23~1_combout\ & (!\notes[1]~input_o\ & (!\notes[2]~input_o\ & \notes[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \notes[1]~input_o\,
	datac => \notes[2]~input_o\,
	datad => \notes[0]~input_o\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X9_Y3_N24
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux23~1_combout\ & (\notes[1]~input_o\ & (!\notes[2]~input_o\ & \notes[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \notes[1]~input_o\,
	datac => \notes[2]~input_o\,
	datad => \notes[0]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X7_Y3_N30
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\notes[1]~input_o\ & \notes[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[1]~input_o\,
	datad => \notes[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X7_Y3_N0
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux2~0_combout\ & (!\notes[3]~input_o\ & (\notes[0]~input_o\ & \Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \notes[3]~input_o\,
	datac => \notes[0]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X7_Y3_N18
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\notes[1]~input_o\ & (\notes[0]~input_o\ & (\notes[3]~input_o\ & \notes[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[1]~input_o\,
	datab => \notes[0]~input_o\,
	datac => \notes[3]~input_o\,
	datad => \notes[2]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X8_Y3_N12
\Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (!\notes[7]~input_o\ & (\Mux20~0_combout\ & !\notes[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \notes[7]~input_o\,
	datac => \Mux20~0_combout\,
	datad => \notes[6]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X9_Y6_N8
\Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (!\notes[4]~input_o\ & (!\notes[5]~input_o\ & \Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \notes[4]~input_o\,
	datac => \notes[5]~input_o\,
	datad => \Mux20~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X9_Y6_N26
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\notes[4]~input_o\ & (!\notes[5]~input_o\ & \Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \notes[4]~input_o\,
	datac => \notes[5]~input_o\,
	datad => \Mux20~1_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X9_Y6_N12
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\notes[4]~input_o\ & (\notes[5]~input_o\ & \Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \notes[4]~input_o\,
	datac => \notes[5]~input_o\,
	datad => \Mux20~1_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X7_Y3_N24
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\notes[4]~input_o\ & (\notes[5]~input_o\ & \notes[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[4]~input_o\,
	datac => \notes[5]~input_o\,
	datad => \notes[6]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X8_Y3_N18
\Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux20~0_combout\ & (\Mux17~0_combout\ & !\notes[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \Mux17~0_combout\,
	datad => \notes[7]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X8_Y3_N24
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux20~0_combout\ & (\Mux17~0_combout\ & \notes[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \Mux17~0_combout\,
	datad => \notes[7]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: IOIBUF_X0_Y13_N15
\clk_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: LCCOMB_X10_Y5_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (GND)
-- \Add0~1\ = CARRY(!count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X9_Y5_N22
\Add0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (!\Add0~0_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~13_combout\,
	datac => \LessThan0~32_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~69_combout\);

-- Location: FF_X9_Y5_N23
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X10_Y5_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X9_Y4_N18
\Add0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (\Add0~2_combout\ & ((count(31)) # ((\LessThan0~32_combout\ & \Equal0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Add0~2_combout\,
	datac => \LessThan0~32_combout\,
	datad => \Equal0~13_combout\,
	combout => \Add0~74_combout\);

-- Location: FF_X9_Y4_N19
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X10_Y5_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X9_Y4_N4
\Add0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (\Add0~4_combout\ & ((count(31)) # ((\LessThan0~32_combout\ & \Equal0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => count(31),
	datac => \LessThan0~32_combout\,
	datad => \Equal0~13_combout\,
	combout => \Add0~77_combout\);

-- Location: FF_X9_Y4_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X10_Y5_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X9_Y4_N22
\Add0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (\Add0~6_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => count(31),
	datac => \LessThan0~32_combout\,
	datad => \Add0~6_combout\,
	combout => \Add0~78_combout\);

-- Location: FF_X9_Y4_N23
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X10_Y5_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X9_Y5_N18
\Add0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (\Add0~8_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~13_combout\,
	datac => \LessThan0~32_combout\,
	datad => \Add0~8_combout\,
	combout => \Add0~70_combout\);

-- Location: FF_X9_Y5_N19
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X10_Y5_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X9_Y5_N14
\Add0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (\Add0~10_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Equal0~13_combout\,
	datac => \LessThan0~32_combout\,
	datad => count(31),
	combout => \Add0~71_combout\);

-- Location: FF_X9_Y5_N15
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X10_Y5_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X9_Y5_N28
\Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (\Add0~12_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~13_combout\,
	datac => \LessThan0~32_combout\,
	datad => \Add0~12_combout\,
	combout => \Add0~72_combout\);

-- Location: FF_X9_Y5_N29
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X10_Y5_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X9_Y5_N16
\Add0~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (\Add0~14_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~13_combout\,
	datac => \LessThan0~32_combout\,
	datad => \Add0~14_combout\,
	combout => \Add0~73_combout\);

-- Location: FF_X9_Y5_N17
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X10_Y5_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X9_Y4_N26
\Add0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\Add0~16_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => count(31),
	datac => \LessThan0~32_combout\,
	datad => \Add0~16_combout\,
	combout => \Add0~75_combout\);

-- Location: FF_X9_Y4_N27
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X10_Y5_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X9_Y4_N8
\Add0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (\Add0~18_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => count(31),
	datac => \LessThan0~32_combout\,
	datad => \Add0~18_combout\,
	combout => \Add0~76_combout\);

-- Location: FF_X9_Y4_N9
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X10_Y5_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X9_Y4_N12
\Add0~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~79_combout\ = (\Add0~20_combout\ & ((count(31)) # ((\LessThan0~32_combout\ & \Equal0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => count(31),
	datac => \LessThan0~32_combout\,
	datad => \Equal0~13_combout\,
	combout => \Add0~79_combout\);

-- Location: FF_X9_Y4_N13
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X10_Y5_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X9_Y4_N2
\Add0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (\Add0~22_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => count(31),
	datac => \LessThan0~32_combout\,
	datad => \Add0~22_combout\,
	combout => \Add0~80_combout\);

-- Location: FF_X9_Y4_N3
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X10_Y5_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X8_Y5_N28
\Add0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (\Add0~24_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Equal0~13_combout\,
	datac => \LessThan0~32_combout\,
	datad => count(31),
	combout => \Add0~65_combout\);

-- Location: FF_X8_Y5_N29
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X10_Y5_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X8_Y5_N24
\Add0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (\Add0~26_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~13_combout\,
	datac => \LessThan0~32_combout\,
	datad => \Add0~26_combout\,
	combout => \Add0~66_combout\);

-- Location: FF_X8_Y5_N25
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X10_Y5_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X8_Y5_N26
\Add0~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (\Add0~28_combout\ & ((count(31)) # ((\LessThan0~32_combout\ & \Equal0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Add0~28_combout\,
	datac => \LessThan0~32_combout\,
	datad => \Equal0~13_combout\,
	combout => \Add0~67_combout\);

-- Location: FF_X8_Y5_N27
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X10_Y5_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X8_Y5_N18
\Add0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (\Add0~30_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~13_combout\,
	datac => \LessThan0~32_combout\,
	datad => \Add0~30_combout\,
	combout => \Add0~68_combout\);

-- Location: FF_X8_Y5_N19
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X10_Y4_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X8_Y4_N26
\Add0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (\Add0~32_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => count(31),
	datac => \Equal0~13_combout\,
	datad => \LessThan0~32_combout\,
	combout => \Add0~92_combout\);

-- Location: FF_X8_Y4_N27
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X7_Y3_N14
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\notes[2]~input_o\ & (!\notes[3]~input_o\ & \Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[2]~input_o\,
	datac => \notes[3]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X7_Y3_N12
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\notes[5]~input_o\ & (((!\notes[4]~input_o\)) # (!\notes[3]~input_o\))) # (!\notes[5]~input_o\ & ((\notes[6]~input_o\) # ((!\notes[3]~input_o\ & \notes[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[5]~input_o\,
	datab => \notes[3]~input_o\,
	datac => \notes[4]~input_o\,
	datad => \notes[6]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X7_Y3_N22
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\notes[7]~input_o\ & (((\Mux17~0_combout\ & \notes[3]~input_o\)))) # (!\notes[7]~input_o\ & (!\Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux17~0_combout\,
	datac => \notes[3]~input_o\,
	datad => \notes[7]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X4_Y1_N26
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\notes[0]~input_o\ & ((\Mux2~1_combout\) # ((\Mux2~0_combout\ & \Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux2~3_combout\,
	datad => \notes[0]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: CLKCTRL_G1
\Mux2~4clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux2~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux2~4clkctrl_outclk\);

-- Location: LCCOMB_X7_Y3_N4
\counter[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(16) = (GLOBAL(\Mux2~4clkctrl_outclk\) & ((\Mux20~0_combout\))) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & (counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datac => \Mux2~4clkctrl_outclk\,
	datad => \Mux20~0_combout\,
	combout => counter(16));

-- Location: LCCOMB_X9_Y3_N2
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\notes[2]~input_o\ & ((\notes[3]~input_o\ $ (\notes[7]~input_o\)) # (!\notes[1]~input_o\))) # (!\notes[2]~input_o\ & ((\notes[3]~input_o\) # ((\notes[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[3]~input_o\,
	datab => \notes[1]~input_o\,
	datac => \notes[2]~input_o\,
	datad => \notes[7]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X7_Y5_N0
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\notes[0]~input_o\ & !\Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[0]~input_o\,
	datac => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X7_Y5_N18
\counter[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(15) = (GLOBAL(\Mux2~4clkctrl_outclk\) & ((\Mux0~1_combout\))) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & (counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datac => \Mux0~1_combout\,
	datad => \Mux2~4clkctrl_outclk\,
	combout => counter(15));

-- Location: LCCOMB_X7_Y5_N30
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\notes[0]~input_o\ & ((\notes[3]~input_o\ & (\notes[1]~input_o\ & \notes[5]~input_o\)) # (!\notes[3]~input_o\ & ((!\notes[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[0]~input_o\,
	datab => \notes[1]~input_o\,
	datac => \notes[3]~input_o\,
	datad => \notes[5]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X7_Y5_N20
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & !\notes[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux1~0_combout\,
	datad => \notes[7]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X7_Y5_N28
\counter[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(14) = (GLOBAL(\Mux2~4clkctrl_outclk\) & ((\Mux1~1_combout\))) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & (counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datac => \Mux1~1_combout\,
	datad => \Mux2~4clkctrl_outclk\,
	combout => counter(14));

-- Location: LCCOMB_X7_Y3_N20
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\notes[5]~input_o\ & (((!\notes[6]~input_o\) # (!\notes[4]~input_o\)) # (!\notes[3]~input_o\))) # (!\notes[5]~input_o\ & ((\notes[6]~input_o\) # (\notes[3]~input_o\ $ (\notes[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[5]~input_o\,
	datab => \notes[3]~input_o\,
	datac => \notes[4]~input_o\,
	datad => \notes[6]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X8_Y3_N22
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\notes[2]~input_o\ & (!\Mux3~0_combout\ & !\notes[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[2]~input_o\,
	datab => \Mux3~0_combout\,
	datad => \notes[7]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X7_Y5_N14
\counter[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(13) = (GLOBAL(\Mux2~4clkctrl_outclk\) & (\Mux3~1_combout\)) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & ((counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~1_combout\,
	datac => counter(13),
	datad => \Mux2~4clkctrl_outclk\,
	combout => counter(13));

-- Location: LCCOMB_X9_Y6_N18
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\notes[3]~input_o\ & ((\notes[5]~input_o\ $ (\notes[7]~input_o\)) # (!\notes[4]~input_o\))) # (!\notes[3]~input_o\ & ((\notes[4]~input_o\) # ((\notes[5]~input_o\) # (\notes[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[3]~input_o\,
	datab => \notes[4]~input_o\,
	datac => \notes[5]~input_o\,
	datad => \notes[7]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X9_Y6_N28
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\notes[1]~input_o\ & !\Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \notes[1]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X9_Y5_N20
\counter[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(12) = (GLOBAL(\Mux2~4clkctrl_outclk\) & ((\Mux4~1_combout\))) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & (counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datac => \Mux4~1_combout\,
	datad => \Mux2~4clkctrl_outclk\,
	combout => counter(12));

-- Location: LCCOMB_X7_Y3_N26
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\notes[2]~input_o\ & ((\notes[4]~input_o\ $ (\notes[6]~input_o\)) # (!\notes[3]~input_o\))) # (!\notes[2]~input_o\ & ((\notes[3]~input_o\) # ((\notes[4]~input_o\) # (\notes[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[2]~input_o\,
	datab => \notes[3]~input_o\,
	datac => \notes[4]~input_o\,
	datad => \notes[6]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X8_Y3_N0
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\) # (\notes[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux5~0_combout\,
	datad => \notes[7]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X7_Y5_N8
\counter[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(11) = (GLOBAL(\Mux2~4clkctrl_outclk\) & (!\Mux5~1_combout\)) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & ((counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datac => counter(11),
	datad => \Mux2~4clkctrl_outclk\,
	combout => counter(11));

-- Location: LCCOMB_X7_Y3_N16
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\notes[4]~input_o\ & ((\notes[7]~input_o\ $ (\notes[6]~input_o\)) # (!\notes[5]~input_o\))) # (!\notes[4]~input_o\ & ((\notes[7]~input_o\) # ((\notes[5]~input_o\) # (\notes[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[4]~input_o\,
	datab => \notes[7]~input_o\,
	datac => \notes[5]~input_o\,
	datad => \notes[6]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X7_Y3_N2
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\notes[2]~input_o\ & !\Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[2]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X7_Y5_N26
\counter[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(10) = (GLOBAL(\Mux2~4clkctrl_outclk\) & (\Mux6~1_combout\)) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & ((counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~1_combout\,
	datac => counter(10),
	datad => \Mux2~4clkctrl_outclk\,
	combout => counter(10));

-- Location: LCCOMB_X9_Y6_N10
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\notes[1]~input_o\ & ((\notes[4]~input_o\ $ (\notes[7]~input_o\)) # (!\notes[3]~input_o\))) # (!\notes[1]~input_o\ & ((\notes[4]~input_o\) # ((\notes[3]~input_o\) # (\notes[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[1]~input_o\,
	datab => \notes[4]~input_o\,
	datac => \notes[3]~input_o\,
	datad => \notes[7]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X9_Y6_N0
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\notes[0]~input_o\ & !\Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \notes[0]~input_o\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X9_Y6_N30
\counter[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(9) = (GLOBAL(\Mux2~4clkctrl_outclk\) & ((\Mux7~1_combout\))) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & (counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datac => \Mux7~1_combout\,
	datad => \Mux2~4clkctrl_outclk\,
	combout => counter(9));

-- Location: LCCOMB_X9_Y5_N0
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\notes[0]~input_o\ & ((\notes[2]~input_o\ & (\notes[3]~input_o\ & \notes[1]~input_o\)) # (!\notes[2]~input_o\ & (!\notes[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[2]~input_o\,
	datab => \notes[0]~input_o\,
	datac => \notes[3]~input_o\,
	datad => \notes[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X9_Y5_N12
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & !\notes[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datad => \notes[7]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X9_Y5_N10
\counter[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(8) = (GLOBAL(\Mux2~4clkctrl_outclk\) & ((\Mux8~1_combout\))) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & (counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datac => \Mux8~1_combout\,
	datad => \Mux2~4clkctrl_outclk\,
	combout => counter(8));

-- Location: LCCOMB_X9_Y6_N22
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\notes[3]~input_o\ & \notes[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[3]~input_o\,
	datac => \notes[2]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X9_Y6_N20
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (\notes[5]~input_o\ & (\notes[1]~input_o\ & \notes[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \notes[5]~input_o\,
	datac => \notes[1]~input_o\,
	datad => \notes[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X8_Y6_N2
\counter[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(7) = (GLOBAL(\Mux2~4clkctrl_outclk\) & (\Mux9~1_combout\)) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & ((counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~1_combout\,
	datac => \Mux2~4clkctrl_outclk\,
	datad => counter(7),
	combout => counter(7));

-- Location: LCCOMB_X7_Y3_N8
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\notes[5]~input_o\ & (\notes[2]~input_o\ & (\notes[4]~input_o\ $ (!\notes[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[4]~input_o\,
	datab => \notes[3]~input_o\,
	datac => \notes[5]~input_o\,
	datad => \notes[2]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X7_Y3_N10
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\) # ((\notes[6]~input_o\) # (!\notes[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~0_combout\,
	datac => \notes[1]~input_o\,
	datad => \notes[6]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X8_Y6_N12
\counter[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(5) = (GLOBAL(\Mux2~4clkctrl_outclk\) & ((\Mux10~1_combout\))) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & (counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datac => \Mux10~1_combout\,
	datad => \Mux2~4clkctrl_outclk\,
	combout => counter(5));

-- Location: LCCOMB_X7_Y6_N12
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\notes[0]~input_o\ & ((\notes[2]~input_o\ & (\notes[1]~input_o\ & \notes[6]~input_o\)) # (!\notes[2]~input_o\ & (!\notes[1]~input_o\ & !\notes[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[2]~input_o\,
	datab => \notes[1]~input_o\,
	datac => \notes[6]~input_o\,
	datad => \notes[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X7_Y6_N14
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (!\notes[7]~input_o\ & \Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[7]~input_o\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X8_Y6_N10
\counter[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(4) = (GLOBAL(\Mux2~4clkctrl_outclk\) & (\Mux11~1_combout\)) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & ((counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datac => \Mux2~4clkctrl_outclk\,
	datad => counter(4),
	combout => counter(4));

-- Location: LCCOMB_X8_Y6_N0
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\notes[5]~input_o\ & (\Mux2~0_combout\ & (\notes[4]~input_o\ & \notes[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[5]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \notes[4]~input_o\,
	datad => \notes[0]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X8_Y6_N8
\counter[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(3) = (GLOBAL(\Mux2~4clkctrl_outclk\) & ((\Mux12~0_combout\))) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & (counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datac => \Mux12~0_combout\,
	datad => \Mux2~4clkctrl_outclk\,
	combout => counter(3));

-- Location: LCCOMB_X7_Y6_N0
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\notes[0]~input_o\ & ((\notes[7]~input_o\ & (\notes[2]~input_o\ & \notes[6]~input_o\)) # (!\notes[7]~input_o\ & ((!\notes[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[7]~input_o\,
	datab => \notes[2]~input_o\,
	datac => \notes[6]~input_o\,
	datad => \notes[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X7_Y6_N30
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & \notes[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux13~0_combout\,
	datad => \notes[1]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X8_Y6_N14
\counter[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(2) = (GLOBAL(\Mux2~4clkctrl_outclk\) & (\Mux13~1_combout\)) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & ((counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux13~1_combout\,
	datac => counter(2),
	datad => \Mux2~4clkctrl_outclk\,
	combout => counter(2));

-- Location: LCCOMB_X9_Y3_N16
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\notes[3]~input_o\ & (((!\notes[7]~input_o\) # (!\notes[2]~input_o\)) # (!\notes[1]~input_o\))) # (!\notes[3]~input_o\ & ((\notes[1]~input_o\) # ((\notes[2]~input_o\) # (\notes[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[3]~input_o\,
	datab => \notes[1]~input_o\,
	datac => \notes[2]~input_o\,
	datad => \notes[7]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X9_Y6_N14
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (!\Mux14~0_combout\ & \notes[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux14~0_combout\,
	datad => \notes[0]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X8_Y6_N4
\counter[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(1) = (GLOBAL(\Mux2~4clkctrl_outclk\) & (\Mux14~1_combout\)) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & ((counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux14~1_combout\,
	datac => counter(1),
	datad => \Mux2~4clkctrl_outclk\,
	combout => counter(1));

-- Location: LCCOMB_X9_Y6_N24
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\notes[3]~input_o\ & (((!\notes[4]~input_o\) # (!\notes[1]~input_o\)) # (!\notes[2]~input_o\))) # (!\notes[3]~input_o\ & ((\notes[2]~input_o\) # ((\notes[1]~input_o\) # (\notes[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \notes[3]~input_o\,
	datab => \notes[2]~input_o\,
	datac => \notes[1]~input_o\,
	datad => \notes[4]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X7_Y6_N20
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\notes[0]~input_o\ & !\Mux15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \notes[0]~input_o\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X8_Y6_N6
\counter[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(0) = (GLOBAL(\Mux2~4clkctrl_outclk\) & ((\Mux15~1_combout\))) # (!GLOBAL(\Mux2~4clkctrl_outclk\) & (counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datac => \Mux2~4clkctrl_outclk\,
	datad => \Mux15~1_combout\,
	combout => counter(0));

-- Location: LCCOMB_X8_Y6_N16
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((counter(0) & count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => count(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X8_Y6_N18
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((count(1) & ((!\LessThan0~1_cout\) # (!counter(1)))) # (!count(1) & (!counter(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => counter(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X8_Y6_N20
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((count(2) & (counter(2) & !\LessThan0~3_cout\)) # (!count(2) & ((counter(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => counter(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X8_Y6_N22
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((count(3) & ((!\LessThan0~5_cout\) # (!counter(3)))) # (!count(3) & (!counter(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => counter(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X8_Y6_N24
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((counter(4) & ((!\LessThan0~7_cout\) # (!count(4)))) # (!counter(4) & (!count(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => count(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X8_Y6_N26
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((counter(5) & (count(5) & !\LessThan0~9_cout\)) # (!counter(5) & ((count(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => count(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X8_Y6_N28
\LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((counter(9) & ((!\LessThan0~11_cout\) # (!count(6)))) # (!counter(9) & (!count(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => count(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X8_Y6_N30
\LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((count(7) & ((!\LessThan0~13_cout\) # (!counter(7)))) # (!count(7) & (!counter(7) & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => counter(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X8_Y5_N0
\LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((count(8) & (counter(8) & !\LessThan0~15_cout\)) # (!count(8) & ((counter(8)) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => counter(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X8_Y5_N2
\LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((count(9) & ((!\LessThan0~17_cout\) # (!counter(9)))) # (!count(9) & (!counter(9) & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => counter(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X8_Y5_N4
\LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((counter(10) & ((!\LessThan0~19_cout\) # (!count(10)))) # (!counter(10) & (!count(10) & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => count(10),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X8_Y5_N6
\LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((counter(11) & (count(11) & !\LessThan0~21_cout\)) # (!counter(11) & ((count(11)) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => count(11),
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X8_Y5_N8
\LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((counter(12) & ((!\LessThan0~23_cout\) # (!count(12)))) # (!counter(12) & (!count(12) & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => count(12),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X8_Y5_N10
\LessThan0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((counter(13) & (count(13) & !\LessThan0~25_cout\)) # (!counter(13) & ((count(13)) # (!\LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => count(13),
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X8_Y5_N12
\LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((count(14) & (counter(14) & !\LessThan0~27_cout\)) # (!count(14) & ((counter(14)) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => counter(14),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X8_Y5_N14
\LessThan0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((count(15) & ((!\LessThan0~29_cout\) # (!counter(15)))) # (!count(15) & (!counter(15) & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => counter(15),
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X8_Y5_N16
\LessThan0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~32_combout\ = (count(16) & (!\LessThan0~31_cout\ & counter(16))) # (!count(16) & ((counter(16)) # (!\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => counter(16),
	cin => \LessThan0~31_cout\,
	combout => \LessThan0~32_combout\);

-- Location: LCCOMB_X10_Y4_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X8_Y4_N12
\Add0~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Add0~34_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Add0~34_combout\,
	datac => \Equal0~13_combout\,
	datad => \LessThan0~32_combout\,
	combout => \Add0~81_combout\);

-- Location: FF_X8_Y4_N13
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X10_Y4_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X8_Y4_N8
\Add0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (\Add0~36_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Add0~36_combout\,
	datac => \Equal0~13_combout\,
	datad => \LessThan0~32_combout\,
	combout => \Add0~82_combout\);

-- Location: FF_X8_Y4_N9
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X10_Y4_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X8_Y4_N16
\Add0~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (\Add0~38_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => count(31),
	datac => \Add0~38_combout\,
	datad => \LessThan0~32_combout\,
	combout => \Add0~83_combout\);

-- Location: FF_X8_Y4_N17
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X10_Y4_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X8_Y4_N22
\Add0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (\Add0~40_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => count(31),
	datac => \Equal0~13_combout\,
	datad => \LessThan0~32_combout\,
	combout => \Add0~84_combout\);

-- Location: FF_X8_Y4_N23
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X10_Y4_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X8_Y5_N30
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\Add0~42_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~13_combout\,
	datac => \LessThan0~32_combout\,
	datad => \Add0~42_combout\,
	combout => \Add0~44_combout\);

-- Location: FF_X8_Y5_N31
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X10_Y4_N12
\Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (count(22) & (\Add0~43\ $ (GND))) # (!count(22) & (!\Add0~43\ & VCC))
-- \Add0~46\ = CARRY((count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X9_Y4_N6
\Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\Add0~45_combout\ & ((count(31)) # ((\LessThan0~32_combout\ & \Equal0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Add0~45_combout\,
	datac => \LessThan0~32_combout\,
	datad => \Equal0~13_combout\,
	combout => \Add0~47_combout\);

-- Location: FF_X9_Y4_N7
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X10_Y4_N14
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(23) & (!\Add0~46\)) # (!count(23) & ((\Add0~46\) # (GND)))
-- \Add0~49\ = CARRY((!\Add0~46\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X8_Y5_N20
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\Add0~48_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Equal0~13_combout\,
	datac => \LessThan0~32_combout\,
	datad => count(31),
	combout => \Add0~50_combout\);

-- Location: FF_X8_Y5_N21
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X10_Y4_N16
\Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (count(24) & (\Add0~49\ $ (GND))) # (!count(24) & (!\Add0~49\ & VCC))
-- \Add0~52\ = CARRY((count(24) & !\Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X8_Y5_N22
\Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (\Add0~51_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~51_combout\,
	datab => \Equal0~13_combout\,
	datac => \LessThan0~32_combout\,
	datad => count(31),
	combout => \Add0~53_combout\);

-- Location: FF_X8_Y5_N23
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X10_Y4_N18
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count(25) & (!\Add0~52\)) # (!count(25) & ((\Add0~52\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~52\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X9_Y4_N28
\Add0~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~85_combout\ = (\Add0~54_combout\ & ((count(31)) # ((\LessThan0~32_combout\ & \Equal0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => count(31),
	datac => \LessThan0~32_combout\,
	datad => \Equal0~13_combout\,
	combout => \Add0~85_combout\);

-- Location: FF_X9_Y4_N29
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X10_Y4_N20
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count(26) & (\Add0~55\ $ (GND))) # (!count(26) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count(26) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X9_Y4_N10
\Add0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (\Add0~56_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => count(31),
	datac => \LessThan0~32_combout\,
	datad => \Add0~56_combout\,
	combout => \Add0~86_combout\);

-- Location: FF_X9_Y4_N11
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X10_Y4_N22
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count(27) & (!\Add0~57\)) # (!count(27) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(27),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X9_Y4_N30
\Add0~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\Add0~58_combout\ & ((count(31)) # ((\LessThan0~32_combout\ & \Equal0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \LessThan0~32_combout\,
	datac => \Add0~58_combout\,
	datad => \Equal0~13_combout\,
	combout => \Add0~87_combout\);

-- Location: FF_X9_Y4_N31
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X10_Y4_N24
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (count(28) & (\Add0~59\ $ (GND))) # (!count(28) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((count(28) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X9_Y4_N14
\Add0~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (\Add0~60_combout\ & ((count(31)) # ((\LessThan0~32_combout\ & \Equal0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Add0~60_combout\,
	datac => \LessThan0~32_combout\,
	datad => \Equal0~13_combout\,
	combout => \Add0~88_combout\);

-- Location: FF_X9_Y4_N15
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X10_Y4_N26
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (count(29) & (!\Add0~61\)) # (!count(29) & ((\Add0~61\) # (GND)))
-- \Add0~63\ = CARRY((!\Add0~61\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~62_combout\,
	cout => \Add0~63\);

-- Location: LCCOMB_X8_Y4_N4
\Add0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = (\Add0~62_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => count(31),
	datac => \Equal0~13_combout\,
	datad => \LessThan0~32_combout\,
	combout => \Add0~64_combout\);

-- Location: FF_X8_Y4_N5
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X10_Y4_N28
\Add0~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (count(30) & (\Add0~63\ $ (GND))) # (!count(30) & (!\Add0~63\ & VCC))
-- \Add0~90\ = CARRY((count(30) & !\Add0~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \Add0~63\,
	combout => \Add0~89_combout\,
	cout => \Add0~90\);

-- Location: LCCOMB_X8_Y4_N14
\Add0~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~91_combout\ = (\Add0~89_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Add0~89_combout\,
	datac => \Equal0~13_combout\,
	datad => \LessThan0~32_combout\,
	combout => \Add0~91_combout\);

-- Location: FF_X8_Y4_N15
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X8_Y4_N10
\Equal0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!count(30) & (!count(19) & (!count(18) & !count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => count(19),
	datac => count(18),
	datad => count(17),
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X8_Y4_N24
\Equal0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!count(29) & !count(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(29),
	datad => count(20),
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X9_Y4_N24
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count(27) & (!count(25) & (!count(28) & !count(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datab => count(25),
	datac => count(28),
	datad => count(26),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X9_Y5_N24
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(24) & (!count(23) & (!count(22) & !count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => count(23),
	datac => count(22),
	datad => count(21),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X8_Y4_N30
\Equal0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (\Equal0~11_combout\ & (\Equal0~12_combout\ & (\Equal0~7_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~11_combout\,
	datab => \Equal0~12_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X10_Y4_N30
\Add0~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = \Add0~90\ $ (count(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(31),
	cin => \Add0~90\,
	combout => \Add0~93_combout\);

-- Location: LCCOMB_X9_Y4_N20
\Add0~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (\Add0~93_combout\ & ((count(31)) # ((\Equal0~13_combout\ & \LessThan0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => \LessThan0~32_combout\,
	datac => count(31),
	datad => \Add0~93_combout\,
	combout => \Add0~95_combout\);

-- Location: FF_X9_Y4_N21
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X8_Y4_N0
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(31) & !count(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(31),
	datad => count(16),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X9_Y5_N26
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(7) & (!count(4) & (!count(5) & !count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(4),
	datac => count(5),
	datad => count(6),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X9_Y5_N4
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(13) & (!count(15) & (!count(14) & !count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(15),
	datac => count(14),
	datad => count(12),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X9_Y4_N16
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(11) & (!count(2) & (!count(3) & !count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(2),
	datac => count(3),
	datad => count(10),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X9_Y4_N0
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!count(9) & (\Equal0~3_combout\ & (!count(8) & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => \Equal0~3_combout\,
	datac => count(8),
	datad => count(1),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X9_Y5_N30
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~2_combout\ & (!count(0) & (\Equal0~1_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => count(0),
	datac => \Equal0~1_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X8_Y4_N18
\clk_temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_temp~0_combout\ = \clk_temp~0_combout\ $ (((\Equal0~8_combout\ & (\Equal0~13_combout\ & \Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_temp~0_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~13_combout\,
	datad => \Equal0~5_combout\,
	combout => \clk_temp~0_combout\);

-- Location: LCCOMB_X8_Y4_N2
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(17) & (!count(18) & (!count(20) & !count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(18),
	datac => count(20),
	datad => count(19),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X8_Y4_N28
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~7_combout\ & (\Equal0~6_combout\ & (!count(30) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~6_combout\,
	datac => count(30),
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X8_Y4_N6
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~5_combout\ & (\Equal0~0_combout\ & (!count(29) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~0_combout\,
	datac => count(29),
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X8_Y4_N20
\music$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \music$latch~combout\ = (\Equal0~10_combout\ & (\clk_temp~0_combout\)) # (!\Equal0~10_combout\ & ((\music$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_temp~0_combout\,
	datac => \music$latch~combout\,
	datad => \Equal0~10_combout\,
	combout => \music$latch~combout\);

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_music <= \music~output_o\;
END structure;


