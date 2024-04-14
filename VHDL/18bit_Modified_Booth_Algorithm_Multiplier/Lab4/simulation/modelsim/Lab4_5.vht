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
-- Generated on "03/12/2015 22:57:33"
                                                            
-- Vhdl Test Bench template for design  :  Lab4
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab4_5_vhd_tst IS
END Lab4_5_vhd_tst;
ARCHITECTURE Lab4_arch5 OF Lab4_5_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL busy : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL multiplicand : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL multiplier : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL product : STD_LOGIC_VECTOR(35 DOWNTO 0);
SIGNAL start : STD_LOGIC;
COMPONENT Lab4
	PORT (
	busy : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	multiplicand : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
	multiplier : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
	product : OUT STD_LOGIC_VECTOR(35 DOWNTO 0);
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Lab4
	PORT MAP (
-- list connections between master ports and signals
	busy => busy,
	clk => clk,
	multiplicand => multiplicand,
	multiplier => multiplier,
	product => product,
	start => start
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- Test negative number lower bound --
        start <= '0';
	     multiplicand <= "111111111111111111";
	     multiplier   <=	"000000000000000001"; wait for 10 ps;
		  start <= '1'; wait for 10 ps;
		  start <= '0';  
		  
		  wait for 300 ps;
		  
		  -- Test negative number upper bound --
	     multiplicand <= "100000000000000000";
	     multiplier   <=	"100000000000000000"; wait for 10 ps;
		  start <= '1'; wait for 10 ps;
		  start <= '0';
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
clock : PROCESS
BEGIN
	clk <= '0'; wait for 5 ps;
	clk <= '1'; wait for 5 ps;
END PROCESS clock;                                            
END Lab4_arch5;
