-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "07/04/2016 20:17:09"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processor IS
    PORT (
	clock : IN std_logic;
	iin : IN std_logic_vector(15 DOWNTO 0);
	resetn : IN std_logic;
	OutputProcessor : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END processor;

-- Design Ports Information
-- resetn	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[4]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[6]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[7]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[8]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[9]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[10]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[11]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[12]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[13]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[14]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputProcessor[15]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[3]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[4]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[7]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[8]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[9]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[10]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[11]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[12]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[15]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[13]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iin[14]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_iin : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_resetn : std_logic;
SIGNAL ww_OutputProcessor : std_logic_vector(15 DOWNTO 0);
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \contador|out[0]~1_combout\ : std_logic;
SIGNAL \contador|out[1]~0_combout\ : std_logic;
SIGNAL \iin[15]~input_o\ : std_logic;
SIGNAL \iin[14]~input_o\ : std_logic;
SIGNAL \iin[13]~input_o\ : std_logic;
SIGNAL \controle|opSelect~0_combout\ : std_logic;
SIGNAL \controle|Equal2~0_combout\ : std_logic;
SIGNAL \controle|negar~combout\ : std_logic;
SIGNAL \controle|Mux28~0_combout\ : std_logic;
SIGNAL \controle|negativo~combout\ : std_logic;
SIGNAL \controle|Mux25~0_combout\ : std_logic;
SIGNAL \controle|Mux24~0_combout\ : std_logic;
SIGNAL \controle|status.11_354~combout\ : std_logic;
SIGNAL \controle|Mux2~0_combout\ : std_logic;
SIGNAL \controle|Mux4~0_combout\ : std_logic;
SIGNAL \controle|immediate_select~combout\ : std_logic;
SIGNAL \controle|Mux12~0_combout\ : std_logic;
SIGNAL \iin[9]~input_o\ : std_logic;
SIGNAL \iin[8]~input_o\ : std_logic;
SIGNAL \controle|Mux11~0_combout\ : std_logic;
SIGNAL \iin[7]~input_o\ : std_logic;
SIGNAL \iin[11]~input_o\ : std_logic;
SIGNAL \iin[12]~input_o\ : std_logic;
SIGNAL \controle|Mux21~0_combout\ : std_logic;
SIGNAL \iin[10]~input_o\ : std_logic;
SIGNAL \controle|Mux0~0_combout\ : std_logic;
SIGNAL \controle|status.00_411~combout\ : std_logic;
SIGNAL \controle|Mux11~1_combout\ : std_logic;
SIGNAL \controle|r0_select~combout\ : std_logic;
SIGNAL \controle|Mux10~0_combout\ : std_logic;
SIGNAL \controle|r1_select~combout\ : std_logic;
SIGNAL \mux|bus[0]~0_combout\ : std_logic;
SIGNAL \mux|bus[0]~1_combout\ : std_logic;
SIGNAL \controle|Mux21~1_combout\ : std_logic;
SIGNAL \controle|r1_enable~combout\ : std_logic;
SIGNAL \controle|a_enable~combout\ : std_logic;
SIGNAL \alu|Add0~1_sumout\ : std_logic;
SIGNAL \RegisterR|out[0]~feeder_combout\ : std_logic;
SIGNAL \alu|out~0_combout\ : std_logic;
SIGNAL \controle|Equal2~1_combout\ : std_logic;
SIGNAL \controle|opSelect~combout\ : std_logic;
SIGNAL \controle|r_enable~combout\ : std_logic;
SIGNAL \controle|Mux22~0_combout\ : std_logic;
SIGNAL \controle|r0_enable~combout\ : std_logic;
SIGNAL \controle|Mux17~0_combout\ : std_logic;
SIGNAL \controle|Mux6~0_combout\ : std_logic;
SIGNAL \controle|Mux7~0_combout\ : std_logic;
SIGNAL \controle|r4_select~combout\ : std_logic;
SIGNAL \controle|Mux9~0_combout\ : std_logic;
SIGNAL \controle|Mux9~1_combout\ : std_logic;
SIGNAL \controle|r2_select~combout\ : std_logic;
SIGNAL \controle|Mux20~0_combout\ : std_logic;
SIGNAL \controle|Mux8~0_combout\ : std_logic;
SIGNAL \controle|r3_select~combout\ : std_logic;
SIGNAL \mux|bus[0]~4_combout\ : std_logic;
SIGNAL \mux|bus[0]~5_combout\ : std_logic;
SIGNAL \controle|Mux19~0_combout\ : std_logic;
SIGNAL \controle|r3_enable~combout\ : std_logic;
SIGNAL \controle|Mux18~0_combout\ : std_logic;
SIGNAL \controle|r4_enable~combout\ : std_logic;
SIGNAL \controle|Mux20~1_combout\ : std_logic;
SIGNAL \controle|r2_enable~combout\ : std_logic;
SIGNAL \controle|Mux5~0_combout\ : std_logic;
SIGNAL \controle|Mux5~1_combout\ : std_logic;
SIGNAL \controle|r6_select~combout\ : std_logic;
SIGNAL \controle|Mux6~1_combout\ : std_logic;
SIGNAL \controle|r5_select~combout\ : std_logic;
SIGNAL \controle|Mux17~1_combout\ : std_logic;
SIGNAL \controle|r5_enable~combout\ : std_logic;
SIGNAL \controle|Mux1~1_combout\ : std_logic;
SIGNAL \controle|Mux1~0_combout\ : std_logic;
SIGNAL \controle|r7_select~combout\ : std_logic;
SIGNAL \mux|bus[0]~2_combout\ : std_logic;
SIGNAL \controle|Mux15~0_combout\ : std_logic;
SIGNAL \controle|r7_enable~combout\ : std_logic;
SIGNAL \controle|Mux16~0_combout\ : std_logic;
SIGNAL \controle|r6_enable~combout\ : std_logic;
SIGNAL \mux|bus[0]~3_combout\ : std_logic;
SIGNAL \mux|bus[0]~6_combout\ : std_logic;
SIGNAL \mux|bus[0]~7_combout\ : std_logic;
SIGNAL \iin[0]~input_o\ : std_logic;
SIGNAL \comp|Add0~1_sumout\ : std_logic;
SIGNAL \alu|Add0~2\ : std_logic;
SIGNAL \alu|Add0~5_sumout\ : std_logic;
SIGNAL \alu|out~1_combout\ : std_logic;
SIGNAL \mux|bus[1]~8_combout\ : std_logic;
SIGNAL \mux|bus[1]~9_combout\ : std_logic;
SIGNAL \mux|bus[1]~10_combout\ : std_logic;
SIGNAL \iin[1]~input_o\ : std_logic;
SIGNAL \comp|Add0~2\ : std_logic;
SIGNAL \comp|Add0~5_sumout\ : std_logic;
SIGNAL \alu|Add0~6\ : std_logic;
SIGNAL \alu|Add0~9_sumout\ : std_logic;
SIGNAL \alu|out~2_combout\ : std_logic;
SIGNAL \Register7|out[2]~feeder_combout\ : std_logic;
SIGNAL \mux|bus[2]~11_combout\ : std_logic;
SIGNAL \mux|bus[2]~12_combout\ : std_logic;
SIGNAL \mux|bus[2]~13_combout\ : std_logic;
SIGNAL \iin[2]~input_o\ : std_logic;
SIGNAL \comp|Add0~6\ : std_logic;
SIGNAL \comp|Add0~9_sumout\ : std_logic;
SIGNAL \alu|Add0~10\ : std_logic;
SIGNAL \alu|Add0~13_sumout\ : std_logic;
SIGNAL \alu|out~3_combout\ : std_logic;
SIGNAL \Register0|out[3]~feeder_combout\ : std_logic;
SIGNAL \Register4|out[3]~feeder_combout\ : std_logic;
SIGNAL \Register3|out[3]~feeder_combout\ : std_logic;
SIGNAL \Register7|out[3]~feeder_combout\ : std_logic;
SIGNAL \Register6|out[3]~feeder_combout\ : std_logic;
SIGNAL \mux|bus[3]~14_combout\ : std_logic;
SIGNAL \mux|bus[3]~15_combout\ : std_logic;
SIGNAL \mux|bus[3]~16_combout\ : std_logic;
SIGNAL \iin[3]~input_o\ : std_logic;
SIGNAL \comp|Add0~10\ : std_logic;
SIGNAL \comp|Add0~13_sumout\ : std_logic;
SIGNAL \alu|Add0~14\ : std_logic;
SIGNAL \alu|Add0~17_sumout\ : std_logic;
SIGNAL \RegisterR|out[4]~feeder_combout\ : std_logic;
SIGNAL \alu|out~4_combout\ : std_logic;
SIGNAL \mux|bus[4]~17_combout\ : std_logic;
SIGNAL \mux|bus[4]~18_combout\ : std_logic;
SIGNAL \mux|bus[4]~19_combout\ : std_logic;
SIGNAL \iin[4]~input_o\ : std_logic;
SIGNAL \comp|Add0~14\ : std_logic;
SIGNAL \comp|Add0~17_sumout\ : std_logic;
SIGNAL \alu|Add0~18\ : std_logic;
SIGNAL \alu|Add0~21_sumout\ : std_logic;
SIGNAL \alu|out~5_combout\ : std_logic;
SIGNAL \Register6|out[5]~feeder_combout\ : std_logic;
SIGNAL \mux|bus[5]~20_combout\ : std_logic;
SIGNAL \mux|bus[5]~21_combout\ : std_logic;
SIGNAL \mux|bus[5]~22_combout\ : std_logic;
SIGNAL \iin[5]~input_o\ : std_logic;
SIGNAL \comp|Add0~18\ : std_logic;
SIGNAL \comp|Add0~21_sumout\ : std_logic;
SIGNAL \Register0|out[6]~feeder_combout\ : std_logic;
SIGNAL \Register1|out[6]~feeder_combout\ : std_logic;
SIGNAL \alu|Add0~22\ : std_logic;
SIGNAL \alu|Add0~25_sumout\ : std_logic;
SIGNAL \alu|out~6_combout\ : std_logic;
SIGNAL \Register4|out[6]~feeder_combout\ : std_logic;
SIGNAL \Register2|out[6]~feeder_combout\ : std_logic;
SIGNAL \Register5|out[6]~feeder_combout\ : std_logic;
SIGNAL \mux|bus[6]~23_combout\ : std_logic;
SIGNAL \mux|bus[6]~24_combout\ : std_logic;
SIGNAL \mux|bus[6]~25_combout\ : std_logic;
SIGNAL \iin[6]~input_o\ : std_logic;
SIGNAL \comp|Add0~22\ : std_logic;
SIGNAL \comp|Add0~25_sumout\ : std_logic;
SIGNAL \Register0|out[7]~feeder_combout\ : std_logic;
SIGNAL \alu|Add0~26\ : std_logic;
SIGNAL \alu|Add0~29_sumout\ : std_logic;
SIGNAL \RegisterR|out[7]~feeder_combout\ : std_logic;
SIGNAL \alu|out~7_combout\ : std_logic;
SIGNAL \Register4|out[7]~feeder_combout\ : std_logic;
SIGNAL \Register2|out[7]~feeder_combout\ : std_logic;
SIGNAL \Register5|out[7]~feeder_combout\ : std_logic;
SIGNAL \Register6|out[7]~feeder_combout\ : std_logic;
SIGNAL \Register7|out[7]~feeder_combout\ : std_logic;
SIGNAL \mux|bus[7]~26_combout\ : std_logic;
SIGNAL \mux|bus[7]~27_combout\ : std_logic;
SIGNAL \mux|bus[7]~28_combout\ : std_logic;
SIGNAL \comp|Add0~26\ : std_logic;
SIGNAL \comp|Add0~29_sumout\ : std_logic;
SIGNAL \alu|Add0~30\ : std_logic;
SIGNAL \alu|Add0~33_sumout\ : std_logic;
SIGNAL \RegisterR|out[8]~feeder_combout\ : std_logic;
SIGNAL \alu|out~8_combout\ : std_logic;
SIGNAL \Register4|out[8]~feeder_combout\ : std_logic;
SIGNAL \Register2|out[8]~feeder_combout\ : std_logic;
SIGNAL \Register5|out[8]~feeder_combout\ : std_logic;
SIGNAL \Register7|out[8]~feeder_combout\ : std_logic;
SIGNAL \mux|bus[8]~29_combout\ : std_logic;
SIGNAL \mux|bus[8]~30_combout\ : std_logic;
SIGNAL \mux|bus[8]~31_combout\ : std_logic;
SIGNAL \comp|Add0~30\ : std_logic;
SIGNAL \comp|Add0~33_sumout\ : std_logic;
SIGNAL \alu|Add0~34\ : std_logic;
SIGNAL \alu|Add0~37_sumout\ : std_logic;
SIGNAL \RegisterR|out[9]~feeder_combout\ : std_logic;
SIGNAL \alu|out~9_combout\ : std_logic;
SIGNAL \mux|bus[9]~32_combout\ : std_logic;
SIGNAL \mux|bus[9]~33_combout\ : std_logic;
SIGNAL \mux|bus[9]~34_combout\ : std_logic;
SIGNAL \comp|Add0~34\ : std_logic;
SIGNAL \comp|Add0~37_sumout\ : std_logic;
SIGNAL \Register0|out[10]~feeder_combout\ : std_logic;
SIGNAL \alu|Add0~38\ : std_logic;
SIGNAL \alu|Add0~41_sumout\ : std_logic;
SIGNAL \RegisterR|out[10]~feeder_combout\ : std_logic;
SIGNAL \alu|out~10_combout\ : std_logic;
SIGNAL \Register4|out[10]~feeder_combout\ : std_logic;
SIGNAL \Register6|out[10]~feeder_combout\ : std_logic;
SIGNAL \Register5|out[10]~feeder_combout\ : std_logic;
SIGNAL \mux|bus[10]~35_combout\ : std_logic;
SIGNAL \mux|bus[10]~36_combout\ : std_logic;
SIGNAL \mux|bus[10]~37_combout\ : std_logic;
SIGNAL \comp|Add0~38\ : std_logic;
SIGNAL \comp|Add0~41_sumout\ : std_logic;
SIGNAL \Register0|out[11]~feeder_combout\ : std_logic;
SIGNAL \alu|Add0~42\ : std_logic;
SIGNAL \alu|Add0~45_sumout\ : std_logic;
SIGNAL \RegisterR|out[11]~feeder_combout\ : std_logic;
SIGNAL \alu|out~11_combout\ : std_logic;
SIGNAL \Register4|out[11]~feeder_combout\ : std_logic;
SIGNAL \Register3|out[11]~feeder_combout\ : std_logic;
SIGNAL \Register2|out[11]~feeder_combout\ : std_logic;
SIGNAL \mux|bus[11]~38_combout\ : std_logic;
SIGNAL \mux|bus[11]~39_combout\ : std_logic;
SIGNAL \mux|bus[11]~40_combout\ : std_logic;
SIGNAL \comp|Add0~42\ : std_logic;
SIGNAL \comp|Add0~45_sumout\ : std_logic;
SIGNAL \alu|Add0~46\ : std_logic;
SIGNAL \alu|Add0~49_sumout\ : std_logic;
SIGNAL \RegisterR|out[12]~feeder_combout\ : std_logic;
SIGNAL \alu|out~12_combout\ : std_logic;
SIGNAL \Register0|out[12]~feeder_combout\ : std_logic;
SIGNAL \Register2|out[12]~feeder_combout\ : std_logic;
SIGNAL \Register6|out[12]~feeder_combout\ : std_logic;
SIGNAL \Register7|out[12]~feeder_combout\ : std_logic;
SIGNAL \mux|bus[12]~41_combout\ : std_logic;
SIGNAL \mux|bus[12]~42_combout\ : std_logic;
SIGNAL \mux|bus[12]~43_combout\ : std_logic;
SIGNAL \comp|Add0~46\ : std_logic;
SIGNAL \comp|Add0~49_sumout\ : std_logic;
SIGNAL \Register0|out[13]~feeder_combout\ : std_logic;
SIGNAL \alu|Add0~50\ : std_logic;
SIGNAL \alu|Add0~53_sumout\ : std_logic;
SIGNAL \RegisterR|out[13]~feeder_combout\ : std_logic;
SIGNAL \alu|out~13_combout\ : std_logic;
SIGNAL \Register2|out[13]~feeder_combout\ : std_logic;
SIGNAL \Register6|out[13]~feeder_combout\ : std_logic;
SIGNAL \mux|bus[13]~44_combout\ : std_logic;
SIGNAL \mux|bus[13]~45_combout\ : std_logic;
SIGNAL \mux|bus[13]~46_combout\ : std_logic;
SIGNAL \comp|Add0~50\ : std_logic;
SIGNAL \comp|Add0~53_sumout\ : std_logic;
SIGNAL \alu|Add0~54\ : std_logic;
SIGNAL \alu|Add0~57_sumout\ : std_logic;
SIGNAL \alu|out~14_combout\ : std_logic;
SIGNAL \mux|bus[14]~47_combout\ : std_logic;
SIGNAL \mux|bus[14]~48_combout\ : std_logic;
SIGNAL \mux|bus[14]~49_combout\ : std_logic;
SIGNAL \comp|Add0~54\ : std_logic;
SIGNAL \comp|Add0~57_sumout\ : std_logic;
SIGNAL \alu|Add0~58\ : std_logic;
SIGNAL \alu|Add0~61_sumout\ : std_logic;
SIGNAL \alu|out~15_combout\ : std_logic;
SIGNAL \Register2|out[15]~feeder_combout\ : std_logic;
SIGNAL \Register4|out[15]~feeder_combout\ : std_logic;
SIGNAL \mux|bus[15]~50_combout\ : std_logic;
SIGNAL \mux|bus[15]~51_combout\ : std_logic;
SIGNAL \mux|bus[15]~52_combout\ : std_logic;
SIGNAL \comp|Add0~58\ : std_logic;
SIGNAL \comp|Add0~61_sumout\ : std_logic;
SIGNAL \RegisterR|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Register5|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \contador|out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Register7|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Register6|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Register4|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Register2|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Register3|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Register1|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Register0|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegisterA|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \comp|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \comp|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \comp|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \comp|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \comp|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \comp|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \comp|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \comp|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \comp|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \comp|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \comp|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \comp|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \comp|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \comp|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_iin[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_iin[0]~input_o\ : std_logic;
SIGNAL \controle|ALT_INV_a_enable~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r_enable~combout\ : std_logic;
SIGNAL \controle|ALT_INV_opSelect~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r0_enable~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r1_enable~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r3_enable~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r2_enable~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r4_enable~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r6_enable~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r5_enable~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r7_enable~combout\ : std_logic;
SIGNAL \controle|ALT_INV_status.00_411~combout\ : std_logic;
SIGNAL \controle|ALT_INV_status.11_354~combout\ : std_logic;
SIGNAL \controle|ALT_INV_negar~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r3_select~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r2_select~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r4_select~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r7_select~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r6_select~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r5_select~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r0_select~combout\ : std_logic;
SIGNAL \controle|ALT_INV_r1_select~combout\ : std_logic;
SIGNAL \controle|ALT_INV_immediate_select~combout\ : std_logic;
SIGNAL \controle|ALT_INV_negativo~combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_opSelect~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \RegisterA|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \controle|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \contador|ALT_INV_out[1]~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[15]~52_combout\ : std_logic;
SIGNAL \Register0|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Register1|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mux|ALT_INV_bus[15]~51_combout\ : std_logic;
SIGNAL \Register3|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Register2|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Register4|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mux|ALT_INV_bus[15]~50_combout\ : std_logic;
SIGNAL \Register6|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Register5|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Register7|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mux|ALT_INV_bus[14]~49_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[14]~48_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[14]~47_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[13]~46_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[13]~45_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[13]~44_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[12]~43_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[12]~42_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[12]~41_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[11]~40_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[11]~39_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[11]~38_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[10]~37_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[10]~36_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[10]~35_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[9]~34_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[9]~33_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[9]~32_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[8]~31_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[8]~30_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[8]~29_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[7]~28_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[7]~27_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[7]~26_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[6]~25_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[6]~24_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[6]~23_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[5]~22_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[5]~21_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[5]~20_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[4]~19_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[4]~18_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[4]~17_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[3]~16_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[3]~15_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[3]~14_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[2]~13_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[2]~12_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[2]~11_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[1]~10_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[1]~9_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[1]~8_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[0]~7_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[0]~6_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[0]~5_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[0]~4_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[0]~3_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[0]~2_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[0]~1_combout\ : std_logic;
SIGNAL \mux|ALT_INV_bus[0]~0_combout\ : std_logic;
SIGNAL \contador|ALT_INV_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \controle|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \RegisterR|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \comp|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \comp|ALT_INV_Add0~57_sumout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_iin <= iin;
ww_resetn <= resetn;
OutputProcessor <= ww_OutputProcessor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\comp|ALT_INV_Add0~53_sumout\ <= NOT \comp|Add0~53_sumout\;
\comp|ALT_INV_Add0~49_sumout\ <= NOT \comp|Add0~49_sumout\;
\comp|ALT_INV_Add0~45_sumout\ <= NOT \comp|Add0~45_sumout\;
\comp|ALT_INV_Add0~41_sumout\ <= NOT \comp|Add0~41_sumout\;
\comp|ALT_INV_Add0~37_sumout\ <= NOT \comp|Add0~37_sumout\;
\comp|ALT_INV_Add0~33_sumout\ <= NOT \comp|Add0~33_sumout\;
\comp|ALT_INV_Add0~29_sumout\ <= NOT \comp|Add0~29_sumout\;
\comp|ALT_INV_Add0~25_sumout\ <= NOT \comp|Add0~25_sumout\;
\comp|ALT_INV_Add0~21_sumout\ <= NOT \comp|Add0~21_sumout\;
\comp|ALT_INV_Add0~17_sumout\ <= NOT \comp|Add0~17_sumout\;
\comp|ALT_INV_Add0~13_sumout\ <= NOT \comp|Add0~13_sumout\;
\comp|ALT_INV_Add0~9_sumout\ <= NOT \comp|Add0~9_sumout\;
\comp|ALT_INV_Add0~5_sumout\ <= NOT \comp|Add0~5_sumout\;
\comp|ALT_INV_Add0~1_sumout\ <= NOT \comp|Add0~1_sumout\;
\ALT_INV_clock~inputCLKENA0_outclk\ <= NOT \clock~inputCLKENA0_outclk\;
\ALT_INV_iin[14]~input_o\ <= NOT \iin[14]~input_o\;
\ALT_INV_iin[13]~input_o\ <= NOT \iin[13]~input_o\;
\ALT_INV_iin[15]~input_o\ <= NOT \iin[15]~input_o\;
\ALT_INV_iin[12]~input_o\ <= NOT \iin[12]~input_o\;
\ALT_INV_iin[11]~input_o\ <= NOT \iin[11]~input_o\;
\ALT_INV_iin[10]~input_o\ <= NOT \iin[10]~input_o\;
\ALT_INV_iin[9]~input_o\ <= NOT \iin[9]~input_o\;
\ALT_INV_iin[8]~input_o\ <= NOT \iin[8]~input_o\;
\ALT_INV_iin[7]~input_o\ <= NOT \iin[7]~input_o\;
\ALT_INV_iin[6]~input_o\ <= NOT \iin[6]~input_o\;
\ALT_INV_iin[5]~input_o\ <= NOT \iin[5]~input_o\;
\ALT_INV_iin[4]~input_o\ <= NOT \iin[4]~input_o\;
\ALT_INV_iin[3]~input_o\ <= NOT \iin[3]~input_o\;
\ALT_INV_iin[2]~input_o\ <= NOT \iin[2]~input_o\;
\ALT_INV_iin[1]~input_o\ <= NOT \iin[1]~input_o\;
\ALT_INV_iin[0]~input_o\ <= NOT \iin[0]~input_o\;
\controle|ALT_INV_a_enable~combout\ <= NOT \controle|a_enable~combout\;
\controle|ALT_INV_r_enable~combout\ <= NOT \controle|r_enable~combout\;
\controle|ALT_INV_opSelect~combout\ <= NOT \controle|opSelect~combout\;
\controle|ALT_INV_r0_enable~combout\ <= NOT \controle|r0_enable~combout\;
\controle|ALT_INV_r1_enable~combout\ <= NOT \controle|r1_enable~combout\;
\controle|ALT_INV_r3_enable~combout\ <= NOT \controle|r3_enable~combout\;
\controle|ALT_INV_r2_enable~combout\ <= NOT \controle|r2_enable~combout\;
\controle|ALT_INV_r4_enable~combout\ <= NOT \controle|r4_enable~combout\;
\controle|ALT_INV_r6_enable~combout\ <= NOT \controle|r6_enable~combout\;
\controle|ALT_INV_r5_enable~combout\ <= NOT \controle|r5_enable~combout\;
\controle|ALT_INV_r7_enable~combout\ <= NOT \controle|r7_enable~combout\;
\controle|ALT_INV_status.00_411~combout\ <= NOT \controle|status.00_411~combout\;
\controle|ALT_INV_status.11_354~combout\ <= NOT \controle|status.11_354~combout\;
\controle|ALT_INV_negar~combout\ <= NOT \controle|negar~combout\;
\controle|ALT_INV_r3_select~combout\ <= NOT \controle|r3_select~combout\;
\controle|ALT_INV_r2_select~combout\ <= NOT \controle|r2_select~combout\;
\controle|ALT_INV_r4_select~combout\ <= NOT \controle|r4_select~combout\;
\controle|ALT_INV_r7_select~combout\ <= NOT \controle|r7_select~combout\;
\controle|ALT_INV_r6_select~combout\ <= NOT \controle|r6_select~combout\;
\controle|ALT_INV_r5_select~combout\ <= NOT \controle|r5_select~combout\;
\controle|ALT_INV_r0_select~combout\ <= NOT \controle|r0_select~combout\;
\controle|ALT_INV_r1_select~combout\ <= NOT \controle|r1_select~combout\;
\controle|ALT_INV_immediate_select~combout\ <= NOT \controle|immediate_select~combout\;
\controle|ALT_INV_negativo~combout\ <= NOT \controle|negativo~combout\;
\controle|ALT_INV_Mux1~1_combout\ <= NOT \controle|Mux1~1_combout\;
\controle|ALT_INV_Equal2~1_combout\ <= NOT \controle|Equal2~1_combout\;
\controle|ALT_INV_Mux22~0_combout\ <= NOT \controle|Mux22~0_combout\;
\controle|ALT_INV_Mux21~1_combout\ <= NOT \controle|Mux21~1_combout\;
\controle|ALT_INV_Mux19~0_combout\ <= NOT \controle|Mux19~0_combout\;
\controle|ALT_INV_Mux20~1_combout\ <= NOT \controle|Mux20~1_combout\;
\controle|ALT_INV_Mux18~0_combout\ <= NOT \controle|Mux18~0_combout\;
\controle|ALT_INV_Mux16~0_combout\ <= NOT \controle|Mux16~0_combout\;
\controle|ALT_INV_Mux17~1_combout\ <= NOT \controle|Mux17~1_combout\;
\controle|ALT_INV_Mux15~0_combout\ <= NOT \controle|Mux15~0_combout\;
\controle|ALT_INV_Mux0~0_combout\ <= NOT \controle|Mux0~0_combout\;
\controle|ALT_INV_Mux25~0_combout\ <= NOT \controle|Mux25~0_combout\;
\controle|ALT_INV_Mux24~0_combout\ <= NOT \controle|Mux24~0_combout\;
\controle|ALT_INV_opSelect~0_combout\ <= NOT \controle|opSelect~0_combout\;
\controle|ALT_INV_Equal2~0_combout\ <= NOT \controle|Equal2~0_combout\;
\RegisterA|ALT_INV_out\(15) <= NOT \RegisterA|out\(15);
\RegisterA|ALT_INV_out\(14) <= NOT \RegisterA|out\(14);
\RegisterA|ALT_INV_out\(13) <= NOT \RegisterA|out\(13);
\RegisterA|ALT_INV_out\(12) <= NOT \RegisterA|out\(12);
\RegisterA|ALT_INV_out\(11) <= NOT \RegisterA|out\(11);
\RegisterA|ALT_INV_out\(10) <= NOT \RegisterA|out\(10);
\RegisterA|ALT_INV_out\(9) <= NOT \RegisterA|out\(9);
\RegisterA|ALT_INV_out\(8) <= NOT \RegisterA|out\(8);
\RegisterA|ALT_INV_out\(7) <= NOT \RegisterA|out\(7);
\RegisterA|ALT_INV_out\(6) <= NOT \RegisterA|out\(6);
\RegisterA|ALT_INV_out\(5) <= NOT \RegisterA|out\(5);
\RegisterA|ALT_INV_out\(4) <= NOT \RegisterA|out\(4);
\RegisterA|ALT_INV_out\(3) <= NOT \RegisterA|out\(3);
\RegisterA|ALT_INV_out\(2) <= NOT \RegisterA|out\(2);
\RegisterA|ALT_INV_out\(1) <= NOT \RegisterA|out\(1);
\RegisterA|ALT_INV_out\(0) <= NOT \RegisterA|out\(0);
\controle|ALT_INV_Mux20~0_combout\ <= NOT \controle|Mux20~0_combout\;
\controle|ALT_INV_Mux9~1_combout\ <= NOT \controle|Mux9~1_combout\;
\controle|ALT_INV_Mux9~0_combout\ <= NOT \controle|Mux9~0_combout\;
\controle|ALT_INV_Mux7~0_combout\ <= NOT \controle|Mux7~0_combout\;
\controle|ALT_INV_Mux1~0_combout\ <= NOT \controle|Mux1~0_combout\;
\controle|ALT_INV_Mux5~1_combout\ <= NOT \controle|Mux5~1_combout\;
\controle|ALT_INV_Mux5~0_combout\ <= NOT \controle|Mux5~0_combout\;
\controle|ALT_INV_Mux6~1_combout\ <= NOT \controle|Mux6~1_combout\;
\controle|ALT_INV_Mux17~0_combout\ <= NOT \controle|Mux17~0_combout\;
\controle|ALT_INV_Mux6~0_combout\ <= NOT \controle|Mux6~0_combout\;
\controle|ALT_INV_Mux11~1_combout\ <= NOT \controle|Mux11~1_combout\;
\controle|ALT_INV_Mux12~0_combout\ <= NOT \controle|Mux12~0_combout\;
\controle|ALT_INV_Mux10~0_combout\ <= NOT \controle|Mux10~0_combout\;
\controle|ALT_INV_Mux21~0_combout\ <= NOT \controle|Mux21~0_combout\;
\controle|ALT_INV_Mux11~0_combout\ <= NOT \controle|Mux11~0_combout\;
\contador|ALT_INV_out[1]~0_combout\ <= NOT \contador|out[1]~0_combout\;
\controle|ALT_INV_Mux4~0_combout\ <= NOT \controle|Mux4~0_combout\;
\controle|ALT_INV_Mux2~0_combout\ <= NOT \controle|Mux2~0_combout\;
\controle|ALT_INV_Mux28~0_combout\ <= NOT \controle|Mux28~0_combout\;
\mux|ALT_INV_bus[15]~52_combout\ <= NOT \mux|bus[15]~52_combout\;
\Register0|ALT_INV_out\(15) <= NOT \Register0|out\(15);
\Register1|ALT_INV_out\(15) <= NOT \Register1|out\(15);
\mux|ALT_INV_bus[15]~51_combout\ <= NOT \mux|bus[15]~51_combout\;
\Register3|ALT_INV_out\(15) <= NOT \Register3|out\(15);
\Register2|ALT_INV_out\(15) <= NOT \Register2|out\(15);
\Register4|ALT_INV_out\(15) <= NOT \Register4|out\(15);
\mux|ALT_INV_bus[15]~50_combout\ <= NOT \mux|bus[15]~50_combout\;
\Register6|ALT_INV_out\(15) <= NOT \Register6|out\(15);
\Register5|ALT_INV_out\(15) <= NOT \Register5|out\(15);
\Register7|ALT_INV_out\(15) <= NOT \Register7|out\(15);
\mux|ALT_INV_bus[14]~49_combout\ <= NOT \mux|bus[14]~49_combout\;
\Register0|ALT_INV_out\(14) <= NOT \Register0|out\(14);
\Register1|ALT_INV_out\(14) <= NOT \Register1|out\(14);
\mux|ALT_INV_bus[14]~48_combout\ <= NOT \mux|bus[14]~48_combout\;
\Register3|ALT_INV_out\(14) <= NOT \Register3|out\(14);
\Register2|ALT_INV_out\(14) <= NOT \Register2|out\(14);
\Register4|ALT_INV_out\(14) <= NOT \Register4|out\(14);
\mux|ALT_INV_bus[14]~47_combout\ <= NOT \mux|bus[14]~47_combout\;
\Register6|ALT_INV_out\(14) <= NOT \Register6|out\(14);
\Register5|ALT_INV_out\(14) <= NOT \Register5|out\(14);
\Register7|ALT_INV_out\(14) <= NOT \Register7|out\(14);
\mux|ALT_INV_bus[13]~46_combout\ <= NOT \mux|bus[13]~46_combout\;
\Register0|ALT_INV_out\(13) <= NOT \Register0|out\(13);
\Register1|ALT_INV_out\(13) <= NOT \Register1|out\(13);
\mux|ALT_INV_bus[13]~45_combout\ <= NOT \mux|bus[13]~45_combout\;
\Register3|ALT_INV_out\(13) <= NOT \Register3|out\(13);
\Register2|ALT_INV_out\(13) <= NOT \Register2|out\(13);
\Register4|ALT_INV_out\(13) <= NOT \Register4|out\(13);
\mux|ALT_INV_bus[13]~44_combout\ <= NOT \mux|bus[13]~44_combout\;
\Register6|ALT_INV_out\(13) <= NOT \Register6|out\(13);
\Register5|ALT_INV_out\(13) <= NOT \Register5|out\(13);
\Register7|ALT_INV_out\(13) <= NOT \Register7|out\(13);
\mux|ALT_INV_bus[12]~43_combout\ <= NOT \mux|bus[12]~43_combout\;
\Register0|ALT_INV_out\(12) <= NOT \Register0|out\(12);
\Register1|ALT_INV_out\(12) <= NOT \Register1|out\(12);
\mux|ALT_INV_bus[12]~42_combout\ <= NOT \mux|bus[12]~42_combout\;
\Register3|ALT_INV_out\(12) <= NOT \Register3|out\(12);
\Register2|ALT_INV_out\(12) <= NOT \Register2|out\(12);
\Register4|ALT_INV_out\(12) <= NOT \Register4|out\(12);
\mux|ALT_INV_bus[12]~41_combout\ <= NOT \mux|bus[12]~41_combout\;
\Register6|ALT_INV_out\(12) <= NOT \Register6|out\(12);
\Register5|ALT_INV_out\(12) <= NOT \Register5|out\(12);
\Register7|ALT_INV_out\(12) <= NOT \Register7|out\(12);
\mux|ALT_INV_bus[11]~40_combout\ <= NOT \mux|bus[11]~40_combout\;
\Register0|ALT_INV_out\(11) <= NOT \Register0|out\(11);
\Register1|ALT_INV_out\(11) <= NOT \Register1|out\(11);
\mux|ALT_INV_bus[11]~39_combout\ <= NOT \mux|bus[11]~39_combout\;
\Register3|ALT_INV_out\(11) <= NOT \Register3|out\(11);
\Register2|ALT_INV_out\(11) <= NOT \Register2|out\(11);
\Register4|ALT_INV_out\(11) <= NOT \Register4|out\(11);
\mux|ALT_INV_bus[11]~38_combout\ <= NOT \mux|bus[11]~38_combout\;
\Register6|ALT_INV_out\(11) <= NOT \Register6|out\(11);
\Register5|ALT_INV_out\(11) <= NOT \Register5|out\(11);
\Register7|ALT_INV_out\(11) <= NOT \Register7|out\(11);
\mux|ALT_INV_bus[10]~37_combout\ <= NOT \mux|bus[10]~37_combout\;
\Register0|ALT_INV_out\(10) <= NOT \Register0|out\(10);
\Register1|ALT_INV_out\(10) <= NOT \Register1|out\(10);
\mux|ALT_INV_bus[10]~36_combout\ <= NOT \mux|bus[10]~36_combout\;
\Register3|ALT_INV_out\(10) <= NOT \Register3|out\(10);
\Register2|ALT_INV_out\(10) <= NOT \Register2|out\(10);
\Register4|ALT_INV_out\(10) <= NOT \Register4|out\(10);
\mux|ALT_INV_bus[10]~35_combout\ <= NOT \mux|bus[10]~35_combout\;
\Register6|ALT_INV_out\(10) <= NOT \Register6|out\(10);
\Register5|ALT_INV_out\(10) <= NOT \Register5|out\(10);
\Register7|ALT_INV_out\(10) <= NOT \Register7|out\(10);
\mux|ALT_INV_bus[9]~34_combout\ <= NOT \mux|bus[9]~34_combout\;
\Register0|ALT_INV_out\(9) <= NOT \Register0|out\(9);
\Register1|ALT_INV_out\(9) <= NOT \Register1|out\(9);
\mux|ALT_INV_bus[9]~33_combout\ <= NOT \mux|bus[9]~33_combout\;
\Register3|ALT_INV_out\(9) <= NOT \Register3|out\(9);
\Register2|ALT_INV_out\(9) <= NOT \Register2|out\(9);
\Register4|ALT_INV_out\(9) <= NOT \Register4|out\(9);
\mux|ALT_INV_bus[9]~32_combout\ <= NOT \mux|bus[9]~32_combout\;
\Register6|ALT_INV_out\(9) <= NOT \Register6|out\(9);
\Register5|ALT_INV_out\(9) <= NOT \Register5|out\(9);
\Register7|ALT_INV_out\(9) <= NOT \Register7|out\(9);
\mux|ALT_INV_bus[8]~31_combout\ <= NOT \mux|bus[8]~31_combout\;
\Register0|ALT_INV_out\(8) <= NOT \Register0|out\(8);
\Register1|ALT_INV_out\(8) <= NOT \Register1|out\(8);
\mux|ALT_INV_bus[8]~30_combout\ <= NOT \mux|bus[8]~30_combout\;
\Register3|ALT_INV_out\(8) <= NOT \Register3|out\(8);
\Register2|ALT_INV_out\(8) <= NOT \Register2|out\(8);
\Register4|ALT_INV_out\(8) <= NOT \Register4|out\(8);
\mux|ALT_INV_bus[8]~29_combout\ <= NOT \mux|bus[8]~29_combout\;
\Register6|ALT_INV_out\(8) <= NOT \Register6|out\(8);
\Register5|ALT_INV_out\(8) <= NOT \Register5|out\(8);
\Register7|ALT_INV_out\(8) <= NOT \Register7|out\(8);
\mux|ALT_INV_bus[7]~28_combout\ <= NOT \mux|bus[7]~28_combout\;
\Register0|ALT_INV_out\(7) <= NOT \Register0|out\(7);
\Register1|ALT_INV_out\(7) <= NOT \Register1|out\(7);
\mux|ALT_INV_bus[7]~27_combout\ <= NOT \mux|bus[7]~27_combout\;
\Register3|ALT_INV_out\(7) <= NOT \Register3|out\(7);
\Register2|ALT_INV_out\(7) <= NOT \Register2|out\(7);
\Register4|ALT_INV_out\(7) <= NOT \Register4|out\(7);
\mux|ALT_INV_bus[7]~26_combout\ <= NOT \mux|bus[7]~26_combout\;
\Register6|ALT_INV_out\(7) <= NOT \Register6|out\(7);
\Register5|ALT_INV_out\(7) <= NOT \Register5|out\(7);
\Register7|ALT_INV_out\(7) <= NOT \Register7|out\(7);
\mux|ALT_INV_bus[6]~25_combout\ <= NOT \mux|bus[6]~25_combout\;
\Register0|ALT_INV_out\(6) <= NOT \Register0|out\(6);
\Register1|ALT_INV_out\(6) <= NOT \Register1|out\(6);
\mux|ALT_INV_bus[6]~24_combout\ <= NOT \mux|bus[6]~24_combout\;
\Register3|ALT_INV_out\(6) <= NOT \Register3|out\(6);
\Register2|ALT_INV_out\(6) <= NOT \Register2|out\(6);
\Register4|ALT_INV_out\(6) <= NOT \Register4|out\(6);
\mux|ALT_INV_bus[6]~23_combout\ <= NOT \mux|bus[6]~23_combout\;
\Register6|ALT_INV_out\(6) <= NOT \Register6|out\(6);
\Register5|ALT_INV_out\(6) <= NOT \Register5|out\(6);
\Register7|ALT_INV_out\(6) <= NOT \Register7|out\(6);
\mux|ALT_INV_bus[5]~22_combout\ <= NOT \mux|bus[5]~22_combout\;
\Register0|ALT_INV_out\(5) <= NOT \Register0|out\(5);
\Register1|ALT_INV_out\(5) <= NOT \Register1|out\(5);
\mux|ALT_INV_bus[5]~21_combout\ <= NOT \mux|bus[5]~21_combout\;
\Register3|ALT_INV_out\(5) <= NOT \Register3|out\(5);
\Register2|ALT_INV_out\(5) <= NOT \Register2|out\(5);
\Register4|ALT_INV_out\(5) <= NOT \Register4|out\(5);
\mux|ALT_INV_bus[5]~20_combout\ <= NOT \mux|bus[5]~20_combout\;
\Register6|ALT_INV_out\(5) <= NOT \Register6|out\(5);
\Register5|ALT_INV_out\(5) <= NOT \Register5|out\(5);
\Register7|ALT_INV_out\(5) <= NOT \Register7|out\(5);
\mux|ALT_INV_bus[4]~19_combout\ <= NOT \mux|bus[4]~19_combout\;
\Register0|ALT_INV_out\(4) <= NOT \Register0|out\(4);
\Register1|ALT_INV_out\(4) <= NOT \Register1|out\(4);
\mux|ALT_INV_bus[4]~18_combout\ <= NOT \mux|bus[4]~18_combout\;
\Register3|ALT_INV_out\(4) <= NOT \Register3|out\(4);
\Register2|ALT_INV_out\(4) <= NOT \Register2|out\(4);
\Register4|ALT_INV_out\(4) <= NOT \Register4|out\(4);
\mux|ALT_INV_bus[4]~17_combout\ <= NOT \mux|bus[4]~17_combout\;
\Register6|ALT_INV_out\(4) <= NOT \Register6|out\(4);
\Register5|ALT_INV_out\(4) <= NOT \Register5|out\(4);
\Register7|ALT_INV_out\(4) <= NOT \Register7|out\(4);
\mux|ALT_INV_bus[3]~16_combout\ <= NOT \mux|bus[3]~16_combout\;
\Register0|ALT_INV_out\(3) <= NOT \Register0|out\(3);
\Register1|ALT_INV_out\(3) <= NOT \Register1|out\(3);
\mux|ALT_INV_bus[3]~15_combout\ <= NOT \mux|bus[3]~15_combout\;
\Register3|ALT_INV_out\(3) <= NOT \Register3|out\(3);
\Register2|ALT_INV_out\(3) <= NOT \Register2|out\(3);
\Register4|ALT_INV_out\(3) <= NOT \Register4|out\(3);
\mux|ALT_INV_bus[3]~14_combout\ <= NOT \mux|bus[3]~14_combout\;
\Register6|ALT_INV_out\(3) <= NOT \Register6|out\(3);
\Register5|ALT_INV_out\(3) <= NOT \Register5|out\(3);
\Register7|ALT_INV_out\(3) <= NOT \Register7|out\(3);
\mux|ALT_INV_bus[2]~13_combout\ <= NOT \mux|bus[2]~13_combout\;
\Register0|ALT_INV_out\(2) <= NOT \Register0|out\(2);
\Register1|ALT_INV_out\(2) <= NOT \Register1|out\(2);
\mux|ALT_INV_bus[2]~12_combout\ <= NOT \mux|bus[2]~12_combout\;
\Register3|ALT_INV_out\(2) <= NOT \Register3|out\(2);
\Register2|ALT_INV_out\(2) <= NOT \Register2|out\(2);
\Register4|ALT_INV_out\(2) <= NOT \Register4|out\(2);
\mux|ALT_INV_bus[2]~11_combout\ <= NOT \mux|bus[2]~11_combout\;
\Register6|ALT_INV_out\(2) <= NOT \Register6|out\(2);
\Register5|ALT_INV_out\(2) <= NOT \Register5|out\(2);
\Register7|ALT_INV_out\(2) <= NOT \Register7|out\(2);
\mux|ALT_INV_bus[1]~10_combout\ <= NOT \mux|bus[1]~10_combout\;
\Register0|ALT_INV_out\(1) <= NOT \Register0|out\(1);
\Register1|ALT_INV_out\(1) <= NOT \Register1|out\(1);
\mux|ALT_INV_bus[1]~9_combout\ <= NOT \mux|bus[1]~9_combout\;
\Register3|ALT_INV_out\(1) <= NOT \Register3|out\(1);
\Register2|ALT_INV_out\(1) <= NOT \Register2|out\(1);
\Register4|ALT_INV_out\(1) <= NOT \Register4|out\(1);
\mux|ALT_INV_bus[1]~8_combout\ <= NOT \mux|bus[1]~8_combout\;
\Register6|ALT_INV_out\(1) <= NOT \Register6|out\(1);
\Register5|ALT_INV_out\(1) <= NOT \Register5|out\(1);
\Register7|ALT_INV_out\(1) <= NOT \Register7|out\(1);
\mux|ALT_INV_bus[0]~7_combout\ <= NOT \mux|bus[0]~7_combout\;
\Register0|ALT_INV_out\(0) <= NOT \Register0|out\(0);
\Register1|ALT_INV_out\(0) <= NOT \Register1|out\(0);
\mux|ALT_INV_bus[0]~6_combout\ <= NOT \mux|bus[0]~6_combout\;
\mux|ALT_INV_bus[0]~5_combout\ <= NOT \mux|bus[0]~5_combout\;
\mux|ALT_INV_bus[0]~4_combout\ <= NOT \mux|bus[0]~4_combout\;
\Register3|ALT_INV_out\(0) <= NOT \Register3|out\(0);
\Register2|ALT_INV_out\(0) <= NOT \Register2|out\(0);
\Register4|ALT_INV_out\(0) <= NOT \Register4|out\(0);
\mux|ALT_INV_bus[0]~3_combout\ <= NOT \mux|bus[0]~3_combout\;
\Register6|ALT_INV_out\(0) <= NOT \Register6|out\(0);
\Register5|ALT_INV_out\(0) <= NOT \Register5|out\(0);
\Register7|ALT_INV_out\(0) <= NOT \Register7|out\(0);
\mux|ALT_INV_bus[0]~2_combout\ <= NOT \mux|bus[0]~2_combout\;
\mux|ALT_INV_bus[0]~1_combout\ <= NOT \mux|bus[0]~1_combout\;
\mux|ALT_INV_bus[0]~0_combout\ <= NOT \mux|bus[0]~0_combout\;
\contador|ALT_INV_out\(1) <= NOT \contador|out\(1);
\contador|ALT_INV_out\(0) <= NOT \contador|out\(0);
\controle|ALT_INV_Mux8~0_combout\ <= NOT \controle|Mux8~0_combout\;
\alu|ALT_INV_Add0~53_sumout\ <= NOT \alu|Add0~53_sumout\;
\alu|ALT_INV_Add0~49_sumout\ <= NOT \alu|Add0~49_sumout\;
\alu|ALT_INV_Add0~45_sumout\ <= NOT \alu|Add0~45_sumout\;
\alu|ALT_INV_Add0~41_sumout\ <= NOT \alu|Add0~41_sumout\;
\alu|ALT_INV_Add0~37_sumout\ <= NOT \alu|Add0~37_sumout\;
\alu|ALT_INV_Add0~33_sumout\ <= NOT \alu|Add0~33_sumout\;
\alu|ALT_INV_Add0~29_sumout\ <= NOT \alu|Add0~29_sumout\;
\alu|ALT_INV_Add0~17_sumout\ <= NOT \alu|Add0~17_sumout\;
\alu|ALT_INV_Add0~1_sumout\ <= NOT \alu|Add0~1_sumout\;
\RegisterR|ALT_INV_out\(15) <= NOT \RegisterR|out\(15);
\RegisterR|ALT_INV_out\(14) <= NOT \RegisterR|out\(14);
\RegisterR|ALT_INV_out\(13) <= NOT \RegisterR|out\(13);
\RegisterR|ALT_INV_out\(12) <= NOT \RegisterR|out\(12);
\RegisterR|ALT_INV_out\(11) <= NOT \RegisterR|out\(11);
\RegisterR|ALT_INV_out\(10) <= NOT \RegisterR|out\(10);
\RegisterR|ALT_INV_out\(9) <= NOT \RegisterR|out\(9);
\RegisterR|ALT_INV_out\(8) <= NOT \RegisterR|out\(8);
\RegisterR|ALT_INV_out\(7) <= NOT \RegisterR|out\(7);
\RegisterR|ALT_INV_out\(6) <= NOT \RegisterR|out\(6);
\RegisterR|ALT_INV_out\(5) <= NOT \RegisterR|out\(5);
\RegisterR|ALT_INV_out\(4) <= NOT \RegisterR|out\(4);
\RegisterR|ALT_INV_out\(3) <= NOT \RegisterR|out\(3);
\RegisterR|ALT_INV_out\(2) <= NOT \RegisterR|out\(2);
\RegisterR|ALT_INV_out\(1) <= NOT \RegisterR|out\(1);
\RegisterR|ALT_INV_out\(0) <= NOT \RegisterR|out\(0);
\comp|ALT_INV_Add0~61_sumout\ <= NOT \comp|Add0~61_sumout\;
\comp|ALT_INV_Add0~57_sumout\ <= NOT \comp|Add0~57_sumout\;

-- Location: IOOBUF_X89_Y6_N22
\OutputProcessor[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(0));

-- Location: IOOBUF_X89_Y8_N22
\OutputProcessor[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(1));

-- Location: IOOBUF_X89_Y9_N5
\OutputProcessor[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(2));

-- Location: IOOBUF_X89_Y6_N39
\OutputProcessor[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(3));

-- Location: IOOBUF_X72_Y0_N53
\OutputProcessor[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(4));

-- Location: IOOBUF_X68_Y0_N36
\OutputProcessor[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(5));

-- Location: IOOBUF_X66_Y0_N59
\OutputProcessor[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(6));

-- Location: IOOBUF_X68_Y0_N53
\OutputProcessor[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(7));

-- Location: IOOBUF_X89_Y9_N39
\OutputProcessor[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~33_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(8));

-- Location: IOOBUF_X70_Y0_N53
\OutputProcessor[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~37_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(9));

-- Location: IOOBUF_X72_Y0_N2
\OutputProcessor[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~41_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(10));

-- Location: IOOBUF_X70_Y0_N36
\OutputProcessor[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~45_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(11));

-- Location: IOOBUF_X89_Y8_N39
\OutputProcessor[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~49_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(12));

-- Location: IOOBUF_X70_Y0_N19
\OutputProcessor[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~53_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(13));

-- Location: IOOBUF_X68_Y0_N19
\OutputProcessor[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~57_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(14));

-- Location: IOOBUF_X72_Y0_N36
\OutputProcessor[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|Add0~61_sumout\,
	devoe => ww_devoe,
	o => ww_OutputProcessor(15));

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: LABCELL_X75_Y11_N24
\contador|out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contador|out[0]~1_combout\ = ( !\contador|out\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \contador|ALT_INV_out\(0),
	combout => \contador|out[0]~1_combout\);

-- Location: FF_X73_Y11_N20
\contador|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	asdata => \contador|out[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador|out\(0));

-- Location: LABCELL_X74_Y12_N12
\contador|out[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contador|out[1]~0_combout\ = ( \contador|out\(1) & ( !\contador|out\(0) ) ) # ( !\contador|out\(1) & ( \contador|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \contador|ALT_INV_out\(0),
	dataf => \contador|ALT_INV_out\(1),
	combout => \contador|out[1]~0_combout\);

-- Location: FF_X73_Y11_N50
\contador|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	asdata => \contador|out[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador|out\(1));

-- Location: IOIBUF_X89_Y6_N4
\iin[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(15),
	o => \iin[15]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\iin[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(14),
	o => \iin[14]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\iin[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(13),
	o => \iin[13]~input_o\);

-- Location: LABCELL_X74_Y11_N12
\controle|opSelect~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|opSelect~0_combout\ = ( \iin[13]~input_o\ & ( (!\contador|out\(1) & (!\contador|out\(0) & ((!\iin[14]~input_o\) # (\iin[15]~input_o\)))) ) ) # ( !\iin[13]~input_o\ & ( (!\contador|out\(1) & (!\contador|out\(0) & ((!\iin[15]~input_o\) # 
-- (!\iin[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000011000100000000001100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[15]~input_o\,
	datab => \contador|ALT_INV_out\(1),
	datac => \ALT_INV_iin[14]~input_o\,
	datad => \contador|ALT_INV_out\(0),
	dataf => \ALT_INV_iin[13]~input_o\,
	combout => \controle|opSelect~0_combout\);

-- Location: LABCELL_X74_Y11_N42
\controle|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Equal2~0_combout\ = ( \iin[13]~input_o\ & ( (!\iin[14]~input_o\ & !\iin[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_iin[14]~input_o\,
	datac => \ALT_INV_iin[15]~input_o\,
	dataf => \ALT_INV_iin[13]~input_o\,
	combout => \controle|Equal2~0_combout\);

-- Location: LABCELL_X74_Y11_N27
\controle|negar\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|negar~combout\ = ( \controle|Equal2~0_combout\ & ( (\controle|negar~combout\) # (\controle|opSelect~0_combout\) ) ) # ( !\controle|Equal2~0_combout\ & ( (!\controle|opSelect~0_combout\ & \controle|negar~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controle|ALT_INV_opSelect~0_combout\,
	datad => \controle|ALT_INV_negar~combout\,
	dataf => \controle|ALT_INV_Equal2~0_combout\,
	combout => \controle|negar~combout\);

-- Location: LABCELL_X74_Y11_N9
\controle|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux28~0_combout\ = ( \contador|out\(0) & ( \contador|out\(1) ) ) # ( !\contador|out\(0) & ( (\contador|out\(1) & \controle|negar~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \contador|ALT_INV_out\(1),
	datad => \controle|ALT_INV_negar~combout\,
	dataf => \contador|ALT_INV_out\(0),
	combout => \controle|Mux28~0_combout\);

-- Location: LABCELL_X74_Y11_N6
\controle|negativo\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|negativo~combout\ = ( \controle|negativo~combout\ & ( (!\controle|Mux28~0_combout\) # (!\contador|out\(0)) ) ) # ( !\controle|negativo~combout\ & ( (\controle|Mux28~0_combout\ & !\contador|out\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controle|ALT_INV_Mux28~0_combout\,
	datac => \contador|ALT_INV_out\(0),
	dataf => \controle|ALT_INV_negativo~combout\,
	combout => \controle|negativo~combout\);

-- Location: LABCELL_X73_Y11_N18
\controle|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux25~0_combout\ = ( \contador|out\(1) & ( !\contador|out\(0) ) ) # ( !\contador|out\(1) & ( ((\iin[14]~input_o\ & (!\iin[15]~input_o\ $ (!\iin[13]~input_o\)))) # (\contador|out\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001011111111000100101111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[15]~input_o\,
	datab => \ALT_INV_iin[14]~input_o\,
	datac => \ALT_INV_iin[13]~input_o\,
	datad => \contador|ALT_INV_out\(0),
	dataf => \contador|ALT_INV_out\(1),
	combout => \controle|Mux25~0_combout\);

-- Location: LABCELL_X73_Y11_N45
\controle|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux24~0_combout\ = ( \iin[13]~input_o\ & ( (\iin[15]~input_o\ & (!\iin[14]~input_o\ & !\contador|out\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[15]~input_o\,
	datab => \ALT_INV_iin[14]~input_o\,
	datac => \contador|ALT_INV_out\(0),
	dataf => \ALT_INV_iin[13]~input_o\,
	combout => \controle|Mux24~0_combout\);

-- Location: LABCELL_X73_Y11_N21
\controle|status.11_354\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|status.11_354~combout\ = ( \controle|Mux24~0_combout\ & ( (!\controle|Mux25~0_combout\) # (\controle|status.11_354~combout\) ) ) # ( !\controle|Mux24~0_combout\ & ( (\controle|Mux25~0_combout\ & \controle|status.11_354~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controle|ALT_INV_Mux25~0_combout\,
	datad => \controle|ALT_INV_status.11_354~combout\,
	dataf => \controle|ALT_INV_Mux24~0_combout\,
	combout => \controle|status.11_354~combout\);

-- Location: LABCELL_X74_Y11_N48
\controle|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux2~0_combout\ = ( \controle|status.11_354~combout\ & ( !\contador|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contador|ALT_INV_out\(0),
	dataf => \controle|ALT_INV_status.11_354~combout\,
	combout => \controle|Mux2~0_combout\);

-- Location: LABCELL_X74_Y11_N33
\controle|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux4~0_combout\ = ( \contador|out\(1) ) # ( !\contador|out\(1) & ( \contador|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \contador|ALT_INV_out\(0),
	dataf => \contador|ALT_INV_out\(1),
	combout => \controle|Mux4~0_combout\);

-- Location: LABCELL_X74_Y11_N30
\controle|immediate_select\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|immediate_select~combout\ = ( \controle|Mux4~0_combout\ & ( \controle|Mux2~0_combout\ ) ) # ( !\controle|Mux4~0_combout\ & ( \controle|immediate_select~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_Mux2~0_combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	dataf => \controle|ALT_INV_Mux4~0_combout\,
	combout => \controle|immediate_select~combout\);

-- Location: LABCELL_X73_Y11_N42
\controle|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux12~0_combout\ = ( \contador|out\(1) & ( (!\contador|out\(0) & !\controle|status.11_354~combout\) ) ) # ( !\contador|out\(1) & ( \contador|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \contador|ALT_INV_out\(0),
	datad => \controle|ALT_INV_status.11_354~combout\,
	dataf => \contador|ALT_INV_out\(1),
	combout => \controle|Mux12~0_combout\);

-- Location: IOIBUF_X72_Y0_N18
\iin[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(9),
	o => \iin[9]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\iin[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(8),
	o => \iin[8]~input_o\);

-- Location: LABCELL_X74_Y11_N51
\controle|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux11~0_combout\ = ( !\iin[8]~input_o\ & ( !\iin[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_iin[9]~input_o\,
	dataf => \ALT_INV_iin[8]~input_o\,
	combout => \controle|Mux11~0_combout\);

-- Location: IOIBUF_X89_Y9_N21
\iin[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(7),
	o => \iin[7]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\iin[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(11),
	o => \iin[11]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\iin[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(12),
	o => \iin[12]~input_o\);

-- Location: LABCELL_X74_Y11_N39
\controle|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux21~0_combout\ = (!\iin[11]~input_o\ & !\iin[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[11]~input_o\,
	datac => \ALT_INV_iin[12]~input_o\,
	combout => \controle|Mux21~0_combout\);

-- Location: IOIBUF_X89_Y8_N4
\iin[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(10),
	o => \iin[10]~input_o\);

-- Location: LABCELL_X73_Y11_N57
\controle|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux0~0_combout\ = ( \iin[13]~input_o\ & ( (!\iin[15]~input_o\ & (!\contador|out\(0) & !\iin[14]~input_o\)) ) ) # ( !\iin[13]~input_o\ & ( (!\iin[15]~input_o\ & !\contador|out\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[15]~input_o\,
	datac => \contador|ALT_INV_out\(0),
	datad => \ALT_INV_iin[14]~input_o\,
	dataf => \ALT_INV_iin[13]~input_o\,
	combout => \controle|Mux0~0_combout\);

-- Location: LABCELL_X73_Y11_N9
\controle|status.00_411\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|status.00_411~combout\ = ( \controle|Mux0~0_combout\ & ( (!\controle|Mux25~0_combout\) # (\controle|status.00_411~combout\) ) ) # ( !\controle|Mux0~0_combout\ & ( (\controle|status.00_411~combout\ & \controle|Mux25~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controle|ALT_INV_status.00_411~combout\,
	datac => \controle|ALT_INV_Mux25~0_combout\,
	dataf => \controle|ALT_INV_Mux0~0_combout\,
	combout => \controle|status.00_411~combout\);

-- Location: LABCELL_X74_Y11_N21
\controle|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux11~1_combout\ = ( \contador|out\(1) & ( \controle|status.00_411~combout\ & ( (\controle|Mux11~0_combout\ & !\iin[7]~input_o\) ) ) ) # ( !\contador|out\(1) & ( \controle|status.00_411~combout\ & ( (\controle|Mux21~0_combout\ & 
-- !\iin[10]~input_o\) ) ) ) # ( \contador|out\(1) & ( !\controle|status.00_411~combout\ & ( (\controle|Mux11~0_combout\ & !\iin[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000001111000000000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_Mux11~0_combout\,
	datab => \ALT_INV_iin[7]~input_o\,
	datac => \controle|ALT_INV_Mux21~0_combout\,
	datad => \ALT_INV_iin[10]~input_o\,
	datae => \contador|ALT_INV_out\(1),
	dataf => \controle|ALT_INV_status.00_411~combout\,
	combout => \controle|Mux11~1_combout\);

-- Location: LABCELL_X73_Y11_N33
\controle|r0_select\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r0_select~combout\ = ( \controle|Mux11~1_combout\ & ( (\controle|Mux12~0_combout\) # (\controle|r0_select~combout\) ) ) # ( !\controle|Mux11~1_combout\ & ( (\controle|r0_select~combout\ & !\controle|Mux12~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_r0_select~combout\,
	datac => \controle|ALT_INV_Mux12~0_combout\,
	dataf => \controle|ALT_INV_Mux11~1_combout\,
	combout => \controle|r0_select~combout\);

-- Location: LABCELL_X73_Y11_N0
\controle|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux10~0_combout\ = ( \controle|Mux11~0_combout\ & ( \controle|Mux21~0_combout\ & ( (!\contador|out\(1) & (((\iin[10]~input_o\ & \controle|status.00_411~combout\)))) # (\contador|out\(1) & (\iin[7]~input_o\)) ) ) ) # ( !\controle|Mux11~0_combout\ 
-- & ( \controle|Mux21~0_combout\ & ( (!\contador|out\(1) & (\iin[10]~input_o\ & \controle|status.00_411~combout\)) ) ) ) # ( \controle|Mux11~0_combout\ & ( !\controle|Mux21~0_combout\ & ( (\iin[7]~input_o\ & \contador|out\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000011000001000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[7]~input_o\,
	datab => \contador|ALT_INV_out\(1),
	datac => \ALT_INV_iin[10]~input_o\,
	datad => \controle|ALT_INV_status.00_411~combout\,
	datae => \controle|ALT_INV_Mux11~0_combout\,
	dataf => \controle|ALT_INV_Mux21~0_combout\,
	combout => \controle|Mux10~0_combout\);

-- Location: LABCELL_X73_Y11_N54
\controle|r1_select\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r1_select~combout\ = ( \controle|Mux10~0_combout\ & ( (\controle|r1_select~combout\) # (\controle|Mux12~0_combout\) ) ) # ( !\controle|Mux10~0_combout\ & ( (!\controle|Mux12~0_combout\ & \controle|r1_select~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controle|ALT_INV_Mux12~0_combout\,
	datad => \controle|ALT_INV_r1_select~combout\,
	dataf => \controle|ALT_INV_Mux10~0_combout\,
	combout => \controle|r1_select~combout\);

-- Location: LABCELL_X73_Y11_N30
\mux|bus[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[0]~0_combout\ = ( \contador|out\(1) & ( ((!\controle|r0_select~combout\ & !\controle|r1_select~combout\)) # (\contador|out\(0)) ) ) # ( !\contador|out\(1) & ( (!\controle|r0_select~combout\ & !\controle|r1_select~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010110011101100111011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_r0_select~combout\,
	datab => \contador|ALT_INV_out\(0),
	datac => \controle|ALT_INV_r1_select~combout\,
	dataf => \contador|ALT_INV_out\(1),
	combout => \mux|bus[0]~0_combout\);

-- Location: LABCELL_X73_Y11_N6
\mux|bus[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[0]~1_combout\ = ( \contador|out\(1) & ( (!\contador|out\(0) & !\controle|r0_select~combout\) ) ) # ( !\contador|out\(1) & ( !\controle|r0_select~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contador|ALT_INV_out\(0),
	datac => \controle|ALT_INV_r0_select~combout\,
	dataf => \contador|ALT_INV_out\(1),
	combout => \mux|bus[0]~1_combout\);

-- Location: LABCELL_X74_Y12_N21
\controle|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux21~1_combout\ = ( \contador|out\(1) & ( (!\iin[12]~input_o\ & (\iin[10]~input_o\ & !\iin[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[12]~input_o\,
	datab => \ALT_INV_iin[10]~input_o\,
	datac => \ALT_INV_iin[11]~input_o\,
	dataf => \contador|ALT_INV_out\(1),
	combout => \controle|Mux21~1_combout\);

-- Location: LABCELL_X74_Y12_N15
\controle|r1_enable\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r1_enable~combout\ = ( \controle|r1_enable~combout\ & ( (\contador|out[1]~0_combout\) # (\controle|Mux21~1_combout\) ) ) # ( !\controle|r1_enable~combout\ & ( (\controle|Mux21~1_combout\ & !\contador|out[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controle|ALT_INV_Mux21~1_combout\,
	datac => \contador|ALT_INV_out[1]~0_combout\,
	dataf => \controle|ALT_INV_r1_enable~combout\,
	combout => \controle|r1_enable~combout\);

-- Location: FF_X73_Y11_N37
\Register1|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~1_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(0));

-- Location: LABCELL_X74_Y12_N42
\controle|a_enable\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|a_enable~combout\ = ( \controle|a_enable~combout\ & ( (!\contador|out[1]~0_combout\) # (\contador|out\(0)) ) ) # ( !\controle|a_enable~combout\ & ( (\contador|out[1]~0_combout\ & \contador|out\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \contador|ALT_INV_out[1]~0_combout\,
	datac => \contador|ALT_INV_out\(0),
	dataf => \controle|ALT_INV_a_enable~combout\,
	combout => \controle|a_enable~combout\);

-- Location: FF_X72_Y11_N2
\RegisterA|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~1_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(0));

-- Location: LABCELL_X71_Y11_N0
\alu|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~1_sumout\ = SUM(( \comp|Add0~1_sumout\ ) + ( \RegisterA|out\(0) ) + ( !VCC ))
-- \alu|Add0~2\ = CARRY(( \comp|Add0~1_sumout\ ) + ( \RegisterA|out\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp|ALT_INV_Add0~1_sumout\,
	datac => \RegisterA|ALT_INV_out\(0),
	cin => GND,
	sumout => \alu|Add0~1_sumout\,
	cout => \alu|Add0~2\);

-- Location: LABCELL_X70_Y11_N12
\RegisterR|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterR|out[0]~feeder_combout\ = \alu|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu|ALT_INV_Add0~1_sumout\,
	combout => \RegisterR|out[0]~feeder_combout\);

-- Location: LABCELL_X74_Y11_N0
\alu|out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~0_combout\ = ( \comp|Add0~1_sumout\ & ( !\RegisterA|out\(0) ) ) # ( !\comp|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegisterA|ALT_INV_out\(0),
	dataf => \comp|ALT_INV_Add0~1_sumout\,
	combout => \alu|out~0_combout\);

-- Location: LABCELL_X70_Y11_N39
\controle|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Equal2~1_combout\ = ( !\iin[13]~input_o\ & ( (!\iin[15]~input_o\ & \iin[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[15]~input_o\,
	datac => \ALT_INV_iin[14]~input_o\,
	dataf => \ALT_INV_iin[13]~input_o\,
	combout => \controle|Equal2~1_combout\);

-- Location: LABCELL_X70_Y11_N27
\controle|opSelect\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|opSelect~combout\ = ( \controle|opSelect~0_combout\ & ( !\controle|Equal2~1_combout\ ) ) # ( !\controle|opSelect~0_combout\ & ( \controle|opSelect~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controle|ALT_INV_Equal2~1_combout\,
	datad => \controle|ALT_INV_opSelect~combout\,
	dataf => \controle|ALT_INV_opSelect~0_combout\,
	combout => \controle|opSelect~combout\);

-- Location: LABCELL_X74_Y11_N3
\controle|r_enable\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r_enable~combout\ = ( \contador|out\(0) & ( (!\contador|out\(1) & \controle|r_enable~combout\) ) ) # ( !\contador|out\(0) & ( (\controle|r_enable~combout\) # (\contador|out\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \contador|ALT_INV_out\(1),
	datad => \controle|ALT_INV_r_enable~combout\,
	dataf => \contador|ALT_INV_out\(0),
	combout => \controle|r_enable~combout\);

-- Location: FF_X70_Y11_N14
\RegisterR|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegisterR|out[0]~feeder_combout\,
	asdata => \alu|out~0_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(0));

-- Location: LABCELL_X74_Y11_N24
\controle|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux22~0_combout\ = (!\iin[11]~input_o\ & (\contador|out\(1) & (!\iin[10]~input_o\ & !\iin[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[11]~input_o\,
	datab => \contador|ALT_INV_out\(1),
	datac => \ALT_INV_iin[10]~input_o\,
	datad => \ALT_INV_iin[12]~input_o\,
	combout => \controle|Mux22~0_combout\);

-- Location: LABCELL_X74_Y11_N54
\controle|r0_enable\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r0_enable~combout\ = ( \controle|r0_enable~combout\ & ( \controle|Mux22~0_combout\ ) ) # ( !\controle|r0_enable~combout\ & ( \controle|Mux22~0_combout\ & ( !\contador|out[1]~0_combout\ ) ) ) # ( \controle|r0_enable~combout\ & ( 
-- !\controle|Mux22~0_combout\ & ( \contador|out[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \contador|ALT_INV_out[1]~0_combout\,
	datae => \controle|ALT_INV_r0_enable~combout\,
	dataf => \controle|ALT_INV_Mux22~0_combout\,
	combout => \controle|r0_enable~combout\);

-- Location: FF_X74_Y11_N17
\Register0|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~1_sumout\,
	sload => VCC,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(0));

-- Location: MLABCELL_X72_Y12_N9
\controle|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux17~0_combout\ = ( \iin[12]~input_o\ & ( !\iin[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[11]~input_o\,
	dataf => \ALT_INV_iin[12]~input_o\,
	combout => \controle|Mux17~0_combout\);

-- Location: LABCELL_X74_Y11_N15
\controle|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux6~0_combout\ = ( !\iin[8]~input_o\ & ( \iin[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_iin[9]~input_o\,
	dataf => \ALT_INV_iin[8]~input_o\,
	combout => \controle|Mux6~0_combout\);

-- Location: MLABCELL_X72_Y12_N51
\controle|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux7~0_combout\ = ( \contador|out\(1) & ( \controle|status.00_411~combout\ & ( (!\iin[7]~input_o\ & \controle|Mux6~0_combout\) ) ) ) # ( !\contador|out\(1) & ( \controle|status.00_411~combout\ & ( (!\iin[10]~input_o\ & 
-- \controle|Mux17~0_combout\) ) ) ) # ( \contador|out\(1) & ( !\controle|status.00_411~combout\ & ( (!\iin[7]~input_o\ & \controle|Mux6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000001010000010100000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[10]~input_o\,
	datab => \ALT_INV_iin[7]~input_o\,
	datac => \controle|ALT_INV_Mux17~0_combout\,
	datad => \controle|ALT_INV_Mux6~0_combout\,
	datae => \contador|ALT_INV_out\(1),
	dataf => \controle|ALT_INV_status.00_411~combout\,
	combout => \controle|Mux7~0_combout\);

-- Location: MLABCELL_X72_Y12_N24
\controle|r4_select\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r4_select~combout\ = ( \controle|Mux12~0_combout\ & ( \controle|r4_select~combout\ & ( \controle|Mux7~0_combout\ ) ) ) # ( !\controle|Mux12~0_combout\ & ( \controle|r4_select~combout\ ) ) # ( \controle|Mux12~0_combout\ & ( 
-- !\controle|r4_select~combout\ & ( \controle|Mux7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_Mux7~0_combout\,
	datae => \controle|ALT_INV_Mux12~0_combout\,
	dataf => \controle|ALT_INV_r4_select~combout\,
	combout => \controle|r4_select~combout\);

-- Location: LABCELL_X73_Y10_N15
\controle|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux9~0_combout\ = ( \contador|out\(1) & ( (!\iin[7]~input_o\ & (\iin[8]~input_o\ & !\iin[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[7]~input_o\,
	datac => \ALT_INV_iin[8]~input_o\,
	datad => \ALT_INV_iin[9]~input_o\,
	dataf => \contador|ALT_INV_out\(1),
	combout => \controle|Mux9~0_combout\);

-- Location: LABCELL_X73_Y10_N18
\controle|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux9~1_combout\ = ( \controle|status.00_411~combout\ & ( \contador|out\(1) & ( \controle|Mux9~0_combout\ ) ) ) # ( !\controle|status.00_411~combout\ & ( \contador|out\(1) & ( \controle|Mux9~0_combout\ ) ) ) # ( \controle|status.00_411~combout\ & 
-- ( !\contador|out\(1) & ( ((!\iin[12]~input_o\ & (!\iin[10]~input_o\ & \iin[11]~input_o\))) # (\controle|Mux9~0_combout\) ) ) ) # ( !\controle|status.00_411~combout\ & ( !\contador|out\(1) & ( \controle|Mux9~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100111011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[12]~input_o\,
	datab => \controle|ALT_INV_Mux9~0_combout\,
	datac => \ALT_INV_iin[10]~input_o\,
	datad => \ALT_INV_iin[11]~input_o\,
	datae => \controle|ALT_INV_status.00_411~combout\,
	dataf => \contador|ALT_INV_out\(1),
	combout => \controle|Mux9~1_combout\);

-- Location: LABCELL_X73_Y10_N36
\controle|r2_select\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r2_select~combout\ = ( \controle|Mux12~0_combout\ & ( \controle|Mux9~1_combout\ ) ) # ( !\controle|Mux12~0_combout\ & ( \controle|Mux9~1_combout\ & ( \controle|r2_select~combout\ ) ) ) # ( !\controle|Mux12~0_combout\ & ( 
-- !\controle|Mux9~1_combout\ & ( \controle|r2_select~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controle|ALT_INV_r2_select~combout\,
	datae => \controle|ALT_INV_Mux12~0_combout\,
	dataf => \controle|ALT_INV_Mux9~1_combout\,
	combout => \controle|r2_select~combout\);

-- Location: LABCELL_X73_Y10_N6
\controle|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux20~0_combout\ = ( \iin[11]~input_o\ & ( !\iin[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_iin[12]~input_o\,
	dataf => \ALT_INV_iin[11]~input_o\,
	combout => \controle|Mux20~0_combout\);

-- Location: LABCELL_X73_Y10_N27
\controle|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux8~0_combout\ = ( !\contador|out\(1) & ( (((\controle|Mux20~0_combout\ & (\iin[10]~input_o\ & \controle|status.00_411~combout\)))) ) ) # ( \contador|out\(1) & ( (\iin[7]~input_o\ & (\iin[8]~input_o\ & (!\iin[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000100000001000000000000000011110001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[7]~input_o\,
	datab => \ALT_INV_iin[8]~input_o\,
	datac => \ALT_INV_iin[9]~input_o\,
	datad => \ALT_INV_iin[10]~input_o\,
	datae => \contador|ALT_INV_out\(1),
	dataf => \controle|ALT_INV_status.00_411~combout\,
	datag => \controle|ALT_INV_Mux20~0_combout\,
	combout => \controle|Mux8~0_combout\);

-- Location: LABCELL_X73_Y10_N12
\controle|r3_select\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r3_select~combout\ = ( \controle|Mux12~0_combout\ & ( \controle|Mux8~0_combout\ ) ) # ( !\controle|Mux12~0_combout\ & ( \controle|r3_select~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controle|ALT_INV_Mux8~0_combout\,
	datad => \controle|ALT_INV_r3_select~combout\,
	dataf => \controle|ALT_INV_Mux12~0_combout\,
	combout => \controle|r3_select~combout\);

-- Location: MLABCELL_X72_Y12_N21
\mux|bus[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[0]~4_combout\ = ( !\controle|r2_select~combout\ & ( \controle|r3_select~combout\ ) ) # ( !\controle|r2_select~combout\ & ( !\controle|r3_select~combout\ & ( \controle|r4_select~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_r4_select~combout\,
	datae => \controle|ALT_INV_r2_select~combout\,
	dataf => \controle|ALT_INV_r3_select~combout\,
	combout => \mux|bus[0]~4_combout\);

-- Location: LABCELL_X73_Y10_N33
\mux|bus[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[0]~5_combout\ = ( !\controle|r2_select~combout\ & ( !\controle|r3_select~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \controle|ALT_INV_r2_select~combout\,
	dataf => \controle|ALT_INV_r3_select~combout\,
	combout => \mux|bus[0]~5_combout\);

-- Location: LABCELL_X74_Y12_N51
\controle|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux19~0_combout\ = ( \contador|out\(1) & ( (\iin[10]~input_o\ & (!\iin[12]~input_o\ & \iin[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[10]~input_o\,
	datab => \ALT_INV_iin[12]~input_o\,
	datac => \ALT_INV_iin[11]~input_o\,
	dataf => \contador|ALT_INV_out\(1),
	combout => \controle|Mux19~0_combout\);

-- Location: LABCELL_X74_Y12_N48
\controle|r3_enable\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r3_enable~combout\ = ( \contador|out[1]~0_combout\ & ( \controle|r3_enable~combout\ ) ) # ( !\contador|out[1]~0_combout\ & ( \controle|Mux19~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controle|ALT_INV_Mux19~0_combout\,
	datad => \controle|ALT_INV_r3_enable~combout\,
	dataf => \contador|ALT_INV_out[1]~0_combout\,
	combout => \controle|r3_enable~combout\);

-- Location: FF_X73_Y11_N14
\Register3|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~1_sumout\,
	sload => VCC,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(0));

-- Location: LABCELL_X74_Y12_N45
\controle|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux18~0_combout\ = ( \contador|out\(1) & ( (!\iin[10]~input_o\ & (!\iin[11]~input_o\ & \iin[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[10]~input_o\,
	datac => \ALT_INV_iin[11]~input_o\,
	datad => \ALT_INV_iin[12]~input_o\,
	dataf => \contador|ALT_INV_out\(1),
	combout => \controle|Mux18~0_combout\);

-- Location: LABCELL_X74_Y12_N54
\controle|r4_enable\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r4_enable~combout\ = ( \contador|out[1]~0_combout\ & ( \controle|r4_enable~combout\ ) ) # ( !\contador|out[1]~0_combout\ & ( \controle|Mux18~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_Mux18~0_combout\,
	datad => \controle|ALT_INV_r4_enable~combout\,
	dataf => \contador|ALT_INV_out[1]~0_combout\,
	combout => \controle|r4_enable~combout\);

-- Location: FF_X74_Y11_N53
\Register4|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~1_sumout\,
	sload => VCC,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(0));

-- Location: LABCELL_X74_Y12_N3
\controle|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux20~1_combout\ = ( \iin[11]~input_o\ & ( \contador|out\(1) & ( (!\iin[12]~input_o\ & !\iin[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_iin[12]~input_o\,
	datac => \ALT_INV_iin[10]~input_o\,
	datae => \ALT_INV_iin[11]~input_o\,
	dataf => \contador|ALT_INV_out\(1),
	combout => \controle|Mux20~1_combout\);

-- Location: LABCELL_X74_Y12_N39
\controle|r2_enable\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r2_enable~combout\ = ( \controle|r2_enable~combout\ & ( (\contador|out[1]~0_combout\) # (\controle|Mux20~1_combout\) ) ) # ( !\controle|r2_enable~combout\ & ( (\controle|Mux20~1_combout\ & !\contador|out[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controle|ALT_INV_Mux20~1_combout\,
	datac => \contador|ALT_INV_out[1]~0_combout\,
	dataf => \controle|ALT_INV_r2_enable~combout\,
	combout => \controle|r2_enable~combout\);

-- Location: FF_X74_Y11_N59
\Register2|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~1_sumout\,
	sload => VCC,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(0));

-- Location: LABCELL_X73_Y10_N9
\controle|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux5~0_combout\ = ( \contador|out\(1) & ( (!\iin[7]~input_o\ & (\iin[8]~input_o\ & \iin[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[7]~input_o\,
	datac => \ALT_INV_iin[8]~input_o\,
	datad => \ALT_INV_iin[9]~input_o\,
	dataf => \contador|ALT_INV_out\(1),
	combout => \controle|Mux5~0_combout\);

-- Location: LABCELL_X73_Y10_N51
\controle|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux5~1_combout\ = ( \iin[10]~input_o\ & ( \controle|status.00_411~combout\ & ( \controle|Mux5~0_combout\ ) ) ) # ( !\iin[10]~input_o\ & ( \controle|status.00_411~combout\ & ( ((!\contador|out\(1) & (\iin[11]~input_o\ & \iin[12]~input_o\))) # 
-- (\controle|Mux5~0_combout\) ) ) ) # ( \iin[10]~input_o\ & ( !\controle|status.00_411~combout\ & ( \controle|Mux5~0_combout\ ) ) ) # ( !\iin[10]~input_o\ & ( !\controle|status.00_411~combout\ & ( \controle|Mux5~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001110110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contador|ALT_INV_out\(1),
	datab => \controle|ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_iin[11]~input_o\,
	datad => \ALT_INV_iin[12]~input_o\,
	datae => \ALT_INV_iin[10]~input_o\,
	dataf => \controle|ALT_INV_status.00_411~combout\,
	combout => \controle|Mux5~1_combout\);

-- Location: MLABCELL_X72_Y12_N0
\controle|r6_select\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r6_select~combout\ = ( \controle|Mux5~1_combout\ & ( (\controle|Mux12~0_combout\) # (\controle|r6_select~combout\) ) ) # ( !\controle|Mux5~1_combout\ & ( (\controle|r6_select~combout\ & !\controle|Mux12~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controle|ALT_INV_r6_select~combout\,
	datac => \controle|ALT_INV_Mux12~0_combout\,
	dataf => \controle|ALT_INV_Mux5~1_combout\,
	combout => \controle|r6_select~combout\);

-- Location: LABCELL_X73_Y11_N3
\controle|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux6~1_combout\ = ( \controle|Mux6~0_combout\ & ( \controle|Mux17~0_combout\ & ( (!\contador|out\(1) & (((\controle|status.00_411~combout\ & \iin[10]~input_o\)))) # (\contador|out\(1) & (\iin[7]~input_o\)) ) ) ) # ( !\controle|Mux6~0_combout\ & 
-- ( \controle|Mux17~0_combout\ & ( (!\contador|out\(1) & (\controle|status.00_411~combout\ & \iin[10]~input_o\)) ) ) ) # ( \controle|Mux6~0_combout\ & ( !\controle|Mux17~0_combout\ & ( (\iin[7]~input_o\ & \contador|out\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000011000001000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[7]~input_o\,
	datab => \contador|ALT_INV_out\(1),
	datac => \controle|ALT_INV_status.00_411~combout\,
	datad => \ALT_INV_iin[10]~input_o\,
	datae => \controle|ALT_INV_Mux6~0_combout\,
	dataf => \controle|ALT_INV_Mux17~0_combout\,
	combout => \controle|Mux6~1_combout\);

-- Location: MLABCELL_X72_Y12_N30
\controle|r5_select\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r5_select~combout\ = ( \controle|Mux6~1_combout\ & ( (\controle|r5_select~combout\) # (\controle|Mux12~0_combout\) ) ) # ( !\controle|Mux6~1_combout\ & ( (!\controle|Mux12~0_combout\ & \controle|r5_select~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controle|ALT_INV_Mux12~0_combout\,
	datad => \controle|ALT_INV_r5_select~combout\,
	dataf => \controle|ALT_INV_Mux6~1_combout\,
	combout => \controle|r5_select~combout\);

-- Location: LABCELL_X74_Y12_N27
\controle|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux17~1_combout\ = ( !\iin[11]~input_o\ & ( \contador|out\(1) & ( (\iin[12]~input_o\ & \iin[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_iin[12]~input_o\,
	datac => \ALT_INV_iin[10]~input_o\,
	datae => \ALT_INV_iin[11]~input_o\,
	dataf => \contador|ALT_INV_out\(1),
	combout => \controle|Mux17~1_combout\);

-- Location: LABCELL_X74_Y12_N30
\controle|r5_enable\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r5_enable~combout\ = ( \controle|Mux17~1_combout\ & ( (!\contador|out[1]~0_combout\) # (\controle|r5_enable~combout\) ) ) # ( !\controle|Mux17~1_combout\ & ( (\contador|out[1]~0_combout\ & \controle|r5_enable~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \contador|ALT_INV_out[1]~0_combout\,
	datac => \controle|ALT_INV_r5_enable~combout\,
	dataf => \controle|ALT_INV_Mux17~1_combout\,
	combout => \controle|r5_enable~combout\);

-- Location: FF_X72_Y12_N14
\Register5|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~1_sumout\,
	sload => VCC,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(0));

-- Location: MLABCELL_X72_Y10_N18
\controle|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux1~1_combout\ = ( \iin[9]~input_o\ & ( (\iin[8]~input_o\ & \iin[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_iin[8]~input_o\,
	datac => \ALT_INV_iin[7]~input_o\,
	dataf => \ALT_INV_iin[9]~input_o\,
	combout => \controle|Mux1~1_combout\);

-- Location: MLABCELL_X72_Y12_N15
\controle|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux1~0_combout\ = ( \contador|out\(1) & ( \controle|status.00_411~combout\ & ( \controle|Mux1~1_combout\ ) ) ) # ( !\contador|out\(1) & ( \controle|status.00_411~combout\ & ( (\iin[11]~input_o\ & (\iin[10]~input_o\ & \iin[12]~input_o\)) ) ) ) # 
-- ( \contador|out\(1) & ( !\controle|status.00_411~combout\ & ( \controle|Mux1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000100010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[11]~input_o\,
	datab => \ALT_INV_iin[10]~input_o\,
	datac => \controle|ALT_INV_Mux1~1_combout\,
	datad => \ALT_INV_iin[12]~input_o\,
	datae => \contador|ALT_INV_out\(1),
	dataf => \controle|ALT_INV_status.00_411~combout\,
	combout => \controle|Mux1~0_combout\);

-- Location: MLABCELL_X72_Y12_N36
\controle|r7_select\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r7_select~combout\ = ( \controle|r7_select~combout\ & ( \controle|Mux12~0_combout\ & ( \controle|Mux1~0_combout\ ) ) ) # ( !\controle|r7_select~combout\ & ( \controle|Mux12~0_combout\ & ( \controle|Mux1~0_combout\ ) ) ) # ( 
-- \controle|r7_select~combout\ & ( !\controle|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controle|ALT_INV_Mux1~0_combout\,
	datae => \controle|ALT_INV_r7_select~combout\,
	dataf => \controle|ALT_INV_Mux12~0_combout\,
	combout => \controle|r7_select~combout\);

-- Location: MLABCELL_X72_Y12_N3
\mux|bus[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[0]~2_combout\ = ( \controle|r4_select~combout\ & ( (!\controle|r5_select~combout\ & \controle|r6_select~combout\) ) ) # ( !\controle|r4_select~combout\ & ( (!\controle|r5_select~combout\ & ((!\controle|r7_select~combout\) # 
-- (\controle|r6_select~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000101000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_r7_select~combout\,
	datac => \controle|ALT_INV_r5_select~combout\,
	datad => \controle|ALT_INV_r6_select~combout\,
	dataf => \controle|ALT_INV_r4_select~combout\,
	combout => \mux|bus[0]~2_combout\);

-- Location: LABCELL_X74_Y12_N36
\controle|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux15~0_combout\ = ( \contador|out\(1) & ( (\iin[12]~input_o\ & (\iin[10]~input_o\ & \iin[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iin[12]~input_o\,
	datac => \ALT_INV_iin[10]~input_o\,
	datad => \ALT_INV_iin[11]~input_o\,
	dataf => \contador|ALT_INV_out\(1),
	combout => \controle|Mux15~0_combout\);

-- Location: LABCELL_X74_Y12_N33
\controle|r7_enable\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r7_enable~combout\ = ( \controle|Mux15~0_combout\ & ( (!\contador|out[1]~0_combout\) # (\controle|r7_enable~combout\) ) ) # ( !\controle|Mux15~0_combout\ & ( (\controle|r7_enable~combout\ & \contador|out[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_r7_enable~combout\,
	datac => \contador|ALT_INV_out[1]~0_combout\,
	dataf => \controle|ALT_INV_Mux15~0_combout\,
	combout => \controle|r7_enable~combout\);

-- Location: FF_X72_Y12_N56
\Register7|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~1_sumout\,
	sload => VCC,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(0));

-- Location: LABCELL_X74_Y12_N9
\controle|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Mux16~0_combout\ = ( \iin[11]~input_o\ & ( \contador|out\(1) & ( (\iin[12]~input_o\ & !\iin[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_iin[12]~input_o\,
	datac => \ALT_INV_iin[10]~input_o\,
	datae => \ALT_INV_iin[11]~input_o\,
	dataf => \contador|ALT_INV_out\(1),
	combout => \controle|Mux16~0_combout\);

-- Location: LABCELL_X74_Y12_N57
\controle|r6_enable\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|r6_enable~combout\ = (!\contador|out[1]~0_combout\ & (\controle|Mux16~0_combout\)) # (\contador|out[1]~0_combout\ & ((\controle|r6_enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controle|ALT_INV_Mux16~0_combout\,
	datac => \contador|ALT_INV_out[1]~0_combout\,
	datad => \controle|ALT_INV_r6_enable~combout\,
	combout => \controle|r6_enable~combout\);

-- Location: FF_X72_Y12_N50
\Register6|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~1_sumout\,
	sload => VCC,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(0));

-- Location: MLABCELL_X72_Y12_N45
\mux|bus[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[0]~3_combout\ = ( \Register7|out\(0) & ( \Register6|out\(0) & ( (!\controle|r5_select~combout\ & (((!\mux|bus[0]~2_combout\)) # (\controle|r6_select~combout\))) # (\controle|r5_select~combout\ & (((\Register5|out\(0) & !\mux|bus[0]~2_combout\)))) 
-- ) ) ) # ( !\Register7|out\(0) & ( \Register6|out\(0) & ( (!\controle|r5_select~combout\ & (\controle|r6_select~combout\)) # (\controle|r5_select~combout\ & (((\Register5|out\(0) & !\mux|bus[0]~2_combout\)))) ) ) ) # ( \Register7|out\(0) & ( 
-- !\Register6|out\(0) & ( (!\mux|bus[0]~2_combout\ & (((!\controle|r6_select~combout\ & !\controle|r5_select~combout\)) # (\Register5|out\(0)))) ) ) ) # ( !\Register7|out\(0) & ( !\Register6|out\(0) & ( (\Register5|out\(0) & (!\mux|bus[0]~2_combout\ & 
-- ((\controle|r5_select~combout\) # (\controle|r6_select~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000100011110000000001000111010001001100111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_r6_select~combout\,
	datab => \controle|ALT_INV_r5_select~combout\,
	datac => \Register5|ALT_INV_out\(0),
	datad => \mux|ALT_INV_bus[0]~2_combout\,
	datae => \Register7|ALT_INV_out\(0),
	dataf => \Register6|ALT_INV_out\(0),
	combout => \mux|bus[0]~3_combout\);

-- Location: LABCELL_X73_Y11_N15
\mux|bus[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[0]~6_combout\ = ( \Register2|out\(0) & ( \mux|bus[0]~3_combout\ & ( (!\mux|bus[0]~4_combout\) # ((!\mux|bus[0]~5_combout\ & (\Register3|out\(0))) # (\mux|bus[0]~5_combout\ & ((\Register4|out\(0))))) ) ) ) # ( !\Register2|out\(0) & ( 
-- \mux|bus[0]~3_combout\ & ( (!\mux|bus[0]~4_combout\ & (\mux|bus[0]~5_combout\)) # (\mux|bus[0]~4_combout\ & ((!\mux|bus[0]~5_combout\ & (\Register3|out\(0))) # (\mux|bus[0]~5_combout\ & ((\Register4|out\(0)))))) ) ) ) # ( \Register2|out\(0) & ( 
-- !\mux|bus[0]~3_combout\ & ( (!\mux|bus[0]~4_combout\ & (!\mux|bus[0]~5_combout\)) # (\mux|bus[0]~4_combout\ & ((!\mux|bus[0]~5_combout\ & (\Register3|out\(0))) # (\mux|bus[0]~5_combout\ & ((\Register4|out\(0)))))) ) ) ) # ( !\Register2|out\(0) & ( 
-- !\mux|bus[0]~3_combout\ & ( (\mux|bus[0]~4_combout\ & ((!\mux|bus[0]~5_combout\ & (\Register3|out\(0))) # (\mux|bus[0]~5_combout\ & ((\Register4|out\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~4_combout\,
	datab => \mux|ALT_INV_bus[0]~5_combout\,
	datac => \Register3|ALT_INV_out\(0),
	datad => \Register4|ALT_INV_out\(0),
	datae => \Register2|ALT_INV_out\(0),
	dataf => \mux|ALT_INV_bus[0]~3_combout\,
	combout => \mux|bus[0]~6_combout\);

-- Location: LABCELL_X73_Y11_N27
\mux|bus[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[0]~7_combout\ = ( \Register0|out\(0) & ( \mux|bus[0]~6_combout\ & ( (!\mux|bus[0]~0_combout\ & ((!\mux|bus[0]~1_combout\) # ((\Register1|out\(0))))) # (\mux|bus[0]~0_combout\ & (((\RegisterR|out\(0))) # (\mux|bus[0]~1_combout\))) ) ) ) # ( 
-- !\Register0|out\(0) & ( \mux|bus[0]~6_combout\ & ( (!\mux|bus[0]~0_combout\ & (\mux|bus[0]~1_combout\ & (\Register1|out\(0)))) # (\mux|bus[0]~0_combout\ & (((\RegisterR|out\(0))) # (\mux|bus[0]~1_combout\))) ) ) ) # ( \Register0|out\(0) & ( 
-- !\mux|bus[0]~6_combout\ & ( (!\mux|bus[0]~0_combout\ & ((!\mux|bus[0]~1_combout\) # ((\Register1|out\(0))))) # (\mux|bus[0]~0_combout\ & (!\mux|bus[0]~1_combout\ & ((\RegisterR|out\(0))))) ) ) ) # ( !\Register0|out\(0) & ( !\mux|bus[0]~6_combout\ & ( 
-- (!\mux|bus[0]~0_combout\ & (\mux|bus[0]~1_combout\ & (\Register1|out\(0)))) # (\mux|bus[0]~0_combout\ & (!\mux|bus[0]~1_combout\ & ((\RegisterR|out\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~0_combout\,
	datab => \mux|ALT_INV_bus[0]~1_combout\,
	datac => \Register1|ALT_INV_out\(0),
	datad => \RegisterR|ALT_INV_out\(0),
	datae => \Register0|ALT_INV_out\(0),
	dataf => \mux|ALT_INV_bus[0]~6_combout\,
	combout => \mux|bus[0]~7_combout\);

-- Location: IOIBUF_X89_Y35_N78
\iin[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(0),
	o => \iin[0]~input_o\);

-- Location: MLABCELL_X72_Y11_N0
\comp|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~1_sumout\ = SUM(( \controle|negativo~combout\ ) + ( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & (!\mux|bus[0]~7_combout\)) # (\controle|immediate_select~combout\ & ((!\iin[0]~input_o\))))) ) + ( !VCC ))
-- \comp|Add0~2\ = CARRY(( \controle|negativo~combout\ ) + ( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & (!\mux|bus[0]~7_combout\)) # (\controle|immediate_select~combout\ & ((!\iin[0]~input_o\))))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_negativo~combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	datac => \mux|ALT_INV_bus[0]~7_combout\,
	dataf => \ALT_INV_iin[0]~input_o\,
	cin => GND,
	sumout => \comp|Add0~1_sumout\,
	cout => \comp|Add0~2\);

-- Location: FF_X74_Y11_N20
\Register0|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~5_sumout\,
	sload => VCC,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(1));

-- Location: FF_X74_Y12_N2
\Register1|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~5_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(1));

-- Location: FF_X72_Y11_N5
\RegisterA|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~5_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(1));

-- Location: LABCELL_X71_Y11_N3
\alu|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~5_sumout\ = SUM(( \comp|Add0~5_sumout\ ) + ( \RegisterA|out\(1) ) + ( \alu|Add0~2\ ))
-- \alu|Add0~6\ = CARRY(( \comp|Add0~5_sumout\ ) + ( \RegisterA|out\(1) ) + ( \alu|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterA|ALT_INV_out\(1),
	datac => \comp|ALT_INV_Add0~5_sumout\,
	cin => \alu|Add0~2\,
	sumout => \alu|Add0~5_sumout\,
	cout => \alu|Add0~6\);

-- Location: LABCELL_X74_Y11_N36
\alu|out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~1_combout\ = (!\RegisterA|out\(1)) # (!\comp|Add0~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegisterA|ALT_INV_out\(1),
	datad => \comp|ALT_INV_Add0~5_sumout\,
	combout => \alu|out~1_combout\);

-- Location: FF_X71_Y11_N5
\RegisterR|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \alu|Add0~5_sumout\,
	asdata => \alu|out~1_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(1));

-- Location: FF_X74_Y12_N8
\Register4|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~5_sumout\,
	sload => VCC,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(1));

-- Location: FF_X73_Y12_N14
\Register3|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~5_sumout\,
	sload => VCC,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(1));

-- Location: FF_X74_Y12_N23
\Register2|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~5_sumout\,
	sload => VCC,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(1));

-- Location: FF_X73_Y12_N8
\Register6|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~5_sumout\,
	sload => VCC,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(1));

-- Location: FF_X73_Y12_N29
\Register7|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~5_sumout\,
	sload => VCC,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(1));

-- Location: FF_X72_Y12_N10
\Register5|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~5_sumout\,
	sload => VCC,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(1));

-- Location: LABCELL_X73_Y12_N33
\mux|bus[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[1]~8_combout\ = ( \Register5|out\(1) & ( \mux|bus[0]~2_combout\ & ( (!\controle|r5_select~combout\ & (\controle|r6_select~combout\ & \Register6|out\(1))) ) ) ) # ( !\Register5|out\(1) & ( \mux|bus[0]~2_combout\ & ( (!\controle|r5_select~combout\ 
-- & (\controle|r6_select~combout\ & \Register6|out\(1))) ) ) ) # ( \Register5|out\(1) & ( !\mux|bus[0]~2_combout\ & ( ((\Register7|out\(1)) # (\controle|r6_select~combout\)) # (\controle|r5_select~combout\) ) ) ) # ( !\Register5|out\(1) & ( 
-- !\mux|bus[0]~2_combout\ & ( (!\controle|r5_select~combout\ & ((!\controle|r6_select~combout\ & ((\Register7|out\(1)))) # (\controle|r6_select~combout\ & (\Register6|out\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010011101111111111100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_r5_select~combout\,
	datab => \controle|ALT_INV_r6_select~combout\,
	datac => \Register6|ALT_INV_out\(1),
	datad => \Register7|ALT_INV_out\(1),
	datae => \Register5|ALT_INV_out\(1),
	dataf => \mux|ALT_INV_bus[0]~2_combout\,
	combout => \mux|bus[1]~8_combout\);

-- Location: LABCELL_X73_Y12_N48
\mux|bus[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[1]~9_combout\ = ( \Register2|out\(1) & ( \mux|bus[1]~8_combout\ & ( (!\mux|bus[0]~4_combout\) # ((!\mux|bus[0]~5_combout\ & ((\Register3|out\(1)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(1)))) ) ) ) # ( !\Register2|out\(1) & ( 
-- \mux|bus[1]~8_combout\ & ( (!\mux|bus[0]~4_combout\ & (\mux|bus[0]~5_combout\)) # (\mux|bus[0]~4_combout\ & ((!\mux|bus[0]~5_combout\ & ((\Register3|out\(1)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(1))))) ) ) ) # ( \Register2|out\(1) & ( 
-- !\mux|bus[1]~8_combout\ & ( (!\mux|bus[0]~4_combout\ & (!\mux|bus[0]~5_combout\)) # (\mux|bus[0]~4_combout\ & ((!\mux|bus[0]~5_combout\ & ((\Register3|out\(1)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(1))))) ) ) ) # ( !\Register2|out\(1) & ( 
-- !\mux|bus[1]~8_combout\ & ( (\mux|bus[0]~4_combout\ & ((!\mux|bus[0]~5_combout\ & ((\Register3|out\(1)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~4_combout\,
	datab => \mux|ALT_INV_bus[0]~5_combout\,
	datac => \Register4|ALT_INV_out\(1),
	datad => \Register3|ALT_INV_out\(1),
	datae => \Register2|ALT_INV_out\(1),
	dataf => \mux|ALT_INV_bus[1]~8_combout\,
	combout => \mux|bus[1]~9_combout\);

-- Location: LABCELL_X73_Y12_N57
\mux|bus[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[1]~10_combout\ = ( \RegisterR|out\(1) & ( \mux|bus[1]~9_combout\ & ( ((!\mux|bus[0]~1_combout\ & (\Register0|out\(1))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(1))))) # (\mux|bus[0]~0_combout\) ) ) ) # ( !\RegisterR|out\(1) & ( 
-- \mux|bus[1]~9_combout\ & ( (!\mux|bus[0]~0_combout\ & ((!\mux|bus[0]~1_combout\ & (\Register0|out\(1))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(1)))))) # (\mux|bus[0]~0_combout\ & (\mux|bus[0]~1_combout\)) ) ) ) # ( \RegisterR|out\(1) & ( 
-- !\mux|bus[1]~9_combout\ & ( (!\mux|bus[0]~0_combout\ & ((!\mux|bus[0]~1_combout\ & (\Register0|out\(1))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(1)))))) # (\mux|bus[0]~0_combout\ & (!\mux|bus[0]~1_combout\)) ) ) ) # ( !\RegisterR|out\(1) & ( 
-- !\mux|bus[1]~9_combout\ & ( (!\mux|bus[0]~0_combout\ & ((!\mux|bus[0]~1_combout\ & (\Register0|out\(1))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~0_combout\,
	datab => \mux|ALT_INV_bus[0]~1_combout\,
	datac => \Register0|ALT_INV_out\(1),
	datad => \Register1|ALT_INV_out\(1),
	datae => \RegisterR|ALT_INV_out\(1),
	dataf => \mux|ALT_INV_bus[1]~9_combout\,
	combout => \mux|bus[1]~10_combout\);

-- Location: IOIBUF_X89_Y4_N61
\iin[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(1),
	o => \iin[1]~input_o\);

-- Location: MLABCELL_X72_Y11_N3
\comp|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~5_sumout\ = SUM(( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & (!\mux|bus[1]~10_combout\)) # (\controle|immediate_select~combout\ & ((!\iin[1]~input_o\))))) ) + ( GND ) + ( \comp|Add0~2\ ))
-- \comp|Add0~6\ = CARRY(( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & (!\mux|bus[1]~10_combout\)) # (\controle|immediate_select~combout\ & ((!\iin[1]~input_o\))))) ) + ( GND ) + ( \comp|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101100101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_negativo~combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	datac => \mux|ALT_INV_bus[1]~10_combout\,
	datad => \ALT_INV_iin[1]~input_o\,
	cin => \comp|Add0~2\,
	sumout => \comp|Add0~5_sumout\,
	cout => \comp|Add0~6\);

-- Location: FF_X72_Y11_N8
\RegisterA|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~9_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(2));

-- Location: LABCELL_X71_Y11_N6
\alu|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~9_sumout\ = SUM(( \RegisterA|out\(2) ) + ( \comp|Add0~9_sumout\ ) + ( \alu|Add0~6\ ))
-- \alu|Add0~10\ = CARRY(( \RegisterA|out\(2) ) + ( \comp|Add0~9_sumout\ ) + ( \alu|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp|ALT_INV_Add0~9_sumout\,
	datad => \RegisterA|ALT_INV_out\(2),
	cin => \alu|Add0~6\,
	sumout => \alu|Add0~9_sumout\,
	cout => \alu|Add0~10\);

-- Location: LABCELL_X74_Y11_N45
\alu|out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~2_combout\ = ( \comp|Add0~9_sumout\ & ( !\RegisterA|out\(2) ) ) # ( !\comp|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterA|ALT_INV_out\(2),
	dataf => \comp|ALT_INV_Add0~9_sumout\,
	combout => \alu|out~2_combout\);

-- Location: FF_X71_Y11_N7
\RegisterR|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \alu|Add0~9_sumout\,
	asdata => \alu|out~2_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(2));

-- Location: FF_X74_Y11_N40
\Register0|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~9_sumout\,
	sload => VCC,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(2));

-- Location: FF_X72_Y11_N56
\Register1|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~9_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(2));

-- Location: FF_X73_Y12_N56
\Register3|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~9_sumout\,
	sload => VCC,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(2));

-- Location: FF_X74_Y12_N26
\Register4|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~9_sumout\,
	sload => VCC,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(2));

-- Location: FF_X73_Y12_N2
\Register6|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~9_sumout\,
	sload => VCC,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(2));

-- Location: FF_X72_Y12_N7
\Register5|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~9_sumout\,
	sload => VCC,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(2));

-- Location: LABCELL_X73_Y12_N21
\Register7|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register7|out[2]~feeder_combout\ = \comp|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp|ALT_INV_Add0~9_sumout\,
	combout => \Register7|out[2]~feeder_combout\);

-- Location: FF_X73_Y12_N23
\Register7|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register7|out[2]~feeder_combout\,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(2));

-- Location: LABCELL_X73_Y12_N36
\mux|bus[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[2]~11_combout\ = ( \Register7|out\(2) & ( \mux|bus[0]~2_combout\ & ( (!\controle|r5_select~combout\ & (\controle|r6_select~combout\ & \Register6|out\(2))) ) ) ) # ( !\Register7|out\(2) & ( \mux|bus[0]~2_combout\ & ( (!\controle|r5_select~combout\ 
-- & (\controle|r6_select~combout\ & \Register6|out\(2))) ) ) ) # ( \Register7|out\(2) & ( !\mux|bus[0]~2_combout\ & ( ((!\controle|r5_select~combout\ & ((!\controle|r6_select~combout\) # (\Register6|out\(2))))) # (\Register5|out\(2)) ) ) ) # ( 
-- !\Register7|out\(2) & ( !\mux|bus[0]~2_combout\ & ( (!\controle|r5_select~combout\ & (\controle|r6_select~combout\ & ((\Register5|out\(2)) # (\Register6|out\(2))))) # (\controle|r5_select~combout\ & (((\Register5|out\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001110111100010101111111100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_r5_select~combout\,
	datab => \controle|ALT_INV_r6_select~combout\,
	datac => \Register6|ALT_INV_out\(2),
	datad => \Register5|ALT_INV_out\(2),
	datae => \Register7|ALT_INV_out\(2),
	dataf => \mux|ALT_INV_bus[0]~2_combout\,
	combout => \mux|bus[2]~11_combout\);

-- Location: FF_X74_Y12_N20
\Register2|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~9_sumout\,
	sload => VCC,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(2));

-- Location: LABCELL_X73_Y12_N9
\mux|bus[2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[2]~12_combout\ = ( \mux|bus[2]~11_combout\ & ( \Register2|out\(2) & ( (!\mux|bus[0]~4_combout\) # ((!\mux|bus[0]~5_combout\ & (\Register3|out\(2))) # (\mux|bus[0]~5_combout\ & ((\Register4|out\(2))))) ) ) ) # ( !\mux|bus[2]~11_combout\ & ( 
-- \Register2|out\(2) & ( (!\mux|bus[0]~5_combout\ & (((!\mux|bus[0]~4_combout\)) # (\Register3|out\(2)))) # (\mux|bus[0]~5_combout\ & (((\Register4|out\(2) & \mux|bus[0]~4_combout\)))) ) ) ) # ( \mux|bus[2]~11_combout\ & ( !\Register2|out\(2) & ( 
-- (!\mux|bus[0]~5_combout\ & (\Register3|out\(2) & ((\mux|bus[0]~4_combout\)))) # (\mux|bus[0]~5_combout\ & (((!\mux|bus[0]~4_combout\) # (\Register4|out\(2))))) ) ) ) # ( !\mux|bus[2]~11_combout\ & ( !\Register2|out\(2) & ( (\mux|bus[0]~4_combout\ & 
-- ((!\mux|bus[0]~5_combout\ & (\Register3|out\(2))) # (\mux|bus[0]~5_combout\ & ((\Register4|out\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register3|ALT_INV_out\(2),
	datab => \mux|ALT_INV_bus[0]~5_combout\,
	datac => \Register4|ALT_INV_out\(2),
	datad => \mux|ALT_INV_bus[0]~4_combout\,
	datae => \mux|ALT_INV_bus[2]~11_combout\,
	dataf => \Register2|ALT_INV_out\(2),
	combout => \mux|bus[2]~12_combout\);

-- Location: MLABCELL_X72_Y11_N57
\mux|bus[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[2]~13_combout\ = ( \mux|bus[2]~12_combout\ & ( \mux|bus[0]~1_combout\ & ( (\Register1|out\(2)) # (\mux|bus[0]~0_combout\) ) ) ) # ( !\mux|bus[2]~12_combout\ & ( \mux|bus[0]~1_combout\ & ( (!\mux|bus[0]~0_combout\ & \Register1|out\(2)) ) ) ) # ( 
-- \mux|bus[2]~12_combout\ & ( !\mux|bus[0]~1_combout\ & ( (!\mux|bus[0]~0_combout\ & ((\Register0|out\(2)))) # (\mux|bus[0]~0_combout\ & (\RegisterR|out\(2))) ) ) ) # ( !\mux|bus[2]~12_combout\ & ( !\mux|bus[0]~1_combout\ & ( (!\mux|bus[0]~0_combout\ & 
-- ((\Register0|out\(2)))) # (\mux|bus[0]~0_combout\ & (\RegisterR|out\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterR|ALT_INV_out\(2),
	datab => \mux|ALT_INV_bus[0]~0_combout\,
	datac => \Register0|ALT_INV_out\(2),
	datad => \Register1|ALT_INV_out\(2),
	datae => \mux|ALT_INV_bus[2]~12_combout\,
	dataf => \mux|ALT_INV_bus[0]~1_combout\,
	combout => \mux|bus[2]~13_combout\);

-- Location: IOIBUF_X66_Y0_N75
\iin[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(2),
	o => \iin[2]~input_o\);

-- Location: MLABCELL_X72_Y11_N6
\comp|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~9_sumout\ = SUM(( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & (!\mux|bus[2]~13_combout\)) # (\controle|immediate_select~combout\ & ((!\iin[2]~input_o\))))) ) + ( GND ) + ( \comp|Add0~6\ ))
-- \comp|Add0~10\ = CARRY(( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & (!\mux|bus[2]~13_combout\)) # (\controle|immediate_select~combout\ & ((!\iin[2]~input_o\))))) ) + ( GND ) + ( \comp|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101100101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_negativo~combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	datac => \mux|ALT_INV_bus[2]~13_combout\,
	datad => \ALT_INV_iin[2]~input_o\,
	cin => \comp|Add0~6\,
	sumout => \comp|Add0~9_sumout\,
	cout => \comp|Add0~10\);

-- Location: FF_X73_Y10_N44
\Register1|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~13_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(3));

-- Location: FF_X72_Y11_N11
\RegisterA|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~13_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(3));

-- Location: LABCELL_X71_Y11_N9
\alu|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~13_sumout\ = SUM(( \comp|Add0~13_sumout\ ) + ( \RegisterA|out\(3) ) + ( \alu|Add0~10\ ))
-- \alu|Add0~14\ = CARRY(( \comp|Add0~13_sumout\ ) + ( \RegisterA|out\(3) ) + ( \alu|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterA|ALT_INV_out\(3),
	datac => \comp|ALT_INV_Add0~13_sumout\,
	cin => \alu|Add0~10\,
	sumout => \alu|Add0~13_sumout\,
	cout => \alu|Add0~14\);

-- Location: LABCELL_X70_Y11_N9
\alu|out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~3_combout\ = ( \comp|Add0~13_sumout\ & ( !\RegisterA|out\(3) ) ) # ( !\comp|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterA|ALT_INV_out\(3),
	dataf => \comp|ALT_INV_Add0~13_sumout\,
	combout => \alu|out~3_combout\);

-- Location: FF_X71_Y11_N11
\RegisterR|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \alu|Add0~13_sumout\,
	asdata => \alu|out~3_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(3));

-- Location: LABCELL_X74_Y10_N42
\Register0|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register0|out[3]~feeder_combout\ = \comp|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp|ALT_INV_Add0~13_sumout\,
	combout => \Register0|out[3]~feeder_combout\);

-- Location: FF_X74_Y10_N43
\Register0|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register0|out[3]~feeder_combout\,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(3));

-- Location: FF_X73_Y10_N23
\Register2|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~13_sumout\,
	sload => VCC,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(3));

-- Location: LABCELL_X74_Y10_N48
\Register4|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register4|out[3]~feeder_combout\ = \comp|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp|ALT_INV_Add0~13_sumout\,
	combout => \Register4|out[3]~feeder_combout\);

-- Location: FF_X74_Y10_N50
\Register4|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register4|out[3]~feeder_combout\,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(3));

-- Location: LABCELL_X73_Y10_N0
\Register3|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register3|out[3]~feeder_combout\ = \comp|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp|ALT_INV_Add0~13_sumout\,
	combout => \Register3|out[3]~feeder_combout\);

-- Location: FF_X73_Y10_N2
\Register3|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register3|out[3]~feeder_combout\,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(3));

-- Location: FF_X72_Y10_N2
\Register5|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~13_sumout\,
	sload => VCC,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(3));

-- Location: MLABCELL_X72_Y10_N45
\Register7|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register7|out[3]~feeder_combout\ = \comp|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp|ALT_INV_Add0~13_sumout\,
	combout => \Register7|out[3]~feeder_combout\);

-- Location: FF_X72_Y10_N47
\Register7|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register7|out[3]~feeder_combout\,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(3));

-- Location: MLABCELL_X72_Y10_N9
\Register6|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register6|out[3]~feeder_combout\ = \comp|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp|ALT_INV_Add0~13_sumout\,
	combout => \Register6|out[3]~feeder_combout\);

-- Location: FF_X72_Y10_N11
\Register6|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register6|out[3]~feeder_combout\,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(3));

-- Location: MLABCELL_X72_Y10_N24
\mux|bus[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[3]~14_combout\ = ( \Register7|out\(3) & ( \Register6|out\(3) & ( (!\mux|bus[0]~2_combout\ & (((!\controle|r5_select~combout\) # (\Register5|out\(3))))) # (\mux|bus[0]~2_combout\ & (\controle|r6_select~combout\ & 
-- ((!\controle|r5_select~combout\)))) ) ) ) # ( !\Register7|out\(3) & ( \Register6|out\(3) & ( (!\controle|r5_select~combout\ & (((\controle|r6_select~combout\)))) # (\controle|r5_select~combout\ & (!\mux|bus[0]~2_combout\ & ((\Register5|out\(3))))) ) ) ) # 
-- ( \Register7|out\(3) & ( !\Register6|out\(3) & ( (!\mux|bus[0]~2_combout\ & (((!\controle|r6_select~combout\ & !\controle|r5_select~combout\)) # (\Register5|out\(3)))) ) ) ) # ( !\Register7|out\(3) & ( !\Register6|out\(3) & ( (!\mux|bus[0]~2_combout\ & 
-- (\Register5|out\(3) & ((\controle|r5_select~combout\) # (\controle|r6_select~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001010100010100000101000110011000010101011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~2_combout\,
	datab => \controle|ALT_INV_r6_select~combout\,
	datac => \Register5|ALT_INV_out\(3),
	datad => \controle|ALT_INV_r5_select~combout\,
	datae => \Register7|ALT_INV_out\(3),
	dataf => \Register6|ALT_INV_out\(3),
	combout => \mux|bus[3]~14_combout\);

-- Location: LABCELL_X73_Y10_N57
\mux|bus[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[3]~15_combout\ = ( \mux|bus[0]~4_combout\ & ( \mux|bus[3]~14_combout\ & ( (!\mux|bus[0]~5_combout\ & ((\Register3|out\(3)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(3))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( \mux|bus[3]~14_combout\ & ( 
-- (\mux|bus[0]~5_combout\) # (\Register2|out\(3)) ) ) ) # ( \mux|bus[0]~4_combout\ & ( !\mux|bus[3]~14_combout\ & ( (!\mux|bus[0]~5_combout\ & ((\Register3|out\(3)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(3))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( 
-- !\mux|bus[3]~14_combout\ & ( (\Register2|out\(3) & !\mux|bus[0]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register2|ALT_INV_out\(3),
	datab => \Register4|ALT_INV_out\(3),
	datac => \mux|ALT_INV_bus[0]~5_combout\,
	datad => \Register3|ALT_INV_out\(3),
	datae => \mux|ALT_INV_bus[0]~4_combout\,
	dataf => \mux|ALT_INV_bus[3]~14_combout\,
	combout => \mux|bus[3]~15_combout\);

-- Location: LABCELL_X73_Y10_N45
\mux|bus[3]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[3]~16_combout\ = ( \mux|bus[3]~15_combout\ & ( \mux|bus[0]~1_combout\ & ( (\Register1|out\(3)) # (\mux|bus[0]~0_combout\) ) ) ) # ( !\mux|bus[3]~15_combout\ & ( \mux|bus[0]~1_combout\ & ( (!\mux|bus[0]~0_combout\ & \Register1|out\(3)) ) ) ) # ( 
-- \mux|bus[3]~15_combout\ & ( !\mux|bus[0]~1_combout\ & ( (!\mux|bus[0]~0_combout\ & ((\Register0|out\(3)))) # (\mux|bus[0]~0_combout\ & (\RegisterR|out\(3))) ) ) ) # ( !\mux|bus[3]~15_combout\ & ( !\mux|bus[0]~1_combout\ & ( (!\mux|bus[0]~0_combout\ & 
-- ((\Register0|out\(3)))) # (\mux|bus[0]~0_combout\ & (\RegisterR|out\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~0_combout\,
	datab => \Register1|ALT_INV_out\(3),
	datac => \RegisterR|ALT_INV_out\(3),
	datad => \Register0|ALT_INV_out\(3),
	datae => \mux|ALT_INV_bus[3]~15_combout\,
	dataf => \mux|ALT_INV_bus[0]~1_combout\,
	combout => \mux|bus[3]~16_combout\);

-- Location: IOIBUF_X89_Y4_N95
\iin[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(3),
	o => \iin[3]~input_o\);

-- Location: MLABCELL_X72_Y11_N9
\comp|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~13_sumout\ = SUM(( GND ) + ( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & (!\mux|bus[3]~16_combout\)) # (\controle|immediate_select~combout\ & ((!\iin[3]~input_o\))))) ) + ( \comp|Add0~10\ ))
-- \comp|Add0~14\ = CARRY(( GND ) + ( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & (!\mux|bus[3]~16_combout\)) # (\controle|immediate_select~combout\ & ((!\iin[3]~input_o\))))) ) + ( \comp|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_negativo~combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	datac => \mux|ALT_INV_bus[3]~16_combout\,
	dataf => \ALT_INV_iin[3]~input_o\,
	cin => \comp|Add0~10\,
	sumout => \comp|Add0~13_sumout\,
	cout => \comp|Add0~14\);

-- Location: FF_X70_Y11_N53
\Register0|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~17_sumout\,
	sload => VCC,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(4));

-- Location: FF_X72_Y11_N14
\RegisterA|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~17_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(4));

-- Location: LABCELL_X71_Y11_N12
\alu|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~17_sumout\ = SUM(( \comp|Add0~17_sumout\ ) + ( \RegisterA|out\(4) ) + ( \alu|Add0~14\ ))
-- \alu|Add0~18\ = CARRY(( \comp|Add0~17_sumout\ ) + ( \RegisterA|out\(4) ) + ( \alu|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegisterA|ALT_INV_out\(4),
	datad => \comp|ALT_INV_Add0~17_sumout\,
	cin => \alu|Add0~14\,
	sumout => \alu|Add0~17_sumout\,
	cout => \alu|Add0~18\);

-- Location: LABCELL_X70_Y11_N15
\RegisterR|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterR|out[4]~feeder_combout\ = ( \alu|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \alu|ALT_INV_Add0~17_sumout\,
	combout => \RegisterR|out[4]~feeder_combout\);

-- Location: LABCELL_X70_Y11_N51
\alu|out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~4_combout\ = (!\RegisterA|out\(4)) # (!\comp|Add0~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111010101011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterA|ALT_INV_out\(4),
	datad => \comp|ALT_INV_Add0~17_sumout\,
	combout => \alu|out~4_combout\);

-- Location: FF_X70_Y11_N16
\RegisterR|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegisterR|out[4]~feeder_combout\,
	asdata => \alu|out~4_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(4));

-- Location: FF_X72_Y11_N50
\Register1|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~17_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(4));

-- Location: FF_X74_Y12_N41
\Register4|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~17_sumout\,
	sload => VCC,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(4));

-- Location: FF_X73_Y12_N47
\Register3|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~17_sumout\,
	sload => VCC,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(4));

-- Location: FF_X73_Y12_N32
\Register6|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~17_sumout\,
	sload => VCC,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(4));

-- Location: FF_X73_Y12_N53
\Register7|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~17_sumout\,
	sload => VCC,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(4));

-- Location: FF_X72_Y12_N28
\Register5|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~17_sumout\,
	sload => VCC,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(4));

-- Location: LABCELL_X73_Y12_N3
\mux|bus[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[4]~17_combout\ = ( \Register5|out\(4) & ( \mux|bus[0]~2_combout\ & ( (!\controle|r5_select~combout\ & (\controle|r6_select~combout\ & \Register6|out\(4))) ) ) ) # ( !\Register5|out\(4) & ( \mux|bus[0]~2_combout\ & ( (!\controle|r5_select~combout\ 
-- & (\controle|r6_select~combout\ & \Register6|out\(4))) ) ) ) # ( \Register5|out\(4) & ( !\mux|bus[0]~2_combout\ & ( ((\Register7|out\(4)) # (\controle|r6_select~combout\)) # (\controle|r5_select~combout\) ) ) ) # ( !\Register5|out\(4) & ( 
-- !\mux|bus[0]~2_combout\ & ( (!\controle|r5_select~combout\ & ((!\controle|r6_select~combout\ & ((\Register7|out\(4)))) # (\controle|r6_select~combout\ & (\Register6|out\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010011101111111111100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_r5_select~combout\,
	datab => \controle|ALT_INV_r6_select~combout\,
	datac => \Register6|ALT_INV_out\(4),
	datad => \Register7|ALT_INV_out\(4),
	datae => \Register5|ALT_INV_out\(4),
	dataf => \mux|ALT_INV_bus[0]~2_combout\,
	combout => \mux|bus[4]~17_combout\);

-- Location: FF_X74_Y12_N53
\Register2|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~17_sumout\,
	sload => VCC,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(4));

-- Location: LABCELL_X73_Y12_N42
\mux|bus[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[4]~18_combout\ = ( \mux|bus[4]~17_combout\ & ( \Register2|out\(4) & ( (!\mux|bus[0]~4_combout\) # ((!\mux|bus[0]~5_combout\ & ((\Register3|out\(4)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(4)))) ) ) ) # ( !\mux|bus[4]~17_combout\ & ( 
-- \Register2|out\(4) & ( (!\mux|bus[0]~4_combout\ & (!\mux|bus[0]~5_combout\)) # (\mux|bus[0]~4_combout\ & ((!\mux|bus[0]~5_combout\ & ((\Register3|out\(4)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(4))))) ) ) ) # ( \mux|bus[4]~17_combout\ & ( 
-- !\Register2|out\(4) & ( (!\mux|bus[0]~4_combout\ & (\mux|bus[0]~5_combout\)) # (\mux|bus[0]~4_combout\ & ((!\mux|bus[0]~5_combout\ & ((\Register3|out\(4)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(4))))) ) ) ) # ( !\mux|bus[4]~17_combout\ & ( 
-- !\Register2|out\(4) & ( (\mux|bus[0]~4_combout\ & ((!\mux|bus[0]~5_combout\ & ((\Register3|out\(4)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~4_combout\,
	datab => \mux|ALT_INV_bus[0]~5_combout\,
	datac => \Register4|ALT_INV_out\(4),
	datad => \Register3|ALT_INV_out\(4),
	datae => \mux|ALT_INV_bus[4]~17_combout\,
	dataf => \Register2|ALT_INV_out\(4),
	combout => \mux|bus[4]~18_combout\);

-- Location: MLABCELL_X72_Y11_N51
\mux|bus[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[4]~19_combout\ = ( \mux|bus[4]~18_combout\ & ( \mux|bus[0]~1_combout\ & ( (\Register1|out\(4)) # (\mux|bus[0]~0_combout\) ) ) ) # ( !\mux|bus[4]~18_combout\ & ( \mux|bus[0]~1_combout\ & ( (!\mux|bus[0]~0_combout\ & \Register1|out\(4)) ) ) ) # ( 
-- \mux|bus[4]~18_combout\ & ( !\mux|bus[0]~1_combout\ & ( (!\mux|bus[0]~0_combout\ & (\Register0|out\(4))) # (\mux|bus[0]~0_combout\ & ((\RegisterR|out\(4)))) ) ) ) # ( !\mux|bus[4]~18_combout\ & ( !\mux|bus[0]~1_combout\ & ( (!\mux|bus[0]~0_combout\ & 
-- (\Register0|out\(4))) # (\mux|bus[0]~0_combout\ & ((\RegisterR|out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register0|ALT_INV_out\(4),
	datab => \mux|ALT_INV_bus[0]~0_combout\,
	datac => \RegisterR|ALT_INV_out\(4),
	datad => \Register1|ALT_INV_out\(4),
	datae => \mux|ALT_INV_bus[4]~18_combout\,
	dataf => \mux|ALT_INV_bus[0]~1_combout\,
	combout => \mux|bus[4]~19_combout\);

-- Location: IOIBUF_X70_Y0_N1
\iin[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(4),
	o => \iin[4]~input_o\);

-- Location: MLABCELL_X72_Y11_N12
\comp|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~17_sumout\ = SUM(( GND ) + ( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & (!\mux|bus[4]~19_combout\)) # (\controle|immediate_select~combout\ & ((!\iin[4]~input_o\))))) ) + ( \comp|Add0~14\ ))
-- \comp|Add0~18\ = CARRY(( GND ) + ( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & (!\mux|bus[4]~19_combout\)) # (\controle|immediate_select~combout\ & ((!\iin[4]~input_o\))))) ) + ( \comp|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_negativo~combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	datac => \mux|ALT_INV_bus[4]~19_combout\,
	dataf => \ALT_INV_iin[4]~input_o\,
	cin => \comp|Add0~14\,
	sumout => \comp|Add0~17_sumout\,
	cout => \comp|Add0~18\);

-- Location: FF_X68_Y11_N47
\Register0|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~21_sumout\,
	sload => VCC,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(5));

-- Location: FF_X68_Y11_N26
\Register1|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~21_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(5));

-- Location: FF_X72_Y11_N17
\RegisterA|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~21_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(5));

-- Location: LABCELL_X71_Y11_N15
\alu|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~21_sumout\ = SUM(( \comp|Add0~21_sumout\ ) + ( \RegisterA|out\(5) ) + ( \alu|Add0~18\ ))
-- \alu|Add0~22\ = CARRY(( \comp|Add0~21_sumout\ ) + ( \RegisterA|out\(5) ) + ( \alu|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterA|ALT_INV_out\(5),
	datad => \comp|ALT_INV_Add0~21_sumout\,
	cin => \alu|Add0~18\,
	sumout => \alu|Add0~21_sumout\,
	cout => \alu|Add0~22\);

-- Location: LABCELL_X71_Y11_N48
\alu|out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~5_combout\ = (!\RegisterA|out\(5)) # (!\comp|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegisterA|ALT_INV_out\(5),
	datad => \comp|ALT_INV_Add0~21_sumout\,
	combout => \alu|out~5_combout\);

-- Location: FF_X71_Y11_N17
\RegisterR|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \alu|Add0~21_sumout\,
	asdata => \alu|out~5_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(5));

-- Location: FF_X68_Y10_N23
\Register2|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~21_sumout\,
	sload => VCC,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(5));

-- Location: FF_X68_Y10_N8
\Register4|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~21_sumout\,
	sload => VCC,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(5));

-- Location: FF_X68_Y10_N56
\Register3|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~21_sumout\,
	sload => VCC,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(5));

-- Location: FF_X72_Y10_N56
\Register5|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~21_sumout\,
	sload => VCC,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(5));

-- Location: MLABCELL_X72_Y10_N51
\Register6|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register6|out[5]~feeder_combout\ = ( \comp|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~21_sumout\,
	combout => \Register6|out[5]~feeder_combout\);

-- Location: FF_X72_Y10_N53
\Register6|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register6|out[5]~feeder_combout\,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(5));

-- Location: FF_X72_Y10_N20
\Register7|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~21_sumout\,
	sload => VCC,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(5));

-- Location: MLABCELL_X72_Y10_N30
\mux|bus[5]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[5]~20_combout\ = ( \mux|bus[0]~2_combout\ & ( \Register7|out\(5) & ( (!\controle|r5_select~combout\ & (\Register6|out\(5) & \controle|r6_select~combout\)) ) ) ) # ( !\mux|bus[0]~2_combout\ & ( \Register7|out\(5) & ( 
-- ((!\controle|r5_select~combout\ & ((!\controle|r6_select~combout\) # (\Register6|out\(5))))) # (\Register5|out\(5)) ) ) ) # ( \mux|bus[0]~2_combout\ & ( !\Register7|out\(5) & ( (!\controle|r5_select~combout\ & (\Register6|out\(5) & 
-- \controle|r6_select~combout\)) ) ) ) # ( !\mux|bus[0]~2_combout\ & ( !\Register7|out\(5) & ( (!\controle|r5_select~combout\ & (\controle|r6_select~combout\ & ((\Register6|out\(5)) # (\Register5|out\(5))))) # (\controle|r5_select~combout\ & 
-- (\Register5|out\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101011101000000000000110011011101010111010000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register5|ALT_INV_out\(5),
	datab => \controle|ALT_INV_r5_select~combout\,
	datac => \Register6|ALT_INV_out\(5),
	datad => \controle|ALT_INV_r6_select~combout\,
	datae => \mux|ALT_INV_bus[0]~2_combout\,
	dataf => \Register7|ALT_INV_out\(5),
	combout => \mux|bus[5]~20_combout\);

-- Location: LABCELL_X68_Y10_N15
\mux|bus[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[5]~21_combout\ = ( \mux|bus[0]~4_combout\ & ( \mux|bus[5]~20_combout\ & ( (!\mux|bus[0]~5_combout\ & ((\Register3|out\(5)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(5))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( \mux|bus[5]~20_combout\ & ( 
-- (\mux|bus[0]~5_combout\) # (\Register2|out\(5)) ) ) ) # ( \mux|bus[0]~4_combout\ & ( !\mux|bus[5]~20_combout\ & ( (!\mux|bus[0]~5_combout\ & ((\Register3|out\(5)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(5))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( 
-- !\mux|bus[5]~20_combout\ & ( (\Register2|out\(5) & !\mux|bus[0]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register2|ALT_INV_out\(5),
	datab => \mux|ALT_INV_bus[0]~5_combout\,
	datac => \Register4|ALT_INV_out\(5),
	datad => \Register3|ALT_INV_out\(5),
	datae => \mux|ALT_INV_bus[0]~4_combout\,
	dataf => \mux|ALT_INV_bus[5]~20_combout\,
	combout => \mux|bus[5]~21_combout\);

-- Location: LABCELL_X68_Y11_N27
\mux|bus[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[5]~22_combout\ = ( \RegisterR|out\(5) & ( \mux|bus[5]~21_combout\ & ( ((!\mux|bus[0]~1_combout\ & (\Register0|out\(5))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(5))))) # (\mux|bus[0]~0_combout\) ) ) ) # ( !\RegisterR|out\(5) & ( 
-- \mux|bus[5]~21_combout\ & ( (!\mux|bus[0]~1_combout\ & (!\mux|bus[0]~0_combout\ & (\Register0|out\(5)))) # (\mux|bus[0]~1_combout\ & (((\Register1|out\(5))) # (\mux|bus[0]~0_combout\))) ) ) ) # ( \RegisterR|out\(5) & ( !\mux|bus[5]~21_combout\ & ( 
-- (!\mux|bus[0]~1_combout\ & (((\Register0|out\(5))) # (\mux|bus[0]~0_combout\))) # (\mux|bus[0]~1_combout\ & (!\mux|bus[0]~0_combout\ & ((\Register1|out\(5))))) ) ) ) # ( !\RegisterR|out\(5) & ( !\mux|bus[5]~21_combout\ & ( (!\mux|bus[0]~0_combout\ & 
-- ((!\mux|bus[0]~1_combout\ & (\Register0|out\(5))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~1_combout\,
	datab => \mux|ALT_INV_bus[0]~0_combout\,
	datac => \Register0|ALT_INV_out\(5),
	datad => \Register1|ALT_INV_out\(5),
	datae => \RegisterR|ALT_INV_out\(5),
	dataf => \mux|ALT_INV_bus[5]~21_combout\,
	combout => \mux|bus[5]~22_combout\);

-- Location: IOIBUF_X89_Y4_N78
\iin[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(5),
	o => \iin[5]~input_o\);

-- Location: MLABCELL_X72_Y11_N15
\comp|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~21_sumout\ = SUM(( GND ) + ( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & (!\mux|bus[5]~22_combout\)) # (\controle|immediate_select~combout\ & ((!\iin[5]~input_o\))))) ) + ( \comp|Add0~18\ ))
-- \comp|Add0~22\ = CARRY(( GND ) + ( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & (!\mux|bus[5]~22_combout\)) # (\controle|immediate_select~combout\ & ((!\iin[5]~input_o\))))) ) + ( \comp|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_negativo~combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	datac => \mux|ALT_INV_bus[5]~22_combout\,
	dataf => \ALT_INV_iin[5]~input_o\,
	cin => \comp|Add0~18\,
	sumout => \comp|Add0~21_sumout\,
	cout => \comp|Add0~22\);

-- Location: LABCELL_X68_Y11_N0
\Register0|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register0|out[6]~feeder_combout\ = \comp|Add0~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp|ALT_INV_Add0~25_sumout\,
	combout => \Register0|out[6]~feeder_combout\);

-- Location: FF_X68_Y11_N2
\Register0|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register0|out[6]~feeder_combout\,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(6));

-- Location: LABCELL_X68_Y11_N18
\Register1|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register1|out[6]~feeder_combout\ = \comp|Add0~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp|ALT_INV_Add0~25_sumout\,
	combout => \Register1|out[6]~feeder_combout\);

-- Location: FF_X68_Y11_N19
\Register1|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register1|out[6]~feeder_combout\,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(6));

-- Location: FF_X72_Y11_N20
\RegisterA|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~25_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(6));

-- Location: LABCELL_X71_Y11_N18
\alu|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~25_sumout\ = SUM(( \comp|Add0~25_sumout\ ) + ( \RegisterA|out\(6) ) + ( \alu|Add0~22\ ))
-- \alu|Add0~26\ = CARRY(( \comp|Add0~25_sumout\ ) + ( \RegisterA|out\(6) ) + ( \alu|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegisterA|ALT_INV_out\(6),
	datad => \comp|ALT_INV_Add0~25_sumout\,
	cin => \alu|Add0~22\,
	sumout => \alu|Add0~25_sumout\,
	cout => \alu|Add0~26\);

-- Location: LABCELL_X71_Y11_N57
\alu|out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~6_combout\ = (!\RegisterA|out\(6)) # (!\comp|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111010101011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterA|ALT_INV_out\(6),
	datad => \comp|ALT_INV_Add0~25_sumout\,
	combout => \alu|out~6_combout\);

-- Location: FF_X71_Y11_N20
\RegisterR|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \alu|Add0~25_sumout\,
	asdata => \alu|out~6_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(6));

-- Location: LABCELL_X68_Y12_N24
\Register4|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register4|out[6]~feeder_combout\ = ( \comp|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~25_sumout\,
	combout => \Register4|out[6]~feeder_combout\);

-- Location: FF_X68_Y12_N26
\Register4|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register4|out[6]~feeder_combout\,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(6));

-- Location: LABCELL_X68_Y12_N42
\Register2|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register2|out[6]~feeder_combout\ = ( \comp|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~25_sumout\,
	combout => \Register2|out[6]~feeder_combout\);

-- Location: FF_X68_Y12_N44
\Register2|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register2|out[6]~feeder_combout\,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(6));

-- Location: FF_X67_Y12_N7
\Register3|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~25_sumout\,
	sload => VCC,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(6));

-- Location: LABCELL_X68_Y12_N54
\Register5|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register5|out[6]~feeder_combout\ = ( \comp|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~25_sumout\,
	combout => \Register5|out[6]~feeder_combout\);

-- Location: FF_X68_Y12_N56
\Register5|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register5|out[6]~feeder_combout\,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(6));

-- Location: FF_X67_Y12_N58
\Register7|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~25_sumout\,
	sload => VCC,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(6));

-- Location: FF_X67_Y12_N1
\Register6|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~25_sumout\,
	sload => VCC,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(6));

-- Location: LABCELL_X68_Y12_N15
\mux|bus[6]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[6]~23_combout\ = ( \Register7|out\(6) & ( \Register6|out\(6) & ( (!\controle|r5_select~combout\ & (((!\mux|bus[0]~2_combout\)) # (\controle|r6_select~combout\))) # (\controle|r5_select~combout\ & (((!\mux|bus[0]~2_combout\ & 
-- \Register5|out\(6))))) ) ) ) # ( !\Register7|out\(6) & ( \Register6|out\(6) & ( (!\controle|r5_select~combout\ & (\controle|r6_select~combout\)) # (\controle|r5_select~combout\ & (((!\mux|bus[0]~2_combout\ & \Register5|out\(6))))) ) ) ) # ( 
-- \Register7|out\(6) & ( !\Register6|out\(6) & ( (!\mux|bus[0]~2_combout\ & (((!\controle|r6_select~combout\ & !\controle|r5_select~combout\)) # (\Register5|out\(6)))) ) ) ) # ( !\Register7|out\(6) & ( !\Register6|out\(6) & ( (!\mux|bus[0]~2_combout\ & 
-- (\Register5|out\(6) & ((\controle|r5_select~combout\) # (\controle|r6_select~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000100000001111000001000100011101001100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_r6_select~combout\,
	datab => \controle|ALT_INV_r5_select~combout\,
	datac => \mux|ALT_INV_bus[0]~2_combout\,
	datad => \Register5|ALT_INV_out\(6),
	datae => \Register7|ALT_INV_out\(6),
	dataf => \Register6|ALT_INV_out\(6),
	combout => \mux|bus[6]~23_combout\);

-- Location: LABCELL_X68_Y12_N9
\mux|bus[6]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[6]~24_combout\ = ( \mux|bus[0]~4_combout\ & ( \mux|bus[6]~23_combout\ & ( (!\mux|bus[0]~5_combout\ & ((\Register3|out\(6)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(6))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( \mux|bus[6]~23_combout\ & ( 
-- (\mux|bus[0]~5_combout\) # (\Register2|out\(6)) ) ) ) # ( \mux|bus[0]~4_combout\ & ( !\mux|bus[6]~23_combout\ & ( (!\mux|bus[0]~5_combout\ & ((\Register3|out\(6)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(6))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( 
-- !\mux|bus[6]~23_combout\ & ( (\Register2|out\(6) & !\mux|bus[0]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register4|ALT_INV_out\(6),
	datab => \Register2|ALT_INV_out\(6),
	datac => \mux|ALT_INV_bus[0]~5_combout\,
	datad => \Register3|ALT_INV_out\(6),
	datae => \mux|ALT_INV_bus[0]~4_combout\,
	dataf => \mux|ALT_INV_bus[6]~23_combout\,
	combout => \mux|bus[6]~24_combout\);

-- Location: LABCELL_X68_Y11_N42
\mux|bus[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[6]~25_combout\ = ( \RegisterR|out\(6) & ( \mux|bus[6]~24_combout\ & ( ((!\mux|bus[0]~1_combout\ & (\Register0|out\(6))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(6))))) # (\mux|bus[0]~0_combout\) ) ) ) # ( !\RegisterR|out\(6) & ( 
-- \mux|bus[6]~24_combout\ & ( (!\mux|bus[0]~0_combout\ & ((!\mux|bus[0]~1_combout\ & (\Register0|out\(6))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(6)))))) # (\mux|bus[0]~0_combout\ & (\mux|bus[0]~1_combout\)) ) ) ) # ( \RegisterR|out\(6) & ( 
-- !\mux|bus[6]~24_combout\ & ( (!\mux|bus[0]~0_combout\ & ((!\mux|bus[0]~1_combout\ & (\Register0|out\(6))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(6)))))) # (\mux|bus[0]~0_combout\ & (!\mux|bus[0]~1_combout\)) ) ) ) # ( !\RegisterR|out\(6) & ( 
-- !\mux|bus[6]~24_combout\ & ( (!\mux|bus[0]~0_combout\ & ((!\mux|bus[0]~1_combout\ & (\Register0|out\(6))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~0_combout\,
	datab => \mux|ALT_INV_bus[0]~1_combout\,
	datac => \Register0|ALT_INV_out\(6),
	datad => \Register1|ALT_INV_out\(6),
	datae => \RegisterR|ALT_INV_out\(6),
	dataf => \mux|ALT_INV_bus[6]~24_combout\,
	combout => \mux|bus[6]~25_combout\);

-- Location: IOIBUF_X66_Y0_N41
\iin[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iin(6),
	o => \iin[6]~input_o\);

-- Location: MLABCELL_X72_Y11_N18
\comp|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~25_sumout\ = SUM(( GND ) + ( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & (!\mux|bus[6]~25_combout\)) # (\controle|immediate_select~combout\ & ((!\iin[6]~input_o\))))) ) + ( \comp|Add0~22\ ))
-- \comp|Add0~26\ = CARRY(( GND ) + ( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & (!\mux|bus[6]~25_combout\)) # (\controle|immediate_select~combout\ & ((!\iin[6]~input_o\))))) ) + ( \comp|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_negativo~combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	datac => \mux|ALT_INV_bus[6]~25_combout\,
	dataf => \ALT_INV_iin[6]~input_o\,
	cin => \comp|Add0~22\,
	sumout => \comp|Add0~25_sumout\,
	cout => \comp|Add0~26\);

-- Location: LABCELL_X68_Y11_N3
\Register0|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register0|out[7]~feeder_combout\ = \comp|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp|ALT_INV_Add0~29_sumout\,
	combout => \Register0|out[7]~feeder_combout\);

-- Location: FF_X68_Y11_N5
\Register0|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register0|out[7]~feeder_combout\,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(7));

-- Location: FF_X68_Y11_N50
\Register1|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~29_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(7));

-- Location: FF_X72_Y11_N23
\RegisterA|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~29_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(7));

-- Location: LABCELL_X71_Y11_N21
\alu|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~29_sumout\ = SUM(( \comp|Add0~29_sumout\ ) + ( \RegisterA|out\(7) ) + ( \alu|Add0~26\ ))
-- \alu|Add0~30\ = CARRY(( \comp|Add0~29_sumout\ ) + ( \RegisterA|out\(7) ) + ( \alu|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegisterA|ALT_INV_out\(7),
	datad => \comp|ALT_INV_Add0~29_sumout\,
	cin => \alu|Add0~26\,
	sumout => \alu|Add0~29_sumout\,
	cout => \alu|Add0~30\);

-- Location: LABCELL_X70_Y11_N30
\RegisterR|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterR|out[7]~feeder_combout\ = ( \alu|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \alu|ALT_INV_Add0~29_sumout\,
	combout => \RegisterR|out[7]~feeder_combout\);

-- Location: LABCELL_X70_Y11_N6
\alu|out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~7_combout\ = ( \comp|Add0~29_sumout\ & ( !\RegisterA|out\(7) ) ) # ( !\comp|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegisterA|ALT_INV_out\(7),
	dataf => \comp|ALT_INV_Add0~29_sumout\,
	combout => \alu|out~7_combout\);

-- Location: FF_X70_Y11_N32
\RegisterR|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegisterR|out[7]~feeder_combout\,
	asdata => \alu|out~7_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(7));

-- Location: FF_X68_Y11_N32
\Register3|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~29_sumout\,
	sload => VCC,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(7));

-- Location: LABCELL_X67_Y11_N48
\Register4|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register4|out[7]~feeder_combout\ = \comp|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp|ALT_INV_Add0~29_sumout\,
	combout => \Register4|out[7]~feeder_combout\);

-- Location: FF_X67_Y11_N49
\Register4|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register4|out[7]~feeder_combout\,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(7));

-- Location: LABCELL_X67_Y11_N54
\Register2|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register2|out[7]~feeder_combout\ = \comp|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp|ALT_INV_Add0~29_sumout\,
	combout => \Register2|out[7]~feeder_combout\);

-- Location: FF_X67_Y11_N55
\Register2|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register2|out[7]~feeder_combout\,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(7));

-- Location: LABCELL_X71_Y12_N48
\Register5|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register5|out[7]~feeder_combout\ = ( \comp|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~29_sumout\,
	combout => \Register5|out[7]~feeder_combout\);

-- Location: FF_X71_Y12_N49
\Register5|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register5|out[7]~feeder_combout\,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(7));

-- Location: LABCELL_X71_Y12_N21
\Register6|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register6|out[7]~feeder_combout\ = ( \comp|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~29_sumout\,
	combout => \Register6|out[7]~feeder_combout\);

-- Location: FF_X71_Y12_N23
\Register6|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register6|out[7]~feeder_combout\,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(7));

-- Location: LABCELL_X71_Y12_N15
\Register7|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register7|out[7]~feeder_combout\ = ( \comp|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~29_sumout\,
	combout => \Register7|out[7]~feeder_combout\);

-- Location: FF_X71_Y12_N17
\Register7|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register7|out[7]~feeder_combout\,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(7));

-- Location: LABCELL_X71_Y12_N0
\mux|bus[7]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[7]~26_combout\ = ( \Register6|out\(7) & ( \Register7|out\(7) & ( (!\mux|bus[0]~2_combout\ & (((!\controle|r5_select~combout\)) # (\Register5|out\(7)))) # (\mux|bus[0]~2_combout\ & (((!\controle|r5_select~combout\ & 
-- \controle|r6_select~combout\)))) ) ) ) # ( !\Register6|out\(7) & ( \Register7|out\(7) & ( (!\mux|bus[0]~2_combout\ & (((!\controle|r5_select~combout\ & !\controle|r6_select~combout\)) # (\Register5|out\(7)))) ) ) ) # ( \Register6|out\(7) & ( 
-- !\Register7|out\(7) & ( (!\controle|r5_select~combout\ & (((\controle|r6_select~combout\)))) # (\controle|r5_select~combout\ & (!\mux|bus[0]~2_combout\ & (\Register5|out\(7)))) ) ) ) # ( !\Register6|out\(7) & ( !\Register7|out\(7) & ( 
-- (!\mux|bus[0]~2_combout\ & (\Register5|out\(7) & ((\controle|r6_select~combout\) # (\controle|r5_select~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000101111001010100010001000101010001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~2_combout\,
	datab => \Register5|ALT_INV_out\(7),
	datac => \controle|ALT_INV_r5_select~combout\,
	datad => \controle|ALT_INV_r6_select~combout\,
	datae => \Register6|ALT_INV_out\(7),
	dataf => \Register7|ALT_INV_out\(7),
	combout => \mux|bus[7]~26_combout\);

-- Location: LABCELL_X68_Y11_N33
\mux|bus[7]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[7]~27_combout\ = ( \mux|bus[0]~4_combout\ & ( \mux|bus[7]~26_combout\ & ( (!\mux|bus[0]~5_combout\ & (\Register3|out\(7))) # (\mux|bus[0]~5_combout\ & ((\Register4|out\(7)))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( \mux|bus[7]~26_combout\ & ( 
-- (\Register2|out\(7)) # (\mux|bus[0]~5_combout\) ) ) ) # ( \mux|bus[0]~4_combout\ & ( !\mux|bus[7]~26_combout\ & ( (!\mux|bus[0]~5_combout\ & (\Register3|out\(7))) # (\mux|bus[0]~5_combout\ & ((\Register4|out\(7)))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( 
-- !\mux|bus[7]~26_combout\ & ( (!\mux|bus[0]~5_combout\ & \Register2|out\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001001110010011101010101111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~5_combout\,
	datab => \Register3|ALT_INV_out\(7),
	datac => \Register4|ALT_INV_out\(7),
	datad => \Register2|ALT_INV_out\(7),
	datae => \mux|ALT_INV_bus[0]~4_combout\,
	dataf => \mux|ALT_INV_bus[7]~26_combout\,
	combout => \mux|bus[7]~27_combout\);

-- Location: LABCELL_X68_Y11_N51
\mux|bus[7]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[7]~28_combout\ = ( \RegisterR|out\(7) & ( \mux|bus[7]~27_combout\ & ( ((!\mux|bus[0]~1_combout\ & (\Register0|out\(7))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(7))))) # (\mux|bus[0]~0_combout\) ) ) ) # ( !\RegisterR|out\(7) & ( 
-- \mux|bus[7]~27_combout\ & ( (!\mux|bus[0]~0_combout\ & ((!\mux|bus[0]~1_combout\ & (\Register0|out\(7))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(7)))))) # (\mux|bus[0]~0_combout\ & (((\mux|bus[0]~1_combout\)))) ) ) ) # ( \RegisterR|out\(7) & ( 
-- !\mux|bus[7]~27_combout\ & ( (!\mux|bus[0]~0_combout\ & ((!\mux|bus[0]~1_combout\ & (\Register0|out\(7))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(7)))))) # (\mux|bus[0]~0_combout\ & (((!\mux|bus[0]~1_combout\)))) ) ) ) # ( !\RegisterR|out\(7) & ( 
-- !\mux|bus[7]~27_combout\ & ( (!\mux|bus[0]~0_combout\ & ((!\mux|bus[0]~1_combout\ & (\Register0|out\(7))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register0|ALT_INV_out\(7),
	datab => \mux|ALT_INV_bus[0]~0_combout\,
	datac => \mux|ALT_INV_bus[0]~1_combout\,
	datad => \Register1|ALT_INV_out\(7),
	datae => \RegisterR|ALT_INV_out\(7),
	dataf => \mux|ALT_INV_bus[7]~27_combout\,
	combout => \mux|bus[7]~28_combout\);

-- Location: MLABCELL_X72_Y11_N21
\comp|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~29_sumout\ = SUM(( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & ((!\mux|bus[7]~28_combout\))) # (\controle|immediate_select~combout\ & (!\iin[7]~input_o\)))) ) + ( GND ) + ( \comp|Add0~26\ ))
-- \comp|Add0~30\ = CARRY(( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & ((!\mux|bus[7]~28_combout\))) # (\controle|immediate_select~combout\ & (!\iin[7]~input_o\)))) ) + ( GND ) + ( \comp|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_negativo~combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	datac => \ALT_INV_iin[7]~input_o\,
	datad => \mux|ALT_INV_bus[7]~28_combout\,
	cin => \comp|Add0~26\,
	sumout => \comp|Add0~29_sumout\,
	cout => \comp|Add0~30\);

-- Location: FF_X68_Y11_N56
\Register1|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~33_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(8));

-- Location: FF_X72_Y11_N26
\RegisterA|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~33_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(8));

-- Location: LABCELL_X71_Y11_N24
\alu|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~33_sumout\ = SUM(( \comp|Add0~33_sumout\ ) + ( \RegisterA|out\(8) ) + ( \alu|Add0~30\ ))
-- \alu|Add0~34\ = CARRY(( \comp|Add0~33_sumout\ ) + ( \RegisterA|out\(8) ) + ( \alu|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegisterA|ALT_INV_out\(8),
	datad => \comp|ALT_INV_Add0~33_sumout\,
	cin => \alu|Add0~30\,
	sumout => \alu|Add0~33_sumout\,
	cout => \alu|Add0~34\);

-- Location: LABCELL_X70_Y11_N57
\RegisterR|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterR|out[8]~feeder_combout\ = ( \alu|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \alu|ALT_INV_Add0~33_sumout\,
	combout => \RegisterR|out[8]~feeder_combout\);

-- Location: LABCELL_X70_Y11_N18
\alu|out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~8_combout\ = (!\RegisterA|out\(8)) # (!\comp|Add0~33_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegisterA|ALT_INV_out\(8),
	datad => \comp|ALT_INV_Add0~33_sumout\,
	combout => \alu|out~8_combout\);

-- Location: FF_X70_Y11_N59
\RegisterR|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegisterR|out[8]~feeder_combout\,
	asdata => \alu|out~8_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(8));

-- Location: FF_X68_Y11_N10
\Register0|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~33_sumout\,
	sload => VCC,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(8));

-- Location: FF_X68_Y11_N38
\Register3|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~33_sumout\,
	sload => VCC,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(8));

-- Location: LABCELL_X67_Y11_N24
\Register4|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register4|out[8]~feeder_combout\ = \comp|Add0~33_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp|ALT_INV_Add0~33_sumout\,
	combout => \Register4|out[8]~feeder_combout\);

-- Location: FF_X67_Y11_N25
\Register4|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register4|out[8]~feeder_combout\,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(8));

-- Location: LABCELL_X67_Y11_N18
\Register2|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register2|out[8]~feeder_combout\ = \comp|Add0~33_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp|ALT_INV_Add0~33_sumout\,
	combout => \Register2|out[8]~feeder_combout\);

-- Location: FF_X67_Y11_N19
\Register2|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register2|out[8]~feeder_combout\,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(8));

-- Location: LABCELL_X71_Y12_N54
\Register5|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register5|out[8]~feeder_combout\ = ( \comp|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~33_sumout\,
	combout => \Register5|out[8]~feeder_combout\);

-- Location: FF_X71_Y12_N55
\Register5|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register5|out[8]~feeder_combout\,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(8));

-- Location: FF_X71_Y12_N5
\Register6|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~33_sumout\,
	sload => VCC,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(8));

-- Location: LABCELL_X71_Y12_N42
\Register7|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register7|out[8]~feeder_combout\ = ( \comp|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~33_sumout\,
	combout => \Register7|out[8]~feeder_combout\);

-- Location: FF_X71_Y12_N44
\Register7|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register7|out[8]~feeder_combout\,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(8));

-- Location: LABCELL_X71_Y12_N6
\mux|bus[8]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[8]~29_combout\ = ( \Register6|out\(8) & ( \Register7|out\(8) & ( (!\mux|bus[0]~2_combout\ & (((!\controle|r5_select~combout\)) # (\Register5|out\(8)))) # (\mux|bus[0]~2_combout\ & (((\controle|r6_select~combout\ & 
-- !\controle|r5_select~combout\)))) ) ) ) # ( !\Register6|out\(8) & ( \Register7|out\(8) & ( (!\mux|bus[0]~2_combout\ & (((!\controle|r6_select~combout\ & !\controle|r5_select~combout\)) # (\Register5|out\(8)))) ) ) ) # ( \Register6|out\(8) & ( 
-- !\Register7|out\(8) & ( (!\controle|r5_select~combout\ & (((\controle|r6_select~combout\)))) # (\controle|r5_select~combout\ & (!\mux|bus[0]~2_combout\ & (\Register5|out\(8)))) ) ) ) # ( !\Register6|out\(8) & ( !\Register7|out\(8) & ( 
-- (!\mux|bus[0]~2_combout\ & (\Register5|out\(8) & ((\controle|r5_select~combout\) # (\controle|r6_select~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000011110010001010100010001000101010111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~2_combout\,
	datab => \Register5|ALT_INV_out\(8),
	datac => \controle|ALT_INV_r6_select~combout\,
	datad => \controle|ALT_INV_r5_select~combout\,
	datae => \Register6|ALT_INV_out\(8),
	dataf => \Register7|ALT_INV_out\(8),
	combout => \mux|bus[8]~29_combout\);

-- Location: LABCELL_X68_Y11_N39
\mux|bus[8]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[8]~30_combout\ = ( \mux|bus[0]~4_combout\ & ( \mux|bus[8]~29_combout\ & ( (!\mux|bus[0]~5_combout\ & (\Register3|out\(8))) # (\mux|bus[0]~5_combout\ & ((\Register4|out\(8)))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( \mux|bus[8]~29_combout\ & ( 
-- (\mux|bus[0]~5_combout\) # (\Register2|out\(8)) ) ) ) # ( \mux|bus[0]~4_combout\ & ( !\mux|bus[8]~29_combout\ & ( (!\mux|bus[0]~5_combout\ & (\Register3|out\(8))) # (\mux|bus[0]~5_combout\ & ((\Register4|out\(8)))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( 
-- !\mux|bus[8]~29_combout\ & ( (\Register2|out\(8) & !\mux|bus[0]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010011001100001111111111110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register3|ALT_INV_out\(8),
	datab => \Register4|ALT_INV_out\(8),
	datac => \Register2|ALT_INV_out\(8),
	datad => \mux|ALT_INV_bus[0]~5_combout\,
	datae => \mux|ALT_INV_bus[0]~4_combout\,
	dataf => \mux|ALT_INV_bus[8]~29_combout\,
	combout => \mux|bus[8]~30_combout\);

-- Location: LABCELL_X68_Y11_N57
\mux|bus[8]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[8]~31_combout\ = ( \mux|bus[0]~1_combout\ & ( \mux|bus[8]~30_combout\ & ( (\Register1|out\(8)) # (\mux|bus[0]~0_combout\) ) ) ) # ( !\mux|bus[0]~1_combout\ & ( \mux|bus[8]~30_combout\ & ( (!\mux|bus[0]~0_combout\ & ((\Register0|out\(8)))) # 
-- (\mux|bus[0]~0_combout\ & (\RegisterR|out\(8))) ) ) ) # ( \mux|bus[0]~1_combout\ & ( !\mux|bus[8]~30_combout\ & ( (!\mux|bus[0]~0_combout\ & \Register1|out\(8)) ) ) ) # ( !\mux|bus[0]~1_combout\ & ( !\mux|bus[8]~30_combout\ & ( (!\mux|bus[0]~0_combout\ & 
-- ((\Register0|out\(8)))) # (\mux|bus[0]~0_combout\ & (\RegisterR|out\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~0_combout\,
	datab => \Register1|ALT_INV_out\(8),
	datac => \RegisterR|ALT_INV_out\(8),
	datad => \Register0|ALT_INV_out\(8),
	datae => \mux|ALT_INV_bus[0]~1_combout\,
	dataf => \mux|ALT_INV_bus[8]~30_combout\,
	combout => \mux|bus[8]~31_combout\);

-- Location: MLABCELL_X72_Y11_N24
\comp|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~33_sumout\ = SUM(( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & ((!\mux|bus[8]~31_combout\))) # (\controle|immediate_select~combout\ & (!\iin[8]~input_o\)))) ) + ( GND ) + ( \comp|Add0~30\ ))
-- \comp|Add0~34\ = CARRY(( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & ((!\mux|bus[8]~31_combout\))) # (\controle|immediate_select~combout\ & (!\iin[8]~input_o\)))) ) + ( GND ) + ( \comp|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_negativo~combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	datac => \ALT_INV_iin[8]~input_o\,
	datad => \mux|ALT_INV_bus[8]~31_combout\,
	cin => \comp|Add0~30\,
	sumout => \comp|Add0~33_sumout\,
	cout => \comp|Add0~34\);

-- Location: FF_X73_Y11_N34
\Register1|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~37_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(9));

-- Location: FF_X72_Y11_N29
\RegisterA|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~37_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(9));

-- Location: LABCELL_X71_Y11_N27
\alu|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~37_sumout\ = SUM(( \comp|Add0~37_sumout\ ) + ( \RegisterA|out\(9) ) + ( \alu|Add0~34\ ))
-- \alu|Add0~38\ = CARRY(( \comp|Add0~37_sumout\ ) + ( \RegisterA|out\(9) ) + ( \alu|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp|ALT_INV_Add0~37_sumout\,
	dataf => \RegisterA|ALT_INV_out\(9),
	cin => \alu|Add0~34\,
	sumout => \alu|Add0~37_sumout\,
	cout => \alu|Add0~38\);

-- Location: LABCELL_X70_Y11_N24
\RegisterR|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterR|out[9]~feeder_combout\ = ( \alu|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \alu|ALT_INV_Add0~37_sumout\,
	combout => \RegisterR|out[9]~feeder_combout\);

-- Location: LABCELL_X70_Y11_N45
\alu|out~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~9_combout\ = ( \comp|Add0~37_sumout\ & ( !\RegisterA|out\(9) ) ) # ( !\comp|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegisterA|ALT_INV_out\(9),
	dataf => \comp|ALT_INV_Add0~37_sumout\,
	combout => \alu|out~9_combout\);

-- Location: FF_X70_Y11_N25
\RegisterR|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegisterR|out[9]~feeder_combout\,
	asdata => \alu|out~9_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(9));

-- Location: FF_X74_Y11_N2
\Register4|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~37_sumout\,
	sload => VCC,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(9));

-- Location: FF_X74_Y11_N29
\Register2|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~37_sumout\,
	sload => VCC,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(9));

-- Location: FF_X73_Y11_N26
\Register3|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~37_sumout\,
	sload => VCC,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(9));

-- Location: FF_X72_Y10_N14
\Register5|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~37_sumout\,
	sload => VCC,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(9));

-- Location: FF_X72_Y10_N43
\Register7|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~37_sumout\,
	sload => VCC,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(9));

-- Location: FF_X72_Y10_N50
\Register6|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~37_sumout\,
	sload => VCC,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(9));

-- Location: MLABCELL_X72_Y10_N57
\mux|bus[9]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[9]~32_combout\ = ( \Register7|out\(9) & ( \Register6|out\(9) & ( (!\controle|r5_select~combout\ & (((!\mux|bus[0]~2_combout\)) # (\controle|r6_select~combout\))) # (\controle|r5_select~combout\ & (((\Register5|out\(9) & 
-- !\mux|bus[0]~2_combout\)))) ) ) ) # ( !\Register7|out\(9) & ( \Register6|out\(9) & ( (!\controle|r5_select~combout\ & (\controle|r6_select~combout\)) # (\controle|r5_select~combout\ & (((\Register5|out\(9) & !\mux|bus[0]~2_combout\)))) ) ) ) # ( 
-- \Register7|out\(9) & ( !\Register6|out\(9) & ( (!\mux|bus[0]~2_combout\ & (((!\controle|r5_select~combout\ & !\controle|r6_select~combout\)) # (\Register5|out\(9)))) ) ) ) # ( !\Register7|out\(9) & ( !\Register6|out\(9) & ( (\Register5|out\(9) & 
-- (!\mux|bus[0]~2_combout\ & ((\controle|r6_select~combout\) # (\controle|r5_select~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000100011110000000000100111001000101010111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_r5_select~combout\,
	datab => \controle|ALT_INV_r6_select~combout\,
	datac => \Register5|ALT_INV_out\(9),
	datad => \mux|ALT_INV_bus[0]~2_combout\,
	datae => \Register7|ALT_INV_out\(9),
	dataf => \Register6|ALT_INV_out\(9),
	combout => \mux|bus[9]~32_combout\);

-- Location: LABCELL_X73_Y11_N51
\mux|bus[9]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[9]~33_combout\ = ( \mux|bus[0]~4_combout\ & ( \mux|bus[9]~32_combout\ & ( (!\mux|bus[0]~5_combout\ & ((\Register3|out\(9)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(9))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( \mux|bus[9]~32_combout\ & ( 
-- (\Register2|out\(9)) # (\mux|bus[0]~5_combout\) ) ) ) # ( \mux|bus[0]~4_combout\ & ( !\mux|bus[9]~32_combout\ & ( (!\mux|bus[0]~5_combout\ & ((\Register3|out\(9)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(9))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( 
-- !\mux|bus[9]~32_combout\ & ( (!\mux|bus[0]~5_combout\ & \Register2|out\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register4|ALT_INV_out\(9),
	datab => \mux|ALT_INV_bus[0]~5_combout\,
	datac => \Register2|ALT_INV_out\(9),
	datad => \Register3|ALT_INV_out\(9),
	datae => \mux|ALT_INV_bus[0]~4_combout\,
	dataf => \mux|ALT_INV_bus[9]~32_combout\,
	combout => \mux|bus[9]~33_combout\);

-- Location: FF_X74_Y11_N31
\Register0|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~37_sumout\,
	sload => VCC,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(9));

-- Location: LABCELL_X73_Y11_N39
\mux|bus[9]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[9]~34_combout\ = ( \Register0|out\(9) & ( \mux|bus[0]~0_combout\ & ( (!\mux|bus[0]~1_combout\ & (\RegisterR|out\(9))) # (\mux|bus[0]~1_combout\ & ((\mux|bus[9]~33_combout\))) ) ) ) # ( !\Register0|out\(9) & ( \mux|bus[0]~0_combout\ & ( 
-- (!\mux|bus[0]~1_combout\ & (\RegisterR|out\(9))) # (\mux|bus[0]~1_combout\ & ((\mux|bus[9]~33_combout\))) ) ) ) # ( \Register0|out\(9) & ( !\mux|bus[0]~0_combout\ & ( (!\mux|bus[0]~1_combout\) # (\Register1|out\(9)) ) ) ) # ( !\Register0|out\(9) & ( 
-- !\mux|bus[0]~0_combout\ & ( (\Register1|out\(9) & \mux|bus[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register1|ALT_INV_out\(9),
	datab => \mux|ALT_INV_bus[0]~1_combout\,
	datac => \RegisterR|ALT_INV_out\(9),
	datad => \mux|ALT_INV_bus[9]~33_combout\,
	datae => \Register0|ALT_INV_out\(9),
	dataf => \mux|ALT_INV_bus[0]~0_combout\,
	combout => \mux|bus[9]~34_combout\);

-- Location: MLABCELL_X72_Y11_N27
\comp|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~37_sumout\ = SUM(( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & ((!\mux|bus[9]~34_combout\))) # (\controle|immediate_select~combout\ & (!\iin[9]~input_o\)))) ) + ( GND ) + ( \comp|Add0~34\ ))
-- \comp|Add0~38\ = CARRY(( !\controle|negativo~combout\ $ (((!\controle|immediate_select~combout\ & ((!\mux|bus[9]~34_combout\))) # (\controle|immediate_select~combout\ & (!\iin[9]~input_o\)))) ) + ( GND ) + ( \comp|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_negativo~combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	datac => \ALT_INV_iin[9]~input_o\,
	datad => \mux|ALT_INV_bus[9]~34_combout\,
	cin => \comp|Add0~34\,
	sumout => \comp|Add0~37_sumout\,
	cout => \comp|Add0~38\);

-- Location: FF_X73_Y10_N56
\Register1|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~41_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(10));

-- Location: LABCELL_X71_Y10_N54
\Register0|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register0|out[10]~feeder_combout\ = ( \comp|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~41_sumout\,
	combout => \Register0|out[10]~feeder_combout\);

-- Location: FF_X71_Y10_N55
\Register0|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register0|out[10]~feeder_combout\,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(10));

-- Location: FF_X72_Y11_N32
\RegisterA|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~41_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(10));

-- Location: LABCELL_X71_Y11_N30
\alu|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~41_sumout\ = SUM(( \comp|Add0~41_sumout\ ) + ( \RegisterA|out\(10) ) + ( \alu|Add0~38\ ))
-- \alu|Add0~42\ = CARRY(( \comp|Add0~41_sumout\ ) + ( \RegisterA|out\(10) ) + ( \alu|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegisterA|ALT_INV_out\(10),
	datad => \comp|ALT_INV_Add0~41_sumout\,
	cin => \alu|Add0~38\,
	sumout => \alu|Add0~41_sumout\,
	cout => \alu|Add0~42\);

-- Location: LABCELL_X70_Y11_N3
\RegisterR|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterR|out[10]~feeder_combout\ = ( \alu|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \alu|ALT_INV_Add0~41_sumout\,
	combout => \RegisterR|out[10]~feeder_combout\);

-- Location: LABCELL_X70_Y11_N54
\alu|out~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~10_combout\ = ( \comp|Add0~41_sumout\ & ( !\RegisterA|out\(10) ) ) # ( !\comp|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegisterA|ALT_INV_out\(10),
	dataf => \comp|ALT_INV_Add0~41_sumout\,
	combout => \alu|out~10_combout\);

-- Location: FF_X70_Y11_N4
\RegisterR|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegisterR|out[10]~feeder_combout\,
	asdata => \alu|out~10_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(10));

-- Location: LABCELL_X71_Y10_N0
\Register4|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register4|out[10]~feeder_combout\ = ( \comp|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~41_sumout\,
	combout => \Register4|out[10]~feeder_combout\);

-- Location: FF_X71_Y10_N1
\Register4|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register4|out[10]~feeder_combout\,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(10));

-- Location: FF_X73_Y10_N32
\Register3|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~41_sumout\,
	sload => VCC,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(10));

-- Location: FF_X73_Y10_N49
\Register2|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~41_sumout\,
	sload => VCC,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(10));

-- Location: FF_X71_Y12_N38
\Register7|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~41_sumout\,
	sload => VCC,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(10));

-- Location: LABCELL_X71_Y12_N18
\Register6|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register6|out[10]~feeder_combout\ = \comp|Add0~41_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp|ALT_INV_Add0~41_sumout\,
	combout => \Register6|out[10]~feeder_combout\);

-- Location: FF_X71_Y12_N19
\Register6|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register6|out[10]~feeder_combout\,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(10));

-- Location: LABCELL_X71_Y12_N51
\Register5|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register5|out[10]~feeder_combout\ = \comp|Add0~41_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp|ALT_INV_Add0~41_sumout\,
	combout => \Register5|out[10]~feeder_combout\);

-- Location: FF_X71_Y12_N53
\Register5|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register5|out[10]~feeder_combout\,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(10));

-- Location: LABCELL_X71_Y12_N39
\mux|bus[10]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[10]~35_combout\ = ( \controle|r6_select~combout\ & ( \Register5|out\(10) & ( (!\mux|bus[0]~2_combout\) # ((\Register6|out\(10) & !\controle|r5_select~combout\)) ) ) ) # ( !\controle|r6_select~combout\ & ( \Register5|out\(10) & ( 
-- (!\mux|bus[0]~2_combout\ & ((\controle|r5_select~combout\) # (\Register7|out\(10)))) ) ) ) # ( \controle|r6_select~combout\ & ( !\Register5|out\(10) & ( (\Register6|out\(10) & !\controle|r5_select~combout\) ) ) ) # ( !\controle|r6_select~combout\ & ( 
-- !\Register5|out\(10) & ( (\Register7|out\(10) & (!\mux|bus[0]~2_combout\ & !\controle|r5_select~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000000011110000000001000100110011001100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register7|ALT_INV_out\(10),
	datab => \mux|ALT_INV_bus[0]~2_combout\,
	datac => \Register6|ALT_INV_out\(10),
	datad => \controle|ALT_INV_r5_select~combout\,
	datae => \controle|ALT_INV_r6_select~combout\,
	dataf => \Register5|ALT_INV_out\(10),
	combout => \mux|bus[10]~35_combout\);

-- Location: MLABCELL_X72_Y10_N15
\mux|bus[10]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[10]~36_combout\ = ( \Register2|out\(10) & ( \mux|bus[10]~35_combout\ & ( (!\mux|bus[0]~4_combout\) # ((!\mux|bus[0]~5_combout\ & ((\Register3|out\(10)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(10)))) ) ) ) # ( !\Register2|out\(10) & ( 
-- \mux|bus[10]~35_combout\ & ( (!\mux|bus[0]~5_combout\ & (((\mux|bus[0]~4_combout\ & \Register3|out\(10))))) # (\mux|bus[0]~5_combout\ & (((!\mux|bus[0]~4_combout\)) # (\Register4|out\(10)))) ) ) ) # ( \Register2|out\(10) & ( !\mux|bus[10]~35_combout\ & ( 
-- (!\mux|bus[0]~5_combout\ & (((!\mux|bus[0]~4_combout\) # (\Register3|out\(10))))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(10) & (\mux|bus[0]~4_combout\))) ) ) ) # ( !\Register2|out\(10) & ( !\mux|bus[10]~35_combout\ & ( (\mux|bus[0]~4_combout\ & 
-- ((!\mux|bus[0]~5_combout\ & ((\Register3|out\(10)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~5_combout\,
	datab => \Register4|ALT_INV_out\(10),
	datac => \mux|ALT_INV_bus[0]~4_combout\,
	datad => \Register3|ALT_INV_out\(10),
	datae => \Register2|ALT_INV_out\(10),
	dataf => \mux|ALT_INV_bus[10]~35_combout\,
	combout => \mux|bus[10]~36_combout\);

-- Location: MLABCELL_X72_Y10_N39
\mux|bus[10]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[10]~37_combout\ = ( \RegisterR|out\(10) & ( \mux|bus[10]~36_combout\ & ( ((!\mux|bus[0]~1_combout\ & ((\Register0|out\(10)))) # (\mux|bus[0]~1_combout\ & (\Register1|out\(10)))) # (\mux|bus[0]~0_combout\) ) ) ) # ( !\RegisterR|out\(10) & ( 
-- \mux|bus[10]~36_combout\ & ( (!\mux|bus[0]~1_combout\ & (!\mux|bus[0]~0_combout\ & ((\Register0|out\(10))))) # (\mux|bus[0]~1_combout\ & (((\Register1|out\(10))) # (\mux|bus[0]~0_combout\))) ) ) ) # ( \RegisterR|out\(10) & ( !\mux|bus[10]~36_combout\ & ( 
-- (!\mux|bus[0]~1_combout\ & (((\Register0|out\(10))) # (\mux|bus[0]~0_combout\))) # (\mux|bus[0]~1_combout\ & (!\mux|bus[0]~0_combout\ & (\Register1|out\(10)))) ) ) ) # ( !\RegisterR|out\(10) & ( !\mux|bus[10]~36_combout\ & ( (!\mux|bus[0]~0_combout\ & 
-- ((!\mux|bus[0]~1_combout\ & ((\Register0|out\(10)))) # (\mux|bus[0]~1_combout\ & (\Register1|out\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~1_combout\,
	datab => \mux|ALT_INV_bus[0]~0_combout\,
	datac => \Register1|ALT_INV_out\(10),
	datad => \Register0|ALT_INV_out\(10),
	datae => \RegisterR|ALT_INV_out\(10),
	dataf => \mux|ALT_INV_bus[10]~36_combout\,
	combout => \mux|bus[10]~37_combout\);

-- Location: MLABCELL_X72_Y11_N30
\comp|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~41_sumout\ = SUM(( !\controle|negativo~combout\ $ (((!\mux|bus[10]~37_combout\) # (\controle|immediate_select~combout\))) ) + ( GND ) + ( \comp|Add0~38\ ))
-- \comp|Add0~42\ = CARRY(( !\controle|negativo~combout\ $ (((!\mux|bus[10]~37_combout\) # (\controle|immediate_select~combout\))) ) + ( GND ) + ( \comp|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_negativo~combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	datac => \mux|ALT_INV_bus[10]~37_combout\,
	cin => \comp|Add0~38\,
	sumout => \comp|Add0~41_sumout\,
	cout => \comp|Add0~42\);

-- Location: LABCELL_X71_Y9_N21
\Register0|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register0|out[11]~feeder_combout\ = ( \comp|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~45_sumout\,
	combout => \Register0|out[11]~feeder_combout\);

-- Location: FF_X71_Y9_N23
\Register0|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register0|out[11]~feeder_combout\,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(11));

-- Location: FF_X72_Y9_N32
\Register1|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~45_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(11));

-- Location: FF_X72_Y11_N35
\RegisterA|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~45_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(11));

-- Location: LABCELL_X71_Y11_N33
\alu|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~45_sumout\ = SUM(( \comp|Add0~45_sumout\ ) + ( \RegisterA|out\(11) ) + ( \alu|Add0~42\ ))
-- \alu|Add0~46\ = CARRY(( \comp|Add0~45_sumout\ ) + ( \RegisterA|out\(11) ) + ( \alu|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegisterA|ALT_INV_out\(11),
	datad => \comp|ALT_INV_Add0~45_sumout\,
	cin => \alu|Add0~42\,
	sumout => \alu|Add0~45_sumout\,
	cout => \alu|Add0~46\);

-- Location: LABCELL_X70_Y11_N36
\RegisterR|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterR|out[11]~feeder_combout\ = ( \alu|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \alu|ALT_INV_Add0~45_sumout\,
	combout => \RegisterR|out[11]~feeder_combout\);

-- Location: LABCELL_X70_Y11_N48
\alu|out~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~11_combout\ = (!\RegisterA|out\(11)) # (!\comp|Add0~45_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegisterA|ALT_INV_out\(11),
	datad => \comp|ALT_INV_Add0~45_sumout\,
	combout => \alu|out~11_combout\);

-- Location: FF_X70_Y11_N38
\RegisterR|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegisterR|out[11]~feeder_combout\,
	asdata => \alu|out~11_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(11));

-- Location: MLABCELL_X72_Y9_N15
\Register4|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register4|out[11]~feeder_combout\ = ( \comp|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~45_sumout\,
	combout => \Register4|out[11]~feeder_combout\);

-- Location: FF_X72_Y9_N17
\Register4|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register4|out[11]~feeder_combout\,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(11));

-- Location: MLABCELL_X72_Y9_N42
\Register3|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register3|out[11]~feeder_combout\ = ( \comp|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~45_sumout\,
	combout => \Register3|out[11]~feeder_combout\);

-- Location: FF_X72_Y9_N44
\Register3|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register3|out[11]~feeder_combout\,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(11));

-- Location: LABCELL_X71_Y9_N51
\Register2|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register2|out[11]~feeder_combout\ = ( \comp|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~45_sumout\,
	combout => \Register2|out[11]~feeder_combout\);

-- Location: FF_X71_Y9_N52
\Register2|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register2|out[11]~feeder_combout\,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(11));

-- Location: FF_X71_Y12_N11
\Register6|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~45_sumout\,
	sload => VCC,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(11));

-- Location: FF_X71_Y12_N59
\Register5|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~45_sumout\,
	sload => VCC,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(11));

-- Location: FF_X71_Y12_N26
\Register7|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~45_sumout\,
	sload => VCC,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(11));

-- Location: LABCELL_X71_Y12_N27
\mux|bus[11]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[11]~38_combout\ = ( \controle|r5_select~combout\ & ( \Register7|out\(11) & ( (!\mux|bus[0]~2_combout\ & \Register5|out\(11)) ) ) ) # ( !\controle|r5_select~combout\ & ( \Register7|out\(11) & ( (!\controle|r6_select~combout\ & 
-- (!\mux|bus[0]~2_combout\)) # (\controle|r6_select~combout\ & (((!\mux|bus[0]~2_combout\ & \Register5|out\(11))) # (\Register6|out\(11)))) ) ) ) # ( \controle|r5_select~combout\ & ( !\Register7|out\(11) & ( (!\mux|bus[0]~2_combout\ & \Register5|out\(11)) ) 
-- ) ) # ( !\controle|r5_select~combout\ & ( !\Register7|out\(11) & ( (\controle|r6_select~combout\ & (((!\mux|bus[0]~2_combout\ & \Register5|out\(11))) # (\Register6|out\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111011000010100000101010101010001110110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~2_combout\,
	datab => \Register6|ALT_INV_out\(11),
	datac => \Register5|ALT_INV_out\(11),
	datad => \controle|ALT_INV_r6_select~combout\,
	datae => \controle|ALT_INV_r5_select~combout\,
	dataf => \Register7|ALT_INV_out\(11),
	combout => \mux|bus[11]~38_combout\);

-- Location: MLABCELL_X72_Y9_N39
\mux|bus[11]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[11]~39_combout\ = ( \mux|bus[0]~4_combout\ & ( \mux|bus[11]~38_combout\ & ( (!\mux|bus[0]~5_combout\ & ((\Register3|out\(11)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(11))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( \mux|bus[11]~38_combout\ & ( 
-- (\Register2|out\(11)) # (\mux|bus[0]~5_combout\) ) ) ) # ( \mux|bus[0]~4_combout\ & ( !\mux|bus[11]~38_combout\ & ( (!\mux|bus[0]~5_combout\ & ((\Register3|out\(11)))) # (\mux|bus[0]~5_combout\ & (\Register4|out\(11))) ) ) ) # ( !\mux|bus[0]~4_combout\ & 
-- ( !\mux|bus[11]~38_combout\ & ( (!\mux|bus[0]~5_combout\ & \Register2|out\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000110110001101101010101111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~5_combout\,
	datab => \Register4|ALT_INV_out\(11),
	datac => \Register3|ALT_INV_out\(11),
	datad => \Register2|ALT_INV_out\(11),
	datae => \mux|ALT_INV_bus[0]~4_combout\,
	dataf => \mux|ALT_INV_bus[11]~38_combout\,
	combout => \mux|bus[11]~39_combout\);

-- Location: MLABCELL_X72_Y9_N33
\mux|bus[11]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[11]~40_combout\ = ( \RegisterR|out\(11) & ( \mux|bus[11]~39_combout\ & ( ((!\mux|bus[0]~1_combout\ & (\Register0|out\(11))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(11))))) # (\mux|bus[0]~0_combout\) ) ) ) # ( !\RegisterR|out\(11) & ( 
-- \mux|bus[11]~39_combout\ & ( (!\mux|bus[0]~1_combout\ & (\Register0|out\(11) & ((!\mux|bus[0]~0_combout\)))) # (\mux|bus[0]~1_combout\ & (((\mux|bus[0]~0_combout\) # (\Register1|out\(11))))) ) ) ) # ( \RegisterR|out\(11) & ( !\mux|bus[11]~39_combout\ & ( 
-- (!\mux|bus[0]~1_combout\ & (((\mux|bus[0]~0_combout\)) # (\Register0|out\(11)))) # (\mux|bus[0]~1_combout\ & (((\Register1|out\(11) & !\mux|bus[0]~0_combout\)))) ) ) ) # ( !\RegisterR|out\(11) & ( !\mux|bus[11]~39_combout\ & ( (!\mux|bus[0]~0_combout\ & 
-- ((!\mux|bus[0]~1_combout\ & (\Register0|out\(11))) # (\mux|bus[0]~1_combout\ & ((\Register1|out\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~1_combout\,
	datab => \Register0|ALT_INV_out\(11),
	datac => \Register1|ALT_INV_out\(11),
	datad => \mux|ALT_INV_bus[0]~0_combout\,
	datae => \RegisterR|ALT_INV_out\(11),
	dataf => \mux|ALT_INV_bus[11]~39_combout\,
	combout => \mux|bus[11]~40_combout\);

-- Location: MLABCELL_X72_Y11_N33
\comp|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~45_sumout\ = SUM(( !\controle|negativo~combout\ $ (((!\mux|bus[11]~40_combout\) # (\controle|immediate_select~combout\))) ) + ( GND ) + ( \comp|Add0~42\ ))
-- \comp|Add0~46\ = CARRY(( !\controle|negativo~combout\ $ (((!\mux|bus[11]~40_combout\) # (\controle|immediate_select~combout\))) ) + ( GND ) + ( \comp|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_negativo~combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	datad => \mux|ALT_INV_bus[11]~40_combout\,
	cin => \comp|Add0~42\,
	sumout => \comp|Add0~45_sumout\,
	cout => \comp|Add0~46\);

-- Location: FF_X72_Y11_N38
\RegisterA|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~49_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(12));

-- Location: LABCELL_X71_Y11_N36
\alu|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~49_sumout\ = SUM(( \comp|Add0~49_sumout\ ) + ( \RegisterA|out\(12) ) + ( \alu|Add0~46\ ))
-- \alu|Add0~50\ = CARRY(( \comp|Add0~49_sumout\ ) + ( \RegisterA|out\(12) ) + ( \alu|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegisterA|ALT_INV_out\(12),
	datad => \comp|ALT_INV_Add0~49_sumout\,
	cin => \alu|Add0~46\,
	sumout => \alu|Add0~49_sumout\,
	cout => \alu|Add0~50\);

-- Location: LABCELL_X70_Y11_N33
\RegisterR|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterR|out[12]~feeder_combout\ = ( \alu|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \alu|ALT_INV_Add0~49_sumout\,
	combout => \RegisterR|out[12]~feeder_combout\);

-- Location: LABCELL_X70_Y11_N0
\alu|out~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~12_combout\ = ( \comp|Add0~49_sumout\ & ( !\RegisterA|out\(12) ) ) # ( !\comp|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegisterA|ALT_INV_out\(12),
	dataf => \comp|ALT_INV_Add0~49_sumout\,
	combout => \alu|out~12_combout\);

-- Location: FF_X70_Y11_N34
\RegisterR|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegisterR|out[12]~feeder_combout\,
	asdata => \alu|out~12_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(12));

-- Location: LABCELL_X71_Y9_N33
\Register0|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register0|out[12]~feeder_combout\ = ( \comp|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~49_sumout\,
	combout => \Register0|out[12]~feeder_combout\);

-- Location: FF_X71_Y9_N34
\Register0|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register0|out[12]~feeder_combout\,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(12));

-- Location: FF_X72_Y9_N2
\Register3|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~49_sumout\,
	sload => VCC,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(12));

-- Location: FF_X72_Y9_N8
\Register4|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~49_sumout\,
	sload => VCC,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(12));

-- Location: LABCELL_X71_Y9_N3
\Register2|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register2|out[12]~feeder_combout\ = ( \comp|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~49_sumout\,
	combout => \Register2|out[12]~feeder_combout\);

-- Location: FF_X71_Y9_N4
\Register2|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register2|out[12]~feeder_combout\,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(12));

-- Location: FF_X71_Y11_N53
\Register5|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~49_sumout\,
	sload => VCC,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(12));

-- Location: LABCELL_X73_Y9_N6
\Register6|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register6|out[12]~feeder_combout\ = \comp|Add0~49_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp|ALT_INV_Add0~49_sumout\,
	combout => \Register6|out[12]~feeder_combout\);

-- Location: FF_X73_Y9_N8
\Register6|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register6|out[12]~feeder_combout\,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(12));

-- Location: LABCELL_X73_Y9_N12
\Register7|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register7|out[12]~feeder_combout\ = \comp|Add0~49_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp|ALT_INV_Add0~49_sumout\,
	combout => \Register7|out[12]~feeder_combout\);

-- Location: FF_X73_Y9_N14
\Register7|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register7|out[12]~feeder_combout\,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(12));

-- Location: MLABCELL_X72_Y9_N24
\mux|bus[12]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[12]~41_combout\ = ( \Register6|out\(12) & ( \Register7|out\(12) & ( (!\controle|r5_select~combout\ & (((!\mux|bus[0]~2_combout\)) # (\controle|r6_select~combout\))) # (\controle|r5_select~combout\ & (((\Register5|out\(12) & 
-- !\mux|bus[0]~2_combout\)))) ) ) ) # ( !\Register6|out\(12) & ( \Register7|out\(12) & ( (!\mux|bus[0]~2_combout\ & (((!\controle|r6_select~combout\ & !\controle|r5_select~combout\)) # (\Register5|out\(12)))) ) ) ) # ( \Register6|out\(12) & ( 
-- !\Register7|out\(12) & ( (!\controle|r5_select~combout\ & (\controle|r6_select~combout\)) # (\controle|r5_select~combout\ & (((\Register5|out\(12) & !\mux|bus[0]~2_combout\)))) ) ) ) # ( !\Register6|out\(12) & ( !\Register7|out\(12) & ( 
-- (\Register5|out\(12) & (!\mux|bus[0]~2_combout\ & ((\controle|r5_select~combout\) # (\controle|r6_select~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000010001110100010010001111000000001100111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_r6_select~combout\,
	datab => \controle|ALT_INV_r5_select~combout\,
	datac => \Register5|ALT_INV_out\(12),
	datad => \mux|ALT_INV_bus[0]~2_combout\,
	datae => \Register6|ALT_INV_out\(12),
	dataf => \Register7|ALT_INV_out\(12),
	combout => \mux|bus[12]~41_combout\);

-- Location: MLABCELL_X72_Y9_N3
\mux|bus[12]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[12]~42_combout\ = ( \mux|bus[0]~4_combout\ & ( \mux|bus[12]~41_combout\ & ( (!\mux|bus[0]~5_combout\ & (\Register3|out\(12))) # (\mux|bus[0]~5_combout\ & ((\Register4|out\(12)))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( \mux|bus[12]~41_combout\ & ( 
-- (\mux|bus[0]~5_combout\) # (\Register2|out\(12)) ) ) ) # ( \mux|bus[0]~4_combout\ & ( !\mux|bus[12]~41_combout\ & ( (!\mux|bus[0]~5_combout\ & (\Register3|out\(12))) # (\mux|bus[0]~5_combout\ & ((\Register4|out\(12)))) ) ) ) # ( !\mux|bus[0]~4_combout\ & 
-- ( !\mux|bus[12]~41_combout\ & ( (\Register2|out\(12) & !\mux|bus[0]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010011001100001111111111110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register3|ALT_INV_out\(12),
	datab => \Register4|ALT_INV_out\(12),
	datac => \Register2|ALT_INV_out\(12),
	datad => \mux|ALT_INV_bus[0]~5_combout\,
	datae => \mux|ALT_INV_bus[0]~4_combout\,
	dataf => \mux|ALT_INV_bus[12]~41_combout\,
	combout => \mux|bus[12]~42_combout\);

-- Location: FF_X72_Y9_N20
\Register1|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~49_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(12));

-- Location: MLABCELL_X72_Y9_N21
\mux|bus[12]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[12]~43_combout\ = ( \mux|bus[12]~42_combout\ & ( \Register1|out\(12) & ( ((!\mux|bus[0]~0_combout\ & ((\Register0|out\(12)))) # (\mux|bus[0]~0_combout\ & (\RegisterR|out\(12)))) # (\mux|bus[0]~1_combout\) ) ) ) # ( !\mux|bus[12]~42_combout\ & ( 
-- \Register1|out\(12) & ( (!\mux|bus[0]~1_combout\ & ((!\mux|bus[0]~0_combout\ & ((\Register0|out\(12)))) # (\mux|bus[0]~0_combout\ & (\RegisterR|out\(12))))) # (\mux|bus[0]~1_combout\ & (((!\mux|bus[0]~0_combout\)))) ) ) ) # ( \mux|bus[12]~42_combout\ & ( 
-- !\Register1|out\(12) & ( (!\mux|bus[0]~1_combout\ & ((!\mux|bus[0]~0_combout\ & ((\Register0|out\(12)))) # (\mux|bus[0]~0_combout\ & (\RegisterR|out\(12))))) # (\mux|bus[0]~1_combout\ & (((\mux|bus[0]~0_combout\)))) ) ) ) # ( !\mux|bus[12]~42_combout\ & ( 
-- !\Register1|out\(12) & ( (!\mux|bus[0]~1_combout\ & ((!\mux|bus[0]~0_combout\ & ((\Register0|out\(12)))) # (\mux|bus[0]~0_combout\ & (\RegisterR|out\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100111011101011111001000100101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~1_combout\,
	datab => \RegisterR|ALT_INV_out\(12),
	datac => \Register0|ALT_INV_out\(12),
	datad => \mux|ALT_INV_bus[0]~0_combout\,
	datae => \mux|ALT_INV_bus[12]~42_combout\,
	dataf => \Register1|ALT_INV_out\(12),
	combout => \mux|bus[12]~43_combout\);

-- Location: MLABCELL_X72_Y11_N36
\comp|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~49_sumout\ = SUM(( !\controle|negativo~combout\ $ (((!\mux|bus[12]~43_combout\) # (\controle|immediate_select~combout\))) ) + ( GND ) + ( \comp|Add0~46\ ))
-- \comp|Add0~50\ = CARRY(( !\controle|negativo~combout\ $ (((!\mux|bus[12]~43_combout\) # (\controle|immediate_select~combout\))) ) + ( GND ) + ( \comp|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_negativo~combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	datad => \mux|ALT_INV_bus[12]~43_combout\,
	cin => \comp|Add0~46\,
	sumout => \comp|Add0~49_sumout\,
	cout => \comp|Add0~50\);

-- Location: LABCELL_X71_Y9_N6
\Register0|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register0|out[13]~feeder_combout\ = ( \comp|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~53_sumout\,
	combout => \Register0|out[13]~feeder_combout\);

-- Location: FF_X71_Y9_N7
\Register0|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register0|out[13]~feeder_combout\,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(13));

-- Location: FF_X72_Y11_N41
\RegisterA|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~53_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(13));

-- Location: LABCELL_X71_Y11_N39
\alu|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~53_sumout\ = SUM(( \comp|Add0~53_sumout\ ) + ( \RegisterA|out\(13) ) + ( \alu|Add0~50\ ))
-- \alu|Add0~54\ = CARRY(( \comp|Add0~53_sumout\ ) + ( \RegisterA|out\(13) ) + ( \alu|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterA|ALT_INV_out\(13),
	datad => \comp|ALT_INV_Add0~53_sumout\,
	cin => \alu|Add0~50\,
	sumout => \alu|Add0~53_sumout\,
	cout => \alu|Add0~54\);

-- Location: LABCELL_X70_Y11_N42
\RegisterR|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterR|out[13]~feeder_combout\ = ( \alu|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \alu|ALT_INV_Add0~53_sumout\,
	combout => \RegisterR|out[13]~feeder_combout\);

-- Location: LABCELL_X70_Y11_N21
\alu|out~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~13_combout\ = ( \comp|Add0~53_sumout\ & ( !\RegisterA|out\(13) ) ) # ( !\comp|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegisterA|ALT_INV_out\(13),
	dataf => \comp|ALT_INV_Add0~53_sumout\,
	combout => \alu|out~13_combout\);

-- Location: FF_X70_Y11_N44
\RegisterR|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegisterR|out[13]~feeder_combout\,
	asdata => \alu|out~13_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(13));

-- Location: FF_X72_Y9_N56
\Register1|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~53_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(13));

-- Location: FF_X72_Y9_N50
\Register3|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~53_sumout\,
	sload => VCC,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(13));

-- Location: LABCELL_X71_Y9_N27
\Register2|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register2|out[13]~feeder_combout\ = ( \comp|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~53_sumout\,
	combout => \Register2|out[13]~feeder_combout\);

-- Location: FF_X71_Y9_N28
\Register2|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register2|out[13]~feeder_combout\,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(13));

-- Location: FF_X72_Y9_N38
\Register4|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~53_sumout\,
	sload => VCC,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(13));

-- Location: FF_X72_Y10_N35
\Register7|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~53_sumout\,
	sload => VCC,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(13));

-- Location: FF_X72_Y10_N38
\Register5|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~53_sumout\,
	sload => VCC,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(13));

-- Location: MLABCELL_X72_Y10_N6
\Register6|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register6|out[13]~feeder_combout\ = ( \comp|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~53_sumout\,
	combout => \Register6|out[13]~feeder_combout\);

-- Location: FF_X72_Y10_N8
\Register6|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register6|out[13]~feeder_combout\,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(13));

-- Location: MLABCELL_X72_Y10_N3
\mux|bus[13]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[13]~44_combout\ = ( \Register5|out\(13) & ( \Register6|out\(13) & ( (!\controle|r5_select~combout\ & (((!\mux|bus[0]~2_combout\ & \Register7|out\(13))) # (\controle|r6_select~combout\))) # (\controle|r5_select~combout\ & 
-- (!\mux|bus[0]~2_combout\)) ) ) ) # ( !\Register5|out\(13) & ( \Register6|out\(13) & ( (!\controle|r5_select~combout\ & (((!\mux|bus[0]~2_combout\ & \Register7|out\(13))) # (\controle|r6_select~combout\))) ) ) ) # ( \Register5|out\(13) & ( 
-- !\Register6|out\(13) & ( (!\mux|bus[0]~2_combout\ & (((\Register7|out\(13)) # (\controle|r6_select~combout\)) # (\controle|r5_select~combout\))) ) ) ) # ( !\Register5|out\(13) & ( !\Register6|out\(13) & ( (!\mux|bus[0]~2_combout\ & 
-- (!\controle|r5_select~combout\ & (!\controle|r6_select~combout\ & \Register7|out\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000001010101010101000001100100011000010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~2_combout\,
	datab => \controle|ALT_INV_r5_select~combout\,
	datac => \controle|ALT_INV_r6_select~combout\,
	datad => \Register7|ALT_INV_out\(13),
	datae => \Register5|ALT_INV_out\(13),
	dataf => \Register6|ALT_INV_out\(13),
	combout => \mux|bus[13]~44_combout\);

-- Location: MLABCELL_X72_Y9_N51
\mux|bus[13]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[13]~45_combout\ = ( \mux|bus[0]~4_combout\ & ( \mux|bus[13]~44_combout\ & ( (!\mux|bus[0]~5_combout\ & (\Register3|out\(13))) # (\mux|bus[0]~5_combout\ & ((\Register4|out\(13)))) ) ) ) # ( !\mux|bus[0]~4_combout\ & ( \mux|bus[13]~44_combout\ & ( 
-- (\Register2|out\(13)) # (\mux|bus[0]~5_combout\) ) ) ) # ( \mux|bus[0]~4_combout\ & ( !\mux|bus[13]~44_combout\ & ( (!\mux|bus[0]~5_combout\ & (\Register3|out\(13))) # (\mux|bus[0]~5_combout\ & ((\Register4|out\(13)))) ) ) ) # ( !\mux|bus[0]~4_combout\ & 
-- ( !\mux|bus[13]~44_combout\ & ( (!\mux|bus[0]~5_combout\ & \Register2|out\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register3|ALT_INV_out\(13),
	datab => \mux|ALT_INV_bus[0]~5_combout\,
	datac => \Register2|ALT_INV_out\(13),
	datad => \Register4|ALT_INV_out\(13),
	datae => \mux|ALT_INV_bus[0]~4_combout\,
	dataf => \mux|ALT_INV_bus[13]~44_combout\,
	combout => \mux|bus[13]~45_combout\);

-- Location: MLABCELL_X72_Y9_N54
\mux|bus[13]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[13]~46_combout\ = ( \Register1|out\(13) & ( \mux|bus[13]~45_combout\ & ( ((!\mux|bus[0]~0_combout\ & (\Register0|out\(13))) # (\mux|bus[0]~0_combout\ & ((\RegisterR|out\(13))))) # (\mux|bus[0]~1_combout\) ) ) ) # ( !\Register1|out\(13) & ( 
-- \mux|bus[13]~45_combout\ & ( (!\mux|bus[0]~1_combout\ & ((!\mux|bus[0]~0_combout\ & (\Register0|out\(13))) # (\mux|bus[0]~0_combout\ & ((\RegisterR|out\(13)))))) # (\mux|bus[0]~1_combout\ & (((\mux|bus[0]~0_combout\)))) ) ) ) # ( \Register1|out\(13) & ( 
-- !\mux|bus[13]~45_combout\ & ( (!\mux|bus[0]~1_combout\ & ((!\mux|bus[0]~0_combout\ & (\Register0|out\(13))) # (\mux|bus[0]~0_combout\ & ((\RegisterR|out\(13)))))) # (\mux|bus[0]~1_combout\ & (((!\mux|bus[0]~0_combout\)))) ) ) ) # ( !\Register1|out\(13) & 
-- ( !\mux|bus[13]~45_combout\ & ( (!\mux|bus[0]~1_combout\ & ((!\mux|bus[0]~0_combout\ & (\Register0|out\(13))) # (\mux|bus[0]~0_combout\ & ((\RegisterR|out\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~1_combout\,
	datab => \Register0|ALT_INV_out\(13),
	datac => \mux|ALT_INV_bus[0]~0_combout\,
	datad => \RegisterR|ALT_INV_out\(13),
	datae => \Register1|ALT_INV_out\(13),
	dataf => \mux|ALT_INV_bus[13]~45_combout\,
	combout => \mux|bus[13]~46_combout\);

-- Location: MLABCELL_X72_Y11_N39
\comp|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~53_sumout\ = SUM(( !\controle|negativo~combout\ $ (((!\mux|bus[13]~46_combout\) # (\controle|immediate_select~combout\))) ) + ( GND ) + ( \comp|Add0~50\ ))
-- \comp|Add0~54\ = CARRY(( !\controle|negativo~combout\ $ (((!\mux|bus[13]~46_combout\) # (\controle|immediate_select~combout\))) ) + ( GND ) + ( \comp|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_negativo~combout\,
	datab => \controle|ALT_INV_immediate_select~combout\,
	datac => \mux|ALT_INV_bus[13]~46_combout\,
	cin => \comp|Add0~50\,
	sumout => \comp|Add0~53_sumout\,
	cout => \comp|Add0~54\);

-- Location: FF_X72_Y11_N52
\Register1|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~57_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(14));

-- Location: FF_X72_Y11_N44
\RegisterA|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~57_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(14));

-- Location: LABCELL_X71_Y11_N42
\alu|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~57_sumout\ = SUM(( \comp|Add0~57_sumout\ ) + ( \RegisterA|out\(14) ) + ( \alu|Add0~54\ ))
-- \alu|Add0~58\ = CARRY(( \comp|Add0~57_sumout\ ) + ( \RegisterA|out\(14) ) + ( \alu|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegisterA|ALT_INV_out\(14),
	datac => \comp|ALT_INV_Add0~57_sumout\,
	cin => \alu|Add0~54\,
	sumout => \alu|Add0~57_sumout\,
	cout => \alu|Add0~58\);

-- Location: LABCELL_X71_Y11_N54
\alu|out~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~14_combout\ = ( \comp|Add0~57_sumout\ & ( !\RegisterA|out\(14) ) ) # ( !\comp|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegisterA|ALT_INV_out\(14),
	dataf => \comp|ALT_INV_Add0~57_sumout\,
	combout => \alu|out~14_combout\);

-- Location: FF_X71_Y11_N44
\RegisterR|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \alu|Add0~57_sumout\,
	asdata => \alu|out~14_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(14));

-- Location: FF_X68_Y11_N8
\Register0|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~57_sumout\,
	sload => VCC,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(14));

-- Location: FF_X70_Y11_N23
\Register4|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~57_sumout\,
	sload => VCC,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(14));

-- Location: FF_X74_Y11_N7
\Register2|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~57_sumout\,
	sload => VCC,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(14));

-- Location: FF_X68_Y11_N14
\Register3|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~57_sumout\,
	sload => VCC,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(14));

-- Location: FF_X71_Y12_N7
\Register6|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~57_sumout\,
	sload => VCC,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(14));

-- Location: FF_X71_Y12_N47
\Register7|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~57_sumout\,
	sload => VCC,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(14));

-- Location: FF_X71_Y12_N32
\Register5|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~57_sumout\,
	sload => VCC,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(14));

-- Location: LABCELL_X71_Y12_N33
\mux|bus[14]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[14]~47_combout\ = ( \controle|r6_select~combout\ & ( \controle|r5_select~combout\ & ( (\Register5|out\(14) & !\mux|bus[0]~2_combout\) ) ) ) # ( !\controle|r6_select~combout\ & ( \controle|r5_select~combout\ & ( (\Register5|out\(14) & 
-- !\mux|bus[0]~2_combout\) ) ) ) # ( \controle|r6_select~combout\ & ( !\controle|r5_select~combout\ & ( ((\Register5|out\(14) & !\mux|bus[0]~2_combout\)) # (\Register6|out\(14)) ) ) ) # ( !\controle|r6_select~combout\ & ( !\controle|r5_select~combout\ & ( 
-- (\Register7|out\(14) & !\mux|bus[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010111110101010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register6|ALT_INV_out\(14),
	datab => \Register7|ALT_INV_out\(14),
	datac => \Register5|ALT_INV_out\(14),
	datad => \mux|ALT_INV_bus[0]~2_combout\,
	datae => \controle|ALT_INV_r6_select~combout\,
	dataf => \controle|ALT_INV_r5_select~combout\,
	combout => \mux|bus[14]~47_combout\);

-- Location: LABCELL_X68_Y11_N12
\mux|bus[14]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[14]~48_combout\ = ( \Register3|out\(14) & ( \mux|bus[14]~47_combout\ & ( (!\mux|bus[0]~4_combout\ & (((\Register2|out\(14)) # (\mux|bus[0]~5_combout\)))) # (\mux|bus[0]~4_combout\ & (((!\mux|bus[0]~5_combout\)) # (\Register4|out\(14)))) ) ) ) # ( 
-- !\Register3|out\(14) & ( \mux|bus[14]~47_combout\ & ( (!\mux|bus[0]~4_combout\ & (((\Register2|out\(14)) # (\mux|bus[0]~5_combout\)))) # (\mux|bus[0]~4_combout\ & (\Register4|out\(14) & (\mux|bus[0]~5_combout\))) ) ) ) # ( \Register3|out\(14) & ( 
-- !\mux|bus[14]~47_combout\ & ( (!\mux|bus[0]~4_combout\ & (((!\mux|bus[0]~5_combout\ & \Register2|out\(14))))) # (\mux|bus[0]~4_combout\ & (((!\mux|bus[0]~5_combout\)) # (\Register4|out\(14)))) ) ) ) # ( !\Register3|out\(14) & ( !\mux|bus[14]~47_combout\ & 
-- ( (!\mux|bus[0]~4_combout\ & (((!\mux|bus[0]~5_combout\ & \Register2|out\(14))))) # (\mux|bus[0]~4_combout\ & (\Register4|out\(14) & (\mux|bus[0]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register4|ALT_INV_out\(14),
	datab => \mux|ALT_INV_bus[0]~4_combout\,
	datac => \mux|ALT_INV_bus[0]~5_combout\,
	datad => \Register2|ALT_INV_out\(14),
	datae => \Register3|ALT_INV_out\(14),
	dataf => \mux|ALT_INV_bus[14]~47_combout\,
	combout => \mux|bus[14]~48_combout\);

-- Location: LABCELL_X68_Y11_N6
\mux|bus[14]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[14]~49_combout\ = ( \Register0|out\(14) & ( \mux|bus[14]~48_combout\ & ( (!\mux|bus[0]~1_combout\ & (((!\mux|bus[0]~0_combout\) # (\RegisterR|out\(14))))) # (\mux|bus[0]~1_combout\ & (((\mux|bus[0]~0_combout\)) # (\Register1|out\(14)))) ) ) ) # ( 
-- !\Register0|out\(14) & ( \mux|bus[14]~48_combout\ & ( (!\mux|bus[0]~1_combout\ & (((\RegisterR|out\(14) & \mux|bus[0]~0_combout\)))) # (\mux|bus[0]~1_combout\ & (((\mux|bus[0]~0_combout\)) # (\Register1|out\(14)))) ) ) ) # ( \Register0|out\(14) & ( 
-- !\mux|bus[14]~48_combout\ & ( (!\mux|bus[0]~1_combout\ & (((!\mux|bus[0]~0_combout\) # (\RegisterR|out\(14))))) # (\mux|bus[0]~1_combout\ & (\Register1|out\(14) & ((!\mux|bus[0]~0_combout\)))) ) ) ) # ( !\Register0|out\(14) & ( !\mux|bus[14]~48_combout\ & 
-- ( (!\mux|bus[0]~1_combout\ & (((\RegisterR|out\(14) & \mux|bus[0]~0_combout\)))) # (\mux|bus[0]~1_combout\ & (\Register1|out\(14) & ((!\mux|bus[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register1|ALT_INV_out\(14),
	datab => \mux|ALT_INV_bus[0]~1_combout\,
	datac => \RegisterR|ALT_INV_out\(14),
	datad => \mux|ALT_INV_bus[0]~0_combout\,
	datae => \Register0|ALT_INV_out\(14),
	dataf => \mux|ALT_INV_bus[14]~48_combout\,
	combout => \mux|bus[14]~49_combout\);

-- Location: MLABCELL_X72_Y11_N42
\comp|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~57_sumout\ = SUM(( !\controle|negativo~combout\ $ (((!\mux|bus[14]~49_combout\) # (\controle|immediate_select~combout\))) ) + ( GND ) + ( \comp|Add0~54\ ))
-- \comp|Add0~58\ = CARRY(( !\controle|negativo~combout\ $ (((!\mux|bus[14]~49_combout\) # (\controle|immediate_select~combout\))) ) + ( GND ) + ( \comp|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_immediate_select~combout\,
	datab => \controle|ALT_INV_negativo~combout\,
	datac => \mux|ALT_INV_bus[14]~49_combout\,
	cin => \comp|Add0~54\,
	sumout => \comp|Add0~57_sumout\,
	cout => \comp|Add0~58\);

-- Location: FF_X72_Y11_N58
\Register1|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~61_sumout\,
	sload => VCC,
	ena => \controle|r1_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register1|out\(15));

-- Location: FF_X72_Y11_N47
\RegisterA|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \comp|Add0~61_sumout\,
	ena => \controle|a_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterA|out\(15));

-- Location: LABCELL_X71_Y11_N45
\alu|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~61_sumout\ = SUM(( \comp|Add0~61_sumout\ ) + ( \RegisterA|out\(15) ) + ( \alu|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comp|ALT_INV_Add0~61_sumout\,
	dataf => \RegisterA|ALT_INV_out\(15),
	cin => \alu|Add0~58\,
	sumout => \alu|Add0~61_sumout\);

-- Location: LABCELL_X71_Y11_N51
\alu|out~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|out~15_combout\ = ( \comp|Add0~61_sumout\ & ( !\RegisterA|out\(15) ) ) # ( !\comp|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterA|ALT_INV_out\(15),
	dataf => \comp|ALT_INV_Add0~61_sumout\,
	combout => \alu|out~15_combout\);

-- Location: FF_X71_Y11_N46
\RegisterR|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \alu|Add0~61_sumout\,
	asdata => \alu|out~15_combout\,
	sload => \controle|ALT_INV_opSelect~combout\,
	ena => \controle|r_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterR|out\(15));

-- Location: FF_X71_Y11_N31
\Register0|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~61_sumout\,
	sload => VCC,
	ena => \controle|r0_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register0|out\(15));

-- Location: LABCELL_X71_Y10_N39
\Register2|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register2|out[15]~feeder_combout\ = ( \comp|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~61_sumout\,
	combout => \Register2|out[15]~feeder_combout\);

-- Location: FF_X71_Y10_N41
\Register2|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register2|out[15]~feeder_combout\,
	ena => \controle|r2_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register2|out\(15));

-- Location: LABCELL_X71_Y10_N3
\Register4|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Register4|out[15]~feeder_combout\ = ( \comp|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp|ALT_INV_Add0~61_sumout\,
	combout => \Register4|out[15]~feeder_combout\);

-- Location: FF_X71_Y10_N5
\Register4|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Register4|out[15]~feeder_combout\,
	ena => \controle|r4_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register4|out\(15));

-- Location: FF_X73_Y11_N16
\Register3|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~61_sumout\,
	sload => VCC,
	ena => \controle|r3_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register3|out\(15));

-- Location: FF_X72_Y12_N2
\Register6|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~61_sumout\,
	sload => VCC,
	ena => \controle|r6_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register6|out\(15));

-- Location: FF_X71_Y11_N56
\Register5|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~61_sumout\,
	sload => VCC,
	ena => \controle|r5_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register5|out\(15));

-- Location: FF_X72_Y12_N59
\Register7|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \comp|Add0~61_sumout\,
	sload => VCC,
	ena => \controle|r7_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register7|out\(15));

-- Location: MLABCELL_X72_Y12_N57
\mux|bus[15]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[15]~50_combout\ = ( \Register7|out\(15) & ( \mux|bus[0]~2_combout\ & ( (\Register6|out\(15) & (!\controle|r5_select~combout\ & \controle|r6_select~combout\)) ) ) ) # ( !\Register7|out\(15) & ( \mux|bus[0]~2_combout\ & ( (\Register6|out\(15) & 
-- (!\controle|r5_select~combout\ & \controle|r6_select~combout\)) ) ) ) # ( \Register7|out\(15) & ( !\mux|bus[0]~2_combout\ & ( ((!\controle|r5_select~combout\ & ((!\controle|r6_select~combout\) # (\Register6|out\(15))))) # (\Register5|out\(15)) ) ) ) # ( 
-- !\Register7|out\(15) & ( !\mux|bus[0]~2_combout\ & ( (!\controle|r5_select~combout\ & (\controle|r6_select~combout\ & ((\Register5|out\(15)) # (\Register6|out\(15))))) # (\controle|r5_select~combout\ & (((\Register5|out\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101110011111100110111001100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Register6|ALT_INV_out\(15),
	datab => \Register5|ALT_INV_out\(15),
	datac => \controle|ALT_INV_r5_select~combout\,
	datad => \controle|ALT_INV_r6_select~combout\,
	datae => \Register7|ALT_INV_out\(15),
	dataf => \mux|ALT_INV_bus[0]~2_combout\,
	combout => \mux|bus[15]~50_combout\);

-- Location: LABCELL_X71_Y10_N6
\mux|bus[15]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[15]~51_combout\ = ( \Register3|out\(15) & ( \mux|bus[15]~50_combout\ & ( (!\mux|bus[0]~5_combout\ & (((\mux|bus[0]~4_combout\)) # (\Register2|out\(15)))) # (\mux|bus[0]~5_combout\ & (((!\mux|bus[0]~4_combout\) # (\Register4|out\(15))))) ) ) ) # ( 
-- !\Register3|out\(15) & ( \mux|bus[15]~50_combout\ & ( (!\mux|bus[0]~5_combout\ & (\Register2|out\(15) & ((!\mux|bus[0]~4_combout\)))) # (\mux|bus[0]~5_combout\ & (((!\mux|bus[0]~4_combout\) # (\Register4|out\(15))))) ) ) ) # ( \Register3|out\(15) & ( 
-- !\mux|bus[15]~50_combout\ & ( (!\mux|bus[0]~5_combout\ & (((\mux|bus[0]~4_combout\)) # (\Register2|out\(15)))) # (\mux|bus[0]~5_combout\ & (((\Register4|out\(15) & \mux|bus[0]~4_combout\)))) ) ) ) # ( !\Register3|out\(15) & ( !\mux|bus[15]~50_combout\ & ( 
-- (!\mux|bus[0]~5_combout\ & (\Register2|out\(15) & ((!\mux|bus[0]~4_combout\)))) # (\mux|bus[0]~5_combout\ & (((\Register4|out\(15) & \mux|bus[0]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101001000101010111101110111000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~5_combout\,
	datab => \Register2|ALT_INV_out\(15),
	datac => \Register4|ALT_INV_out\(15),
	datad => \mux|ALT_INV_bus[0]~4_combout\,
	datae => \Register3|ALT_INV_out\(15),
	dataf => \mux|ALT_INV_bus[15]~50_combout\,
	combout => \mux|bus[15]~51_combout\);

-- Location: LABCELL_X71_Y10_N51
\mux|bus[15]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|bus[15]~52_combout\ = ( \Register0|out\(15) & ( \mux|bus[15]~51_combout\ & ( (!\mux|bus[0]~1_combout\ & ((!\mux|bus[0]~0_combout\) # ((\RegisterR|out\(15))))) # (\mux|bus[0]~1_combout\ & (((\Register1|out\(15))) # (\mux|bus[0]~0_combout\))) ) ) ) # ( 
-- !\Register0|out\(15) & ( \mux|bus[15]~51_combout\ & ( (!\mux|bus[0]~1_combout\ & (\mux|bus[0]~0_combout\ & ((\RegisterR|out\(15))))) # (\mux|bus[0]~1_combout\ & (((\Register1|out\(15))) # (\mux|bus[0]~0_combout\))) ) ) ) # ( \Register0|out\(15) & ( 
-- !\mux|bus[15]~51_combout\ & ( (!\mux|bus[0]~1_combout\ & ((!\mux|bus[0]~0_combout\) # ((\RegisterR|out\(15))))) # (\mux|bus[0]~1_combout\ & (!\mux|bus[0]~0_combout\ & (\Register1|out\(15)))) ) ) ) # ( !\Register0|out\(15) & ( !\mux|bus[15]~51_combout\ & ( 
-- (!\mux|bus[0]~1_combout\ & (\mux|bus[0]~0_combout\ & ((\RegisterR|out\(15))))) # (\mux|bus[0]~1_combout\ & (!\mux|bus[0]~0_combout\ & (\Register1|out\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux|ALT_INV_bus[0]~1_combout\,
	datab => \mux|ALT_INV_bus[0]~0_combout\,
	datac => \Register1|ALT_INV_out\(15),
	datad => \RegisterR|ALT_INV_out\(15),
	datae => \Register0|ALT_INV_out\(15),
	dataf => \mux|ALT_INV_bus[15]~51_combout\,
	combout => \mux|bus[15]~52_combout\);

-- Location: MLABCELL_X72_Y11_N45
\comp|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Add0~61_sumout\ = SUM(( !\controle|negativo~combout\ $ (((!\mux|bus[15]~52_combout\) # (\controle|immediate_select~combout\))) ) + ( GND ) + ( \comp|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_immediate_select~combout\,
	datab => \controle|ALT_INV_negativo~combout\,
	datad => \mux|ALT_INV_bus[15]~52_combout\,
	cin => \comp|Add0~58\,
	sumout => \comp|Add0~61_sumout\);

-- Location: IOIBUF_X58_Y0_N75
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: LABCELL_X18_Y33_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


