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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is

generic( N : Integer :=16);

    Port ( Input1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Input2 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Control : in  STD_LOGIC_VECTOR (3 downto 0);
			  clk : in std_logic;
           Output : out  STD_LOGIC_VECTOR (N-1 downto 0));
end ALU;

architecture Behavioral of ALU is

signal logOut :STD_LOGIC_VECTOR (N-1 downto 0);
signal addOut :STD_LOGIC_VECTOR (N-1 downto 0);
signal multOut :STD_LOGIC_VECTOR (N-1 downto 0);
signal shiftOut :STD_LOGIC_VECTOR (N-1 downto 0);

signal dflipin1 : STD_LOGIC_VECTOR (N-1 downto 0);
signal dflipin2 :STD_LOGIC_VECTOR (N-1 downto 0);
signal dflipout:STD_LOGIC_VECTOR (N-1 downto 0);
signal throwaway : std_logic;

--here are my component declarations for all of the poarts used in the alu
component dflipflop
port(CLK: in std_logic;
	D : in std_logic_vector(N-1 downto 0);
	Q : out std_logic_vector(N-1 downto 0 ));
	end component;
COMPONENT LogicUnit
    PORT(
         A : IN  std_logic_vector(N-1 downto 0);
         B : IN  std_logic_vector(N-1 downto 0);
         control : IN  std_logic_vector(1 downto 0);
         output : OUT  std_logic_vector(N-1 downto 0)
        );
    END COMPONENT;
	 
	 
	  COMPONENT RippleCarryAdder
     Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (N-1 downto 0));
    END COMPONENT;
    
	 
	 COMPONENT CarrySavMultiplier
    Port ( A : in  STD_LOGIC_VECTOR (N/2-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N/2-1 downto 0);
           product : out  STD_LOGIC_VECTOR (N-1 downto 0));
    END COMPONENT;
	 
	 
 COMPONENT shifter
   Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           amt : in  STD_LOGIC_VECTOR (integer(ceil(log2(real(N))))-1 downto 0);--alter to be ceiling  integer(ceil(log2(real(a))))
           control : in  STD_LOGIC_VECTOR (1 downto 0);-- first 2 bits - "11"
           output : out  STD_LOGIC_VECTOR (N-1 downto 0));
			  end component;
    
begin
--here i instantiate the components of the alu and match up the ports with the internal signals

dflip0 : dflipflop
port map(clk=>clk,D=>input1,Q=>dflipin1);

dflip1 : dflipflop
port map(clk=>clk,D=>input2,Q=>dflipin2);



LogicUnit0 : LogicUnit 
port map(A=> dflipin1,B=>dflipin2,control=>Control(1 downto 0),output=>logOut);


RippleCarryAdder0 : RippleCarryAdder 
port map(A=> dflipin1,B=>dflipin2,Cin=>Control(0),Cout=>throwaway,Sum=>addOut);


shifter0 : shifter
port map(A=>dflipin1, amt=>dflipin2(integer(ceil(log2(real(N))))-1 downto 0),control=>control(1 downto 0),output=>shiftOut);

CarrySavMultiplier0 : CarrySavMultiplier
port map(A=>dflipin1(N/2-1 downto 0), B=>dflipin2(N/2-1 downto 0), product=> multOut);




--this is my output process in which i determine which component of the alu will be output to the final output of the alu
outproc : process(Input1, Input2,Control,addOut,multOut,logOut,shiftOut,dflipout,dflipin1,dflipin2) begin
if control(3 downto 1)="010" then 
dflipout<=addOut;
elsif control(3 downto 1)="011" then
dflipout<=multOut;
elsif control(3 downto 2)="10" then
dflipout<=logOut;
elsif control(3 downto 2)="11" then
dflipout<=shiftOut;
else
dflipout<= (others=>'0'); 



end if;



end process;

dflip3 : dflipflop
port map(clk=>clk,D=>dflipout,Q=>Output);









end Behavioral;

