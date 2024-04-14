-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/12/2015 00:15:54"
                                                            
-- Vhdl Test Bench template for design  :  Lab4_Adder_Mux
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab4_Adder_Mux_vhd_tst IS
END Lab4_Adder_Mux_vhd_tst;
ARCHITECTURE Lab4_Adder_Mux_arch OF Lab4_Adder_Mux_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL loadreg : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(18 DOWNTO 0);
SIGNAL partial_product : STD_LOGIC_VECTOR(18 DOWNTO 0);
COMPONENT Lab4_Adder_Mux
	PORT (
	loadreg : IN STD_LOGIC;
	output : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
	partial_product : IN STD_LOGIC_VECTOR(18 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Lab4_Adder_Mux
	PORT MAP (
-- list connections between master ports and signals
	loadreg => loadreg,
	output => output,
	partial_product => partial_product
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
        partial_product <= "1111111111111111111";
        loadreg <= '1'; wait for 25 ps;
        loadreg <= '0';		  
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
END Lab4_Adder_Mux_arch;
