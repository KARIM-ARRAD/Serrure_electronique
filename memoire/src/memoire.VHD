-- Used Libraries
--***********************************************************
--***********************************************************
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--************************************************************--
-- ENTITY Declaration
--************************************************************
ENTITY memoire IS 
	PORT (
		detect : IN STD_LOGIC ;
		rst    : IN STD_LOGIC ;
		clk    : IN STD_LOGIC ;
		data_s : IN STD_LOGIC_VECTOR (3 DOWNTO 0) ;
		code_sig : OUT STD_LOGIC_VECTOR (15 DOWNTO 0) );
END memoire;

--***********************************************************--
-- RTL Description
--************************************************************
ARCHITECTURE RTL OF memoire IS
	COMPONENT registre_parallele_4bits PORT(
		enable : IN STD_LOGIC ;
		rst    : IN STD_LOGIC ;
		clk    : IN STD_LOGIC ;
		button_in : IN STD_LOGIC_VECTOR (3 DOWNTO 0) ;
		button_out : OUT STD_LOGIC_VECTOR (3 DOWNTO 0) );
	END COMPONENT ;
	SIGNAL sig_1 : STD_LOGIC_VECTOR (3 DOWNTO 0) ;
	SIGNAL sig_2 : STD_LOGIC_VECTOR (3 DOWNTO 0) ;
	SIGNAL sig_3 : STD_LOGIC_VECTOR (3 DOWNTO 0) ;
	SIGNAL sig_4 : STD_LOGIC_VECTOR (3 DOWNTO 0) ;
	BEGIN 
		U0 :  registre_parallele_4bits PORT MAP (
			enable => detect,
			rst    => rst,
			clk    => clk,
			button_in      => data_s,
			button_out      => sig_1);
		U1 :  registre_parallele_4bits PORT MAP (
			enable => detect,
			rst    => rst,
			clk    => clk,
			button_in      => sig_1,
			button_out      => sig_2);
		U2 :  registre_parallele_4bits PORT MAP (
			enable => detect,
			rst    => rst,
			clk    => clk,
			button_in      => sig_2,
			button_out      => sig_3);
		U3 :  registre_parallele_4bits PORT MAP (
			enable => detect,
			rst    => rst,
			clk    => clk,
			button_in      => sig_3,
			button_out      => sig_4);
		code_sig (3 DOWNTO 0) <= sig_1 ;
		code_sig (7 DOWNTO 4) <= sig_2 ;
		code_sig (11 DOWNTO 8) <= sig_3 ;
		code_sig (15 DOWNTO 12) <= sig_4 ;
END RTL;