-- Used Libraries
--***********************************************************
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--************************************************************--
-- ENTITY Declaration
--************************************************************
ENTITY comparateur_4bits IS 
PORT (
	in_key:IN STD_LOGIC_VECTOR (3 DOWNTO 0);
	fixed_key:IN STD_LOGIC_VECTOR (3 DOWNTO 0);
	EGA_out: OUT STD_LOGIC);
END comparateur_4bits;

--***********************************************************--
-- RTL Description
--************************************************************
ARCHITECTURE RTL OF comparateur_4bits IS 
	BEGIN
	EGA_out <='1' WHEN in_key=fixed_key ELSE 
	'0';
	END RTL;