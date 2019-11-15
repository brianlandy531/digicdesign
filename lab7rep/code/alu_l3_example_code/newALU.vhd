----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:40:12 03/23/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
library gdk;
use gdk.gdk_comps.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity miniALU is

generic( N : Integer :=1);

    Port ( Input1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Input2 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Control : in  STD_LOGIC_VECTOR (1 downto 0);
			     Output : out  STD_LOGIC_VECTOR (N-1 downto 0);
			     Cout : out STD_LOGIC);
end miniALU;

architecture Behavioral of miniALU is
  
  

signal outandcarry : STD_LOGIC_VECTOR(N downto 0);
  
begin

--this is my output process in which i determine which component of the alu will be output to the final output of the alu
outproc : process(Input1, Input2,Control, outandcarry) begin
  if Control="00" then 
    outandcarry<= (others=>Control(0));
    Output<=Input1 AND Input2;
    Cout <= Control(0);
  elsif Control="01" then
    outandcarry<= (others=>Control(0));
    Cout<=Control(0);
    Output<=Input1 OR Input2;
  elsif Control="10" then
      
    outandcarry<= (Control(0)&Input1) + (Control(0)&Input2);
    
    
    
    Cout <= outandcarry(N);
    
    Output <= outandcarry(N-1 downto 0);
  
  elsif Control="11" then
    
    outandcarry<= (not Control(1)&Input1) - (not Control(1)&Input2);
    
    Cout <= outandcarry(N);
    Output <= outandcarry(N-1 downto 0);
  else
    Output<= (others=>Control(0)); 
    outandcarry<= (others=>Control(0));
    Cout <= Control(0);
  end if;
  end process;
end Behavioral;



