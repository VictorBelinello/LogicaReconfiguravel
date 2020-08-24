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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "08/24/2020 14:16:35"
                                                            
-- Vhdl Test Bench template for design  :  contador_bits1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contador_bits1_vhd_tst IS
END contador_bits1_vhd_tst;
ARCHITECTURE contador_bits1_arch OF contador_bits1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL output_signal : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL output_var : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL word : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT contador_bits1
	PORT (
	clk : IN STD_LOGIC;
	output_signal : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	output_var : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	rst : IN STD_LOGIC;
	word : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : contador_bits1
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	output_signal => output_signal,
	output_var => output_var,
	rst => rst,
	word => word
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END contador_bits1_arch;
