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
-- Generated on "03/12/2015 01:09:18"
                                                            
-- Vhdl Test Bench template for design  :  Lab4_RegB
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab4_RegB_vhd_tst IS
END Lab4_RegB_vhd_tst;
ARCHITECTURE Lab4_RegB_arch OF Lab4_RegB_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bits_out : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL loadreg : STD_LOGIC;
SIGNAL multiplier : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL output : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL regC_bits : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL shift : STD_LOGIC;
COMPONENT Lab4_RegB
	PORT (
	bits_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	clk : IN STD_LOGIC;
	loadreg : IN STD_LOGIC;
	multiplier : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
	output : BUFFER STD_LOGIC_VECTOR(17 DOWNTO 0);
	regC_bits : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	shift : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Lab4_RegB
	PORT MAP (
-- list connections between master ports and signals
	bits_out => bits_out,
	clk => clk,
	loadreg => loadreg,
	multiplier => multiplier,
	output => output,
	regC_bits => regC_bits,
	shift => shift
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once      
        regC_bits <= "00"; -- Value not used before a load --
		                     -- Initialize to "00" to avoid UU's --
        shift <= '0';
        loadreg <= '1';
        multiplier <= "000000000111111111"; wait for 10 ps;
        loadreg <= '0';
		  shift <= '1'; wait for 5 ps;
		  regC_bits <= "11"; wait for 5 ps; -- Simulates reg C bits shifting into Reg B: --
		                                    -- Should become msb's of Reg B --
		  shift <= '0'; 
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
falling_clock : PROCESS
BEGIN
	clk <= '1'; wait for 5 ps;
	clk <= '0'; wait for 5 ps;
END PROCESS falling_clock;                                                 
END Lab4_RegB_arch;
