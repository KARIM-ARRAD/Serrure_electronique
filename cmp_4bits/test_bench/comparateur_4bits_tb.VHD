-- Used Libraries
--***********************************************************
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--************************************************************--
-- ENTITY Declaration
--************************************************************
ENTITY comparateur_4bits_tb IS 
END comparateur_4bits_tb;

--***********************************************************--
-- RTL Description
--************************************************************
ARCHITECTURE RTL OF comparateur_4bits_tb IS 
	COMPONENT comparateur_4bits PORT(
	in_key:IN STD_LOGIC_VECTOR (3 DOWNTO 0);
	fixed_key:IN STD_LOGIC_VECTOR (3 DOWNTO 0);
	EGA_out: OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL in_key: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL fixed_key: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL EGA_out: STD_LOGIC;
	
	BEGIN
	U0:comparateur_4bits PORT MAP(
	in_key=>in_key,
	fixed_key=>fixed_key,
	EGA_out=>EGA_out);
	in_key<="0111";
	PROCESS 
	BEGIN 
	fixed_key<="0111";
	wait for 30 ns;
	fixed_key<="0000";
	wait for 30 ns;
	fixed_key<="1000";
	wait for 30 ns;
	end PROCESS;
END RTL;
