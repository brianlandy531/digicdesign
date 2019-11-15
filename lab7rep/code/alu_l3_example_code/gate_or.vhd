----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:28:56 03/02/2017 
-- Design Name: 
-- Module Name:    CarrySavMultiplier - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity gate_or is
  
  generic( N : Integer :=16);
  
Port ( A : in  std_logic_vector(N-1 downto 0);
           B : in  std_logic_vector(N-1 downto 0);
           OUTPUTprt : out  std_logic_vector(N-1 downto 0));
    
end gate_or;



architecture Behavioral of gate_or is


begin--start multiplying
 
    
  OUTPUTprt <= A or B;
	end Behavioral;



