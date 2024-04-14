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
-- Generated on "02/01/2015 11:20:09"
                                                            
-- Vhdl Test Bench template for design  :  Lab1b
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab1b_vhd_tst IS
END Lab1b_vhd_tst;
ARCHITECTURE Lab1b_arch OF Lab1b_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL LEDR : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(17 DOWNTO 0);
COMPONENT Lab1b
	PORT (
	LEDR : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(17 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Lab1b
	PORT MAP (
-- list connections between master ports and signals
	LEDR => LEDR,
	SW => SW
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once 

        -- set inputs
		  SW(2 DOWNTO 0) <= "000";
		  SW(5 DOWNTO 3) <= "001";
		  SW(8 DOWNTO 6) <= "010";
		  SW(11 DOWNTO 9) <= "011";
		  SW(14 DOWNTO 12) <= "100";
		  
        -- set and toggle control bits
		  SW(17 DOWNTO 15) <= "000"; wait for 25 ps;
		  SW(17 DOWNTO 15) <= "001"; wait for 25 ps;
		  SW(17 DOWNTO 15) <= "010"; wait for 25 ps;
		  SW(17 DOWNTO 15) <= "011"; wait for 25 ps;
		  SW(17 DOWNTO 15) <= "100"; wait for 25 ps;
		  SW(17 DOWNTO 15) <= "101"; wait for 25 ps;
		  SW(17 DOWNTO 15) <= "101"; wait for 25 ps;
		  SW(17 DOWNTO 15) <= "110"; wait for 25 ps;
		  SW(17 DOWNTO 15) <= "111";
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
END Lab1b_arch;
