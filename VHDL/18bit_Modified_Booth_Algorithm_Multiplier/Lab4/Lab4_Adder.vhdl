-- Ryan Barker --
-- ECE 3270
-- Dr. Smith
-- Lab4_Adder.vhdl
--
-- Purpose: Produces generic N + 1 bit adder that is used to sum the partial product and a form of the multiplicand
--          at each stage of the multiplication. The sum (new partial product) is fed into Reg C to replace 
--          the existing partial product at each stage.
--
--          The adder is a ripple adder that is generated with several one bit full adders.
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Declare One Bit Full Adder --
ENTITY One_Bit_Full_Adder IS 
   PORT (a,b   : IN std_logic;
			c_in  : IN std_logic;
			sum   : OUT std_logic;
			c_out : OUT std_logic);
END One_Bit_Full_Adder;

-- Architecture of One Bit Full_Adder --
ARCHITECTURE One_Bit_Full_Adder_B OF One_Bit_Full_Adder IS
BEGIN
    sum <= a XOR b XOR c_in;
    c_out <= (a AND b) OR (c_in AND (a XOR b));
END One_Bit_Full_Adder_B;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Declare N + 1 Bit Adder --
ENTITY Lab4_Adder IS 
   GENERIC (N : INTEGER := 18);
   PORT (partial_product : IN std_logic_vector(N DOWNTO 0);
	      multiplicand    : IN std_logic_vector(N DOWNTO 0);
			c_in            : IN std_logic;
			sum             : OUT std_logic_vector(N DOWNTO 0);
			c_out           : OUT std_logic);
END Lab4_Adder;

-- Architecture of N + 1 Bit Adder --
ARCHITECTURE Lab4_Adder_B OF Lab4_Adder IS
    -- Will have N + 2 carries (Extra is the main Carry Out) --
    SIGNAL carries : std_logic_vector(N + 1 DOWNTO 0);
COMPONENT One_Bit_Full_Adder
	PORT(a,b   : IN std_logic;
	     c_in  : IN std_logic;
		  sum   : OUT std_logic;
		  c_out : OUT std_logic);
END COMPONENT; 

BEGIN
   carries(0) <= c_in;
	c_out <= carries(N + 1);
	
	Gen_Adder : FOR i IN 0 to N GENERATE
		AdderX : One_Bit_Full_Adder
			PORT MAP(a=>partial_product(i), b=>multiplicand(i), c_in=>carries(i), sum=>sum(i), c_out=>carries(i + 1));
	END GENERATE Gen_Adder;
END Lab4_Adder_B;