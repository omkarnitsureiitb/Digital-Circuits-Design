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

-- DATE "10/29/2022 18:35:33"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
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

ENTITY 	FSM IS
    PORT (
	inp : IN std_logic_vector(3 DOWNTO 0);
	clock : IN std_logic;
	output : OUT std_logic_vector(4 DOWNTO 0)
	);
END FSM;

-- Design Ports Information
-- output[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[2]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inp : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_output : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \y_present.student~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output_proc~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \inp[3]~input_o\ : std_logic;
SIGNAL \inp[2]~input_o\ : std_logic;
SIGNAL \inp[1]~input_o\ : std_logic;
SIGNAL \inp[0]~input_o\ : std_logic;
SIGNAL \y_present.student~1_combout\ : std_logic;
SIGNAL \y_present.student~2_combout\ : std_logic;
SIGNAL \y_present.student~0_combout\ : std_logic;
SIGNAL \y_present.student~0clkctrl_outclk\ : std_logic;
SIGNAL \y_present.student_577~combout\ : std_logic;
SIGNAL \y_present.professor~0_combout\ : std_logic;
SIGNAL \y_present.professor_605~combout\ : std_logic;
SIGNAL \y_present.idle~0_combout\ : std_logic;
SIGNAL \y_present.idle~1_combout\ : std_logic;
SIGNAL \y_present.idle~2_combout\ : std_logic;
SIGNAL \y_present.idle_633~combout\ : std_logic;
SIGNAL \y_present.researcher~0_combout\ : std_logic;
SIGNAL \y_present.researcher~1_combout\ : std_logic;
SIGNAL \y_present.researcher_591~combout\ : std_logic;
SIGNAL \y_present.admin_619~combout\ : std_logic;
SIGNAL \output~31_combout\ : std_logic;
SIGNAL \alert~1_combout\ : std_logic;
SIGNAL \alert~0_combout\ : std_logic;
SIGNAL \alert~2_combout\ : std_logic;
SIGNAL \alert~combout\ : std_logic;
SIGNAL \output~32_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~32_combout\ : std_logic;
SIGNAL \counter[0]~33\ : std_logic;
SIGNAL \counter[1]~34_combout\ : std_logic;
SIGNAL \counter[1]~35\ : std_logic;
SIGNAL \counter[2]~36_combout\ : std_logic;
SIGNAL \counter[2]~37\ : std_logic;
SIGNAL \counter[3]~38_combout\ : std_logic;
SIGNAL \counter[3]~39\ : std_logic;
SIGNAL \counter[4]~40_combout\ : std_logic;
SIGNAL \counter[4]~41\ : std_logic;
SIGNAL \counter[5]~42_combout\ : std_logic;
SIGNAL \counter[5]~43\ : std_logic;
SIGNAL \counter[6]~44_combout\ : std_logic;
SIGNAL \counter[6]~45\ : std_logic;
SIGNAL \counter[7]~46_combout\ : std_logic;
SIGNAL \counter[7]~47\ : std_logic;
SIGNAL \counter[8]~48_combout\ : std_logic;
SIGNAL \counter[8]~49\ : std_logic;
SIGNAL \counter[9]~50_combout\ : std_logic;
SIGNAL \counter[9]~51\ : std_logic;
SIGNAL \counter[10]~52_combout\ : std_logic;
SIGNAL \counter[10]~53\ : std_logic;
SIGNAL \counter[11]~54_combout\ : std_logic;
SIGNAL \counter[11]~55\ : std_logic;
SIGNAL \counter[12]~56_combout\ : std_logic;
SIGNAL \counter[12]~57\ : std_logic;
SIGNAL \counter[13]~58_combout\ : std_logic;
SIGNAL \counter[13]~59\ : std_logic;
SIGNAL \counter[14]~60_combout\ : std_logic;
SIGNAL \counter[14]~61\ : std_logic;
SIGNAL \counter[15]~62_combout\ : std_logic;
SIGNAL \counter[15]~63\ : std_logic;
SIGNAL \counter[16]~64_combout\ : std_logic;
SIGNAL \counter[16]~65\ : std_logic;
SIGNAL \counter[17]~66_combout\ : std_logic;
SIGNAL \counter[17]~67\ : std_logic;
SIGNAL \counter[18]~68_combout\ : std_logic;
SIGNAL \counter[18]~69\ : std_logic;
SIGNAL \counter[19]~70_combout\ : std_logic;
SIGNAL \counter[19]~71\ : std_logic;
SIGNAL \counter[20]~72_combout\ : std_logic;
SIGNAL \counter[20]~73\ : std_logic;
SIGNAL \counter[21]~74_combout\ : std_logic;
SIGNAL \counter[21]~75\ : std_logic;
SIGNAL \counter[22]~76_combout\ : std_logic;
SIGNAL \counter[22]~77\ : std_logic;
SIGNAL \counter[23]~78_combout\ : std_logic;
SIGNAL \counter[23]~79\ : std_logic;
SIGNAL \counter[24]~80_combout\ : std_logic;
SIGNAL \counter[24]~81\ : std_logic;
SIGNAL \counter[25]~82_combout\ : std_logic;
SIGNAL \counter[25]~83\ : std_logic;
SIGNAL \counter[26]~84_combout\ : std_logic;
SIGNAL \counter[26]~85\ : std_logic;
SIGNAL \counter[27]~86_combout\ : std_logic;
SIGNAL \counter[27]~87\ : std_logic;
SIGNAL \counter[28]~88_combout\ : std_logic;
SIGNAL \counter[28]~89\ : std_logic;
SIGNAL \counter[29]~90_combout\ : std_logic;
SIGNAL \counter[29]~91\ : std_logic;
SIGNAL \counter[30]~92_combout\ : std_logic;
SIGNAL \counter[30]~93\ : std_logic;
SIGNAL \counter[31]~94_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \output_proc:ending~0_combout\ : std_logic;
SIGNAL \output_proc:ending~q\ : std_logic;
SIGNAL \output_proc~0_combout\ : std_logic;
SIGNAL \output_proc~0clkctrl_outclk\ : std_logic;
SIGNAL \output[0]~1_combout\ : std_logic;
SIGNAL \output[0]~40_combout\ : std_logic;
SIGNAL \output[0]~reg0_emulated_q\ : std_logic;
SIGNAL \output[0]~2_combout\ : std_logic;
SIGNAL \output~33_combout\ : std_logic;
SIGNAL \output~34_combout\ : std_logic;
SIGNAL \output[1]~5_combout\ : std_logic;
SIGNAL \output[1]~41_combout\ : std_logic;
SIGNAL \output[1]~reg0_emulated_q\ : std_logic;
SIGNAL \output[1]~6_combout\ : std_logic;
SIGNAL \output~35_combout\ : std_logic;
SIGNAL \output~36_combout\ : std_logic;
SIGNAL \output[2]~9_combout\ : std_logic;
SIGNAL \output[2]~42_combout\ : std_logic;
SIGNAL \output[2]~reg0_emulated_q\ : std_logic;
SIGNAL \output[2]~10_combout\ : std_logic;
SIGNAL \output~37_combout\ : std_logic;
SIGNAL \output~38_combout\ : std_logic;
SIGNAL \output[3]~13_combout\ : std_logic;
SIGNAL \output[3]~43_combout\ : std_logic;
SIGNAL \output[3]~reg0_emulated_q\ : std_logic;
SIGNAL \output[3]~14_combout\ : std_logic;
SIGNAL \output~39_combout\ : std_logic;
SIGNAL \output[4]~17_combout\ : std_logic;
SIGNAL \output[4]~44_combout\ : std_logic;
SIGNAL \output[4]~reg0_emulated_q\ : std_logic;
SIGNAL \output[4]~18_combout\ : std_logic;
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_output_proc~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_output_proc~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_inp <= inp;
ww_clock <= clock;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\y_present.student~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \y_present.student~0_combout\);

