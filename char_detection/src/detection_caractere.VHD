-- Used Libraries
--***********************************************************
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--************************************************************--
-- ENTITY Declaration
--************************************************************
ENTITY detection_caractere IS
	PORT (
		data_in : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		detect  : OUT STD_LOGIC
	);
END detection_caractere;

--***********************************************************--
-- RTL Description
--************************************************************
ARCHITECTURE RTL OF detection_caractere IS
	BEGIN 
		WITH data_in SELECT 
		detect <= '1'  WHEN "0010000000000000" ,
			  '1' WHEN "0000000000000001" ,
			  '1' WHEN "0000000000000010" ,
			  '1' WHEN "0000000000000100" ,
			  '1' WHEN "0000000000010000" ,
			  '1' WHEN "0000000000100000" ,
			  '1' WHEN "0000000001000000" ,
			  '1' WHEN "0000000100000000" ,
			  '1' WHEN "0000001000000000" ,
			  '1' WHEN "0000010000000000" ,
			  '1' WHEN "0000000000001000" ,
			  '1' WHEN "0000000010000000" ,
			  '1' WHEN "0000100000000000" ,
			  '1' WHEN "1000000000000000" ,
			  '1' WHEN "0100000000000000" ,
			  '1' WHEN "0001000000000000" ,
			  '0' WHEN OTHERS;

			 
END RTL;				 