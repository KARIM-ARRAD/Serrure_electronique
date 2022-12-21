-- Used Libraries
--***********************************************************
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--************************************************************--
-- ENTITY Declaration
--************************************************************

ENTITY comparateur_16bits_tb IS
	
END comparateur_16bits_tb;

--***********************************************************--
-- RTL Description
--************************************************************
ARCHITECTURE rtl OF comparateur_16bits_tb IS
	COMPONENT comparateur_16bits PORT (
		code_sig : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		clef	 : OUT STD_LOGIC );
	END COMPONENT ;

	SIGNAL  code_sig :  STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL  clef	 :  STD_LOGIC ;
	
	BEGIN 
		U0 : comparateur_16bits PORT MAP (
		code_sig => code_sig,
		clef	 => clef );
		PROCESS
		BEGIN
		code_sig <="0001001000110100";
		WAIT FOR 10 NS;
		code_sig <="0100001000110001";
		WAIT FOR 10 NS;
		code_sig <="0010000100110100";
		WAIT FOR 10 NS;
		code_sig <="0001001100100100";
		WAIT FOR 10 NS;
		END PROCESS;
END rtl;