\output_proc~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \output_proc~0_combout\);
\ALT_INV_output_proc~0clkctrl_outclk\ <= NOT \output_proc~0clkctrl_outclk\;
\ALT_INV_output_proc~0_combout\ <= NOT \output_proc~0_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y16_N24
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

-- Location: IOOBUF_X11_Y0_N9
\output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[0]~2_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[1]~6_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[2]~10_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X15_Y0_N16
\output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[3]~14_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X17_Y0_N30
\output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[4]~18_combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOIBUF_X6_Y0_N15
\inp[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(3),
	o => \inp[3]~input_o\);

-- Location: IOIBUF_X6_Y0_N22
\inp[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(2),
	o => \inp[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\inp[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(1),
	o => \inp[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\inp[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(0),
	o => \inp[0]~input_o\);

-- Location: LCCOMB_X14_Y3_N12
\y_present.student~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_present.student~1_combout\ = (!\inp[3]~input_o\ & (!\inp[1]~input_o\ & !\inp[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[3]~input_o\,
	datac => \inp[1]~input_o\,
	datad => \inp[2]~input_o\,
	combout => \y_present.student~1_combout\);

-- Location: LCCOMB_X14_Y3_N22
\y_present.student~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_present.student~2_combout\ = (\y_present.student~1_combout\ & (\inp[0]~input_o\ & ((\y_present.student_577~combout\) # (\y_present.idle_633~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.student~1_combout\,
	datab => \y_present.student_577~combout\,
	datac => \inp[0]~input_o\,
	datad => \y_present.idle_633~combout\,
	combout => \y_present.student~2_combout\);

-- Location: LCCOMB_X15_Y3_N2
\y_present.student~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_present.student~0_combout\ = (\y_present.idle_633~combout\) # (!\output~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y_present.idle_633~combout\,
	datad => \output~31_combout\,
	combout => \y_present.student~0_combout\);

-- Location: CLKCTRL_G1
\y_present.student~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \y_present.student~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \y_present.student~0clkctrl_outclk\);

-- Location: LCCOMB_X16_Y3_N22
\y_present.student_577\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_present.student_577~combout\ = (GLOBAL(\y_present.student~0clkctrl_outclk\) & (\y_present.student~2_combout\)) # (!GLOBAL(\y_present.student~0clkctrl_outclk\) & ((\y_present.student_577~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.student~2_combout\,
	datac => \y_present.student_577~combout\,
	datad => \y_present.student~0clkctrl_outclk\,
	combout => \y_present.student_577~combout\);

-- Location: LCCOMB_X16_Y3_N18
\y_present.professor~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_present.professor~0_combout\ = (!\inp[3]~input_o\ & (\inp[2]~input_o\ & ((\y_present.professor_605~combout\) # (!\y_present.researcher~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[3]~input_o\,
	datab => \inp[2]~input_o\,
	datac => \y_present.professor_605~combout\,
	datad => \y_present.researcher~0_combout\,
	combout => \y_present.professor~0_combout\);

-- Location: LCCOMB_X16_Y3_N24
\y_present.professor_605\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_present.professor_605~combout\ = (GLOBAL(\y_present.student~0clkctrl_outclk\) & (\y_present.professor~0_combout\)) # (!GLOBAL(\y_present.student~0clkctrl_outclk\) & ((\y_present.professor_605~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_present.professor~0_combout\,
	datac => \y_present.professor_605~combout\,
	datad => \y_present.student~0clkctrl_outclk\,
	combout => \y_present.professor_605~combout\);

-- Location: LCCOMB_X16_Y3_N14
\y_present.idle~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_present.idle~0_combout\ = (\y_present.student_577~combout\) # ((\y_present.idle_633~combout\) # ((\inp[2]~input_o\ & \y_present.professor_605~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[2]~input_o\,
	datab => \y_present.student_577~combout\,
	datac => \y_present.professor_605~combout\,
	datad => \y_present.idle_633~combout\,
	combout => \y_present.idle~0_combout\);

-- Location: LCCOMB_X14_Y3_N28
\y_present.idle~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_present.idle~1_combout\ = (\inp[2]~input_o\) # ((\inp[1]~input_o\) # ((\inp[0]~input_o\ & \y_present.idle~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[2]~input_o\,
	datab => \inp[0]~input_o\,
	datac => \inp[1]~input_o\,
	datad => \y_present.idle~0_combout\,
	combout => \y_present.idle~1_combout\);

-- Location: LCCOMB_X14_Y3_N30
\y_present.idle~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_present.idle~2_combout\ = (\inp[3]~input_o\) # ((\y_present.idle~1_combout\ & ((\y_present.researcher_591~combout\) # (\y_present.idle~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.researcher_591~combout\,
	datab => \y_present.idle~1_combout\,
	datac => \inp[3]~input_o\,
	datad => \y_present.idle~0_combout\,
	combout => \y_present.idle~2_combout\);

-- Location: LCCOMB_X14_Y3_N16
\y_present.idle_633\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_present.idle_633~combout\ = (GLOBAL(\y_present.student~0clkctrl_outclk\) & ((!\y_present.idle~2_combout\))) # (!GLOBAL(\y_present.student~0clkctrl_outclk\) & (\y_present.idle_633~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_present.idle_633~combout\,
	datac => \y_present.idle~2_combout\,
	datad => \y_present.student~0clkctrl_outclk\,
	combout => \y_present.idle_633~combout\);

-- Location: LCCOMB_X16_Y3_N10
\y_present.researcher~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_present.researcher~0_combout\ = (!\y_present.researcher_591~combout\ & (!\y_present.idle_633~combout\ & !\y_present.student_577~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.researcher_591~combout\,
	datac => \y_present.idle_633~combout\,
	datad => \y_present.student_577~combout\,
	combout => \y_present.researcher~0_combout\);

-- Location: LCCOMB_X16_Y3_N12
\y_present.researcher~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_present.researcher~1_combout\ = (!\inp[3]~input_o\ & (!\inp[2]~input_o\ & (\inp[1]~input_o\ & !\y_present.researcher~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[3]~input_o\,
	datab => \inp[2]~input_o\,
	datac => \inp[1]~input_o\,
	datad => \y_present.researcher~0_combout\,
	combout => \y_present.researcher~1_combout\);

-- Location: LCCOMB_X16_Y3_N16
\y_present.researcher_591\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_present.researcher_591~combout\ = (GLOBAL(\y_present.student~0clkctrl_outclk\) & ((\y_present.researcher~1_combout\))) # (!GLOBAL(\y_present.student~0clkctrl_outclk\) & (\y_present.researcher_591~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_present.researcher_591~combout\,
	datac => \y_present.researcher~1_combout\,
	datad => \y_present.student~0clkctrl_outclk\,
	combout => \y_present.researcher_591~combout\);

-- Location: LCCOMB_X16_Y3_N0
\y_present.admin_619\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_present.admin_619~combout\ = (GLOBAL(\y_present.student~0clkctrl_outclk\) & (\inp[3]~input_o\)) # (!GLOBAL(\y_present.student~0clkctrl_outclk\) & ((\y_present.admin_619~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[3]~input_o\,
	datab => \y_present.student~0clkctrl_outclk\,
	datad => \y_present.admin_619~combout\,
	combout => \y_present.admin_619~combout\);

-- Location: LCCOMB_X16_Y3_N28
\output~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~31_combout\ = (!\y_present.researcher_591~combout\ & (!\y_present.admin_619~combout\ & (!\y_present.student_577~combout\ & !\y_present.professor_605~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.researcher_591~combout\,
	datab => \y_present.admin_619~combout\,
	datac => \y_present.student_577~combout\,
	datad => \y_present.professor_605~combout\,
	combout => \output~31_combout\);

-- Location: LCCOMB_X16_Y3_N4
\alert~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alert~1_combout\ = (\inp[3]~input_o\ & ((\y_present.professor_605~combout\) # ((\inp[1]~input_o\ & \y_present.student_577~combout\)))) # (!\inp[3]~input_o\ & (\inp[1]~input_o\ & (\y_present.student_577~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[3]~input_o\,
	datab => \inp[1]~input_o\,
	datac => \y_present.student_577~combout\,
	datad => \y_present.professor_605~combout\,
	combout => \alert~1_combout\);

-- Location: LCCOMB_X16_Y3_N20
\alert~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alert~0_combout\ = (\inp[3]~input_o\ & (((\y_present.student_577~combout\) # (\y_present.researcher_591~combout\)))) # (!\inp[3]~input_o\ & (\inp[2]~input_o\ & ((\y_present.student_577~combout\) # (\y_present.researcher_591~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[3]~input_o\,
	datab => \inp[2]~input_o\,
	datac => \y_present.student_577~combout\,
	datad => \y_present.researcher_591~combout\,
	combout => \alert~0_combout\);

-- Location: LCCOMB_X16_Y3_N6
\alert~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alert~2_combout\ = (\alert~1_combout\) # (\alert~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alert~1_combout\,
	datad => \alert~0_combout\,
	combout => \alert~2_combout\);

-- Location: LCCOMB_X15_Y3_N28
alert : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alert~combout\ = (!\y_present.idle_633~combout\ & ((\output~31_combout\ & (\alert~combout\)) # (!\output~31_combout\ & ((\alert~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alert~combout\,
	datab => \output~31_combout\,
	datac => \y_present.idle_633~combout\,
	datad => \alert~2_combout\,
	combout => \alert~combout\);

-- Location: LCCOMB_X15_Y3_N26
\output~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~32_combout\ = (\alert~combout\ & (((\output[0]~2_combout\)))) # (!\alert~combout\ & (((\output[0]~2_combout\ & !\y_present.idle_633~combout\)) # (!\output~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~31_combout\,
	datab => \output[0]~2_combout\,
	datac => \alert~combout\,
	datad => \y_present.idle_633~combout\,
	combout => \output~32_combout\);

-- Location: IOIBUF_X0_Y7_N15
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y4_N0
\counter[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~32_combout\ = counter(0) $ (VCC)
-- \counter[0]~33\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~32_combout\,
	cout => \counter[0]~33\);

-- Location: FF_X19_Y4_N1
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0]~32_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X19_Y4_N2
\counter[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[1]~34_combout\ = (counter(1) & (!\counter[0]~33\)) # (!counter(1) & ((\counter[0]~33\) # (GND)))
-- \counter[1]~35\ = CARRY((!\counter[0]~33\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~33\,
	combout => \counter[1]~34_combout\,
	cout => \counter[1]~35\);

-- Location: FF_X19_Y4_N3
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1]~34_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X19_Y4_N4
\counter[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~36_combout\ = (counter(2) & (\counter[1]~35\ $ (GND))) # (!counter(2) & (!\counter[1]~35\ & VCC))
-- \counter[2]~37\ = CARRY((counter(2) & !\counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~35\,
	combout => \counter[2]~36_combout\,
	cout => \counter[2]~37\);

-- Location: FF_X19_Y4_N5
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[2]~36_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X19_Y4_N6
\counter[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[3]~38_combout\ = (counter(3) & (!\counter[2]~37\)) # (!counter(3) & ((\counter[2]~37\) # (GND)))
-- \counter[3]~39\ = CARRY((!\counter[2]~37\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~37\,
	combout => \counter[3]~38_combout\,
	cout => \counter[3]~39\);

-- Location: FF_X19_Y4_N7
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[3]~38_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X19_Y4_N8
\counter[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[4]~40_combout\ = (counter(4) & (\counter[3]~39\ $ (GND))) # (!counter(4) & (!\counter[3]~39\ & VCC))
-- \counter[4]~41\ = CARRY((counter(4) & !\counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~39\,
	combout => \counter[4]~40_combout\,
	cout => \counter[4]~41\);

-- Location: FF_X19_Y4_N9
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[4]~40_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X19_Y4_N10
\counter[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[5]~42_combout\ = (counter(5) & (!\counter[4]~41\)) # (!counter(5) & ((\counter[4]~41\) # (GND)))
-- \counter[5]~43\ = CARRY((!\counter[4]~41\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~41\,
	combout => \counter[5]~42_combout\,
	cout => \counter[5]~43\);

-- Location: FF_X19_Y4_N11
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[5]~42_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X19_Y4_N12
\counter[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[6]~44_combout\ = (counter(6) & (\counter[5]~43\ $ (GND))) # (!counter(6) & (!\counter[5]~43\ & VCC))
-- \counter[6]~45\ = CARRY((counter(6) & !\counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~43\,
	combout => \counter[6]~44_combout\,
	cout => \counter[6]~45\);

-- Location: FF_X19_Y4_N13
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[6]~44_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X19_Y4_N14
\counter[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[7]~46_combout\ = (counter(7) & (!\counter[6]~45\)) # (!counter(7) & ((\counter[6]~45\) # (GND)))
-- \counter[7]~47\ = CARRY((!\counter[6]~45\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~45\,
	combout => \counter[7]~46_combout\,
	cout => \counter[7]~47\);

-- Location: FF_X19_Y4_N15
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[7]~46_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X19_Y4_N16
\counter[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[8]~48_combout\ = (counter(8) & (\counter[7]~47\ $ (GND))) # (!counter(8) & (!\counter[7]~47\ & VCC))
-- \counter[8]~49\ = CARRY((counter(8) & !\counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~47\,
	combout => \counter[8]~48_combout\,
	cout => \counter[8]~49\);

-- Location: FF_X19_Y4_N17
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[8]~48_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X19_Y4_N18
\counter[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[9]~50_combout\ = (counter(9) & (!\counter[8]~49\)) # (!counter(9) & ((\counter[8]~49\) # (GND)))
-- \counter[9]~51\ = CARRY((!\counter[8]~49\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~49\,
	combout => \counter[9]~50_combout\,
	cout => \counter[9]~51\);

-- Location: FF_X19_Y4_N19
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[9]~50_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X19_Y4_N20
\counter[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[10]~52_combout\ = (counter(10) & (\counter[9]~51\ $ (GND))) # (!counter(10) & (!\counter[9]~51\ & VCC))
-- \counter[10]~53\ = CARRY((counter(10) & !\counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~51\,
	combout => \counter[10]~52_combout\,
	cout => \counter[10]~53\);

-- Location: FF_X19_Y4_N21
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[10]~52_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X19_Y4_N22
\counter[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[11]~54_combout\ = (counter(11) & (!\counter[10]~53\)) # (!counter(11) & ((\counter[10]~53\) # (GND)))
-- \counter[11]~55\ = CARRY((!\counter[10]~53\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~53\,
	combout => \counter[11]~54_combout\,
	cout => \counter[11]~55\);

-- Location: FF_X19_Y4_N23
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[11]~54_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X19_Y4_N24
\counter[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[12]~56_combout\ = (counter(12) & (\counter[11]~55\ $ (GND))) # (!counter(12) & (!\counter[11]~55\ & VCC))
-- \counter[12]~57\ = CARRY((counter(12) & !\counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~55\,
	combout => \counter[12]~56_combout\,
	cout => \counter[12]~57\);

-- Location: FF_X19_Y4_N25
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[12]~56_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X19_Y4_N26
\counter[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[13]~58_combout\ = (counter(13) & (!\counter[12]~57\)) # (!counter(13) & ((\counter[12]~57\) # (GND)))
-- \counter[13]~59\ = CARRY((!\counter[12]~57\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~57\,
	combout => \counter[13]~58_combout\,
	cout => \counter[13]~59\);

-- Location: FF_X18_Y3_N21
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \counter[13]~58_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	sload => VCC,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X19_Y4_N28
\counter[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[14]~60_combout\ = (counter(14) & (\counter[13]~59\ $ (GND))) # (!counter(14) & (!\counter[13]~59\ & VCC))
-- \counter[14]~61\ = CARRY((counter(14) & !\counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~59\,
	combout => \counter[14]~60_combout\,
	cout => \counter[14]~61\);

-- Location: FF_X19_Y4_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[14]~60_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X19_Y4_N30
\counter[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[15]~62_combout\ = (counter(15) & (!\counter[14]~61\)) # (!counter(15) & ((\counter[14]~61\) # (GND)))
-- \counter[15]~63\ = CARRY((!\counter[14]~61\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \counter[14]~61\,
	combout => \counter[15]~62_combout\,
	cout => \counter[15]~63\);

-- Location: FF_X19_Y4_N31
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[15]~62_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X19_Y3_N0
\counter[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[16]~64_combout\ = (counter(16) & (\counter[15]~63\ $ (GND))) # (!counter(16) & (!\counter[15]~63\ & VCC))
-- \counter[16]~65\ = CARRY((counter(16) & !\counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~63\,
	combout => \counter[16]~64_combout\,
	cout => \counter[16]~65\);

-- Location: FF_X19_Y3_N1
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[16]~64_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X19_Y3_N2
\counter[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[17]~66_combout\ = (counter(17) & (!\counter[16]~65\)) # (!counter(17) & ((\counter[16]~65\) # (GND)))
-- \counter[17]~67\ = CARRY((!\counter[16]~65\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~65\,
	combout => \counter[17]~66_combout\,
	cout => \counter[17]~67\);

-- Location: FF_X19_Y3_N3
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[17]~66_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X19_Y3_N4
\counter[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[18]~68_combout\ = (counter(18) & (\counter[17]~67\ $ (GND))) # (!counter(18) & (!\counter[17]~67\ & VCC))
-- \counter[18]~69\ = CARRY((counter(18) & !\counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \counter[17]~67\,
	combout => \counter[18]~68_combout\,
	cout => \counter[18]~69\);

-- Location: FF_X19_Y3_N5
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[18]~68_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X19_Y3_N6
\counter[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[19]~70_combout\ = (counter(19) & (!\counter[18]~69\)) # (!counter(19) & ((\counter[18]~69\) # (GND)))
-- \counter[19]~71\ = CARRY((!\counter[18]~69\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \counter[18]~69\,
	combout => \counter[19]~70_combout\,
	cout => \counter[19]~71\);

-- Location: FF_X19_Y3_N7
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[19]~70_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X19_Y3_N8
\counter[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[20]~72_combout\ = (counter(20) & (\counter[19]~71\ $ (GND))) # (!counter(20) & (!\counter[19]~71\ & VCC))
-- \counter[20]~73\ = CARRY((counter(20) & !\counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~71\,
	combout => \counter[20]~72_combout\,
	cout => \counter[20]~73\);

-- Location: FF_X20_Y3_N29
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \counter[20]~72_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	sload => VCC,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X19_Y3_N10
\counter[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[21]~74_combout\ = (counter(21) & (!\counter[20]~73\)) # (!counter(21) & ((\counter[20]~73\) # (GND)))
-- \counter[21]~75\ = CARRY((!\counter[20]~73\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \counter[20]~73\,
	combout => \counter[21]~74_combout\,
	cout => \counter[21]~75\);

-- Location: FF_X20_Y3_N31
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \counter[21]~74_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	sload => VCC,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X19_Y3_N12
\counter[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[22]~76_combout\ = (counter(22) & (\counter[21]~75\ $ (GND))) # (!counter(22) & (!\counter[21]~75\ & VCC))
-- \counter[22]~77\ = CARRY((counter(22) & !\counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~75\,
	combout => \counter[22]~76_combout\,
	cout => \counter[22]~77\);

-- Location: FF_X20_Y3_N25
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \counter[22]~76_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	sload => VCC,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X19_Y3_N14
\counter[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[23]~78_combout\ = (counter(23) & (!\counter[22]~77\)) # (!counter(23) & ((\counter[22]~77\) # (GND)))
-- \counter[23]~79\ = CARRY((!\counter[22]~77\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~77\,
	combout => \counter[23]~78_combout\,
	cout => \counter[23]~79\);

-- Location: FF_X20_Y3_N23
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \counter[23]~78_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	sload => VCC,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X19_Y3_N16
\counter[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[24]~80_combout\ = (counter(24) & (\counter[23]~79\ $ (GND))) # (!counter(24) & (!\counter[23]~79\ & VCC))
-- \counter[24]~81\ = CARRY((counter(24) & !\counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \counter[23]~79\,
	combout => \counter[24]~80_combout\,
	cout => \counter[24]~81\);

-- Location: FF_X19_Y3_N17
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[24]~80_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X19_Y3_N18
\counter[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[25]~82_combout\ = (counter(25) & (!\counter[24]~81\)) # (!counter(25) & ((\counter[24]~81\) # (GND)))
-- \counter[25]~83\ = CARRY((!\counter[24]~81\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \counter[24]~81\,
	combout => \counter[25]~82_combout\,
	cout => \counter[25]~83\);

-- Location: FF_X19_Y3_N19
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[25]~82_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X19_Y3_N20
\counter[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[26]~84_combout\ = (counter(26) & (\counter[25]~83\ $ (GND))) # (!counter(26) & (!\counter[25]~83\ & VCC))
-- \counter[26]~85\ = CARRY((counter(26) & !\counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \counter[25]~83\,
	combout => \counter[26]~84_combout\,
	cout => \counter[26]~85\);

-- Location: FF_X19_Y3_N21
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[26]~84_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X19_Y3_N22
\counter[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[27]~86_combout\ = (counter(27) & (!\counter[26]~85\)) # (!counter(27) & ((\counter[26]~85\) # (GND)))
-- \counter[27]~87\ = CARRY((!\counter[26]~85\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datad => VCC,
	cin => \counter[26]~85\,
	combout => \counter[27]~86_combout\,
	cout => \counter[27]~87\);

-- Location: FF_X19_Y3_N23
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[27]~86_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X19_Y3_N24
\counter[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[28]~88_combout\ = (counter(28) & (\counter[27]~87\ $ (GND))) # (!counter(28) & (!\counter[27]~87\ & VCC))
-- \counter[28]~89\ = CARRY((counter(28) & !\counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(28),
	datad => VCC,
	cin => \counter[27]~87\,
	combout => \counter[28]~88_combout\,
	cout => \counter[28]~89\);

-- Location: FF_X19_Y3_N25
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[28]~88_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X19_Y3_N26
\counter[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[29]~90_combout\ = (counter(29) & (!\counter[28]~89\)) # (!counter(29) & ((\counter[28]~89\) # (GND)))
-- \counter[29]~91\ = CARRY((!\counter[28]~89\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \counter[28]~89\,
	combout => \counter[29]~90_combout\,
	cout => \counter[29]~91\);

-- Location: FF_X19_Y3_N27
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[29]~90_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X19_Y3_N28
\counter[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[30]~92_combout\ = (counter(30) & (\counter[29]~91\ $ (GND))) # (!counter(30) & (!\counter[29]~91\ & VCC))
-- \counter[30]~93\ = CARRY((counter(30) & !\counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \counter[29]~91\,
	combout => \counter[30]~92_combout\,
	cout => \counter[30]~93\);

-- Location: FF_X19_Y3_N29
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[30]~92_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X19_Y3_N30
\counter[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[31]~94_combout\ = counter(31) $ (\counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	cin => \counter[30]~93\,
	combout => \counter[31]~94_combout\);

-- Location: FF_X19_Y3_N31
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[31]~94_combout\,
	sclr => \ALT_INV_LessThan0~8_combout\,
	ena => \ALT_INV_output_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LCCOMB_X18_Y3_N22
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (counter(24)) # ((counter(26)) # (counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datac => counter(26),
	datad => counter(25),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X20_Y3_N16
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!counter(22)) # (!counter(23))) # (!counter(20))) # (!counter(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datab => counter(20),
	datac => counter(23),
	datad => counter(22),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X18_Y3_N18
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!counter(17) & (!counter(16) & (!counter(18) & !counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => counter(16),
	datac => counter(18),
	datad => counter(19),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X18_Y3_N14
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!counter(13) & !counter(12))) # (!counter(14))) # (!counter(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(15),
	datac => counter(14),
	datad => counter(12),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X18_Y3_N16
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!counter(10) & (!counter(9) & ((!counter(7)) # (!counter(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(10),
	datac => counter(9),
	datad => counter(7),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X18_Y3_N20
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!counter(11) & (\LessThan0~1_combout\ & (!counter(13) & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => \LessThan0~1_combout\,
	datac => counter(13),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X18_Y3_N28
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~0_combout\) # ((\LessThan0~3_combout\) # ((\LessThan0~1_combout\ & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X18_Y3_N12
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (counter(29)) # ((counter(27) & ((\LessThan0~6_combout\) # (!\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => counter(27),
	datac => counter(29),
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X18_Y3_N26
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (counter(31)) # ((!counter(28) & (!counter(30) & !\LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	datab => counter(28),
	datac => counter(30),
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X15_Y3_N22
\output_proc:ending~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output_proc:ending~0_combout\ = (\output_proc:ending~q\) # ((!\output_proc~0_combout\ & !\LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_proc~0_combout\,
	datac => \output_proc:ending~q\,
	datad => \LessThan0~8_combout\,
	combout => \output_proc:ending~0_combout\);

-- Location: FF_X15_Y3_N7
\output_proc:ending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \output_proc:ending~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_proc:ending~q\);

-- Location: LCCOMB_X15_Y3_N6
\output_proc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output_proc~0_combout\ = (\output_proc:ending~q\) # (!\alert~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output_proc:ending~q\,
	datad => \alert~combout\,
	combout => \output_proc~0_combout\);

-- Location: CLKCTRL_G6
\output_proc~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \output_proc~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \output_proc~0clkctrl_outclk\);

-- Location: LCCOMB_X15_Y3_N0
\output[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[0]~1_combout\ = (GLOBAL(\output_proc~0clkctrl_outclk\) & ((\output~32_combout\))) # (!GLOBAL(\output_proc~0clkctrl_outclk\) & (\output[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output[0]~1_combout\,
	datac => \output~32_combout\,
	datad => \output_proc~0clkctrl_outclk\,
	combout => \output[0]~1_combout\);

-- Location: LCCOMB_X15_Y3_N12
\output[0]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[0]~40_combout\ = !\output[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \output[0]~1_combout\,
	combout => \output[0]~40_combout\);

-- Location: FF_X15_Y3_N13
\output[0]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \output[0]~40_combout\,
	clrn => \ALT_INV_output_proc~0clkctrl_outclk\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[0]~reg0_emulated_q\);

-- Location: LCCOMB_X15_Y3_N20
\output[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[0]~2_combout\ = (\output_proc~0_combout\ & (\output~32_combout\)) # (!\output_proc~0_combout\ & ((\output[0]~1_combout\ $ (\output[0]~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~32_combout\,
	datab => \output_proc~0_combout\,
	datac => \output[0]~1_combout\,
	datad => \output[0]~reg0_emulated_q\,
	combout => \output[0]~2_combout\);

-- Location: LCCOMB_X16_Y3_N30
\output~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~33_combout\ = (\y_present.admin_619~combout\) # ((\y_present.researcher_591~combout\) # ((!\alert~combout\ & \y_present.professor_605~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.admin_619~combout\,
	datab => \alert~combout\,
	datac => \y_present.professor_605~combout\,
	datad => \y_present.researcher_591~combout\,
	combout => \output~33_combout\);

-- Location: LCCOMB_X15_Y3_N4
\output~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~34_combout\ = (\y_present.student~0_combout\ & ((\alert~combout\ & ((\output[1]~6_combout\))) # (!\alert~combout\ & (\output~33_combout\)))) # (!\y_present.student~0_combout\ & (((\output[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.student~0_combout\,
	datab => \output~33_combout\,
	datac => \alert~combout\,
	datad => \output[1]~6_combout\,
	combout => \output~34_combout\);

-- Location: LCCOMB_X15_Y3_N24
\output[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[1]~5_combout\ = (GLOBAL(\output_proc~0clkctrl_outclk\) & ((\output~34_combout\))) # (!GLOBAL(\output_proc~0clkctrl_outclk\) & (\output[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output[1]~5_combout\,
	datac => \output~34_combout\,
	datad => \output_proc~0clkctrl_outclk\,
	combout => \output[1]~5_combout\);

-- Location: LCCOMB_X15_Y3_N16
\output[1]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[1]~41_combout\ = !\output[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \output[1]~5_combout\,
	combout => \output[1]~41_combout\);

-- Location: FF_X15_Y3_N17
\output[1]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \output[1]~41_combout\,
	clrn => \ALT_INV_output_proc~0clkctrl_outclk\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[1]~reg0_emulated_q\);

-- Location: LCCOMB_X15_Y3_N30
\output[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[1]~6_combout\ = (\output_proc~0_combout\ & (((\output~34_combout\)))) # (!\output_proc~0_combout\ & (\output[1]~5_combout\ $ (((\output[1]~reg0_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output[1]~5_combout\,
	datab => \output_proc~0_combout\,
	datac => \output~34_combout\,
	datad => \output[1]~reg0_emulated_q\,
	combout => \output[1]~6_combout\);

-- Location: LCCOMB_X16_Y3_N26
\output~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~35_combout\ = (!\alert~combout\ & ((\y_present.admin_619~combout\) # (\y_present.professor_605~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.admin_619~combout\,
	datab => \alert~combout\,
	datad => \y_present.professor_605~combout\,
	combout => \output~35_combout\);

-- Location: LCCOMB_X15_Y3_N8
\output~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~36_combout\ = (\output~35_combout\) # ((\output[2]~10_combout\ & ((\alert~combout\) # (!\y_present.student~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.student~0_combout\,
	datab => \output~35_combout\,
	datac => \output[2]~10_combout\,
	datad => \alert~combout\,
	combout => \output~36_combout\);

-- Location: LCCOMB_X15_Y3_N10
\output[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[2]~9_combout\ = (GLOBAL(\output_proc~0clkctrl_outclk\) & ((\output~36_combout\))) # (!GLOBAL(\output_proc~0clkctrl_outclk\) & (\output[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output[2]~9_combout\,
	datac => \output~36_combout\,
	datad => \output_proc~0clkctrl_outclk\,
	combout => \output[2]~9_combout\);

-- Location: LCCOMB_X15_Y3_N18
\output[2]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[2]~42_combout\ = !\output[2]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \output[2]~9_combout\,
	combout => \output[2]~42_combout\);

-- Location: FF_X15_Y3_N19
\output[2]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \output[2]~42_combout\,
	clrn => \ALT_INV_output_proc~0clkctrl_outclk\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[2]~reg0_emulated_q\);

-- Location: LCCOMB_X15_Y3_N14
\output[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[2]~10_combout\ = (\output_proc~0_combout\ & (((\output~36_combout\)))) # (!\output_proc~0_combout\ & (\output[2]~9_combout\ $ (((\output[2]~reg0_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output[2]~9_combout\,
	datab => \output_proc~0_combout\,
	datac => \output~36_combout\,
	datad => \output[2]~reg0_emulated_q\,
	combout => \output[2]~10_combout\);

-- Location: LCCOMB_X17_Y3_N12
\output~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~37_combout\ = (\alert~combout\ & ((\output[3]~14_combout\))) # (!\alert~combout\ & (\y_present.admin_619~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alert~combout\,
	datac => \y_present.admin_619~combout\,
	datad => \output[3]~14_combout\,
	combout => \output~37_combout\);

-- Location: LCCOMB_X18_Y3_N24
\output~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~38_combout\ = (\output~37_combout\) # ((\output[3]~14_combout\ & (\output~31_combout\ & !\y_present.idle_633~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~37_combout\,
	datab => \output[3]~14_combout\,
	datac => \output~31_combout\,
	datad => \y_present.idle_633~combout\,
	combout => \output~38_combout\);

-- Location: LCCOMB_X18_Y3_N0
\output[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[3]~13_combout\ = (GLOBAL(\output_proc~0clkctrl_outclk\) & (\output~38_combout\)) # (!GLOBAL(\output_proc~0clkctrl_outclk\) & ((\output[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output~38_combout\,
	datac => \output_proc~0clkctrl_outclk\,
	datad => \output[3]~13_combout\,
	combout => \output[3]~13_combout\);

-- Location: LCCOMB_X18_Y3_N30
\output[3]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[3]~43_combout\ = !\output[3]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \output[3]~13_combout\,
	combout => \output[3]~43_combout\);

-- Location: FF_X18_Y3_N31
\output[3]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \output[3]~43_combout\,
	clrn => \ALT_INV_output_proc~0clkctrl_outclk\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[3]~reg0_emulated_q\);

-- Location: LCCOMB_X18_Y3_N8
\output[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[3]~14_combout\ = (\output_proc~0_combout\ & (\output~38_combout\)) # (!\output_proc~0_combout\ & ((\output[3]~reg0_emulated_q\ $ (\output[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_proc~0_combout\,
	datab => \output~38_combout\,
	datac => \output[3]~reg0_emulated_q\,
	datad => \output[3]~13_combout\,
	combout => \output[3]~14_combout\);

-- Location: LCCOMB_X18_Y3_N10
\output~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~39_combout\ = (\output[4]~18_combout\ & ((\alert~combout\) # ((!\y_present.idle_633~combout\ & \output~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alert~combout\,
	datab => \y_present.idle_633~combout\,
	datac => \output[4]~18_combout\,
	datad => \output~31_combout\,
	combout => \output~39_combout\);

-- Location: LCCOMB_X18_Y3_N6
\output[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[4]~17_combout\ = (GLOBAL(\output_proc~0clkctrl_outclk\) & ((\output~39_combout\))) # (!GLOBAL(\output_proc~0clkctrl_outclk\) & (\output[4]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output[4]~17_combout\,
	datac => \output_proc~0clkctrl_outclk\,
	datad => \output~39_combout\,
	combout => \output[4]~17_combout\);

-- Location: LCCOMB_X18_Y3_N2
\output[4]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[4]~44_combout\ = !\output[4]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \output[4]~17_combout\,
	combout => \output[4]~44_combout\);

-- Location: FF_X18_Y3_N3
\output[4]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \output[4]~44_combout\,
	clrn => \ALT_INV_output_proc~0clkctrl_outclk\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[4]~reg0_emulated_q\);

-- Location: LCCOMB_X18_Y3_N4
\output[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[4]~18_combout\ = (\output_proc~0_combout\ & (((\output~39_combout\)))) # (!\output_proc~0_combout\ & (\output[4]~17_combout\ $ (((\output[4]~reg0_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output[4]~17_combout\,
	datab => \output_proc~0_combout\,
	datac => \output~39_combout\,
	datad => \output[4]~reg0_emulated_q\,
	combout => \output[4]~18_combout\);

-- Location: UNVM_X0_Y11_N40
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

-- Location: ADCBLOCK_X10_Y24_N0
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

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;
END structure;


