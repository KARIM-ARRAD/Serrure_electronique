-- Used Libraries
--***********************************************************
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--************************************************************--
-- ENTITY Declaration
--************************************************************
ENTITY registre_parallele_4bits_tb IS 
END registre_parallele_4bits_tb;

--***********************************************************--
-- RTL Description
--************************************************************
ARCHITECTURE RTL OF registre_parallele_4bits_tb IS
	COMPONENT registre_parallele_4bits PORT(
		enable : IN STD_LOGIC ;
		rst    : IN STD_LOGIC ;
		clk    : IN STD_LOGIC ;
		button_in : IN STD_LOGIC_VECTOR (3 DOWNTO 0) ;
		button_out : OUT STD_LOGIC_VECTOR (3 DOWNTO 0) );
	END COMPONENT ;
	SIGNAL enable :  STD_LOGIC ;
	SIGNAL	rst    :  STD_LOGIC ;
	SIGNAL	clk    :  STD_LOGIC ;
	SIGNAL	button_in      :  STD_LOGIC_VECTOR (3 DOWNTO 0) ;
	SIGNAL	button_out      :  STD_LOGIC_VECTOR (3 DOWNTO 0);
	BEGIN 
		U0 :  registre_parallele_4bits PORT MAP (
			enable => enable,
			rst    => rst,
			clk    => clk,
			button_in      => button_in,
			button_out      => button_out);
		PROCESS
			BEGIN
			rst <= '0';
			WAIT FOR 35 NS ;
			rst <= '1';
			WAIT FOR 12 NS ;
			
		END PROCESS;

		PROCESS
			BEGIN
			clk <= '0';
			WAIT FOR 10 NS;
			clk <= '1';
			WAIT FOR 10 NS;		
			
		END PROCESS;
		PROCESS
			BEGIN
			enable <= '1';
			WAIT FOR 41 NS;
			enable <= '0';
			WAIT FOR 15 NS;		
			
		END PROCESS;
		PROCESS
			BEGIN
			button_in <= "1010";
			WAIT FOR 13 NS;
			button_in <= "0001";
			WAIT FOR 13 NS;
			
		END PROCESS;
		
END RTL ;