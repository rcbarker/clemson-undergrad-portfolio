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
-- Generated on "02/01/2015 11:31:06"
                                                            
-- Vhdl Test Bench template for design  :  Lab1c
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab1c_vhd_tst IS
END Lab1c_vhd_tst;
ARCHITECTURE Lab1c_arch OF Lab1c_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Lab1c
	PORT (
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Lab1c
	PORT MAP (
-- list connections between master ports and signals
	HEX0 => HEX0,
	SW => SW
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once  
		  
		  -- Toggle Inputs
		  SW(2 DOWNTO 0) <= "000"; wait for 25 ps;
		  SW(2 DOWNTO 0) <= "001"; wait for 25 ps;
		  SW(2 DOWNTO 0) <= "010"; wait for 25 ps;
		  SW(2 DOWNTO 0) <= "011"; wait for 25 ps;
		  SW(2 DOWNTO 0) <= "100"; wait for 25 ps;
		  SW(2 DOWNTO 0) <= "101"; wait for 25 ps;
		  SW(2 DOWNTO 0) <= "110"; wait for 25 ps;
		  SW(2 DOWNTO 0) <= "111"; 		  
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
END Lab1c_arch;