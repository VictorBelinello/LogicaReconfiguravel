-- Testbench do conversor BCD ->7 segmentos

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY bcd_7seg_tb IS
END bcd_7seg_tb;

ARCHITECTURE testbench OF bcd_7seg_tb IS

	COMPONENT bcd_7seg IS PORT (
		A, B, C, D : IN std_logic;
		SAIDAS : OUT std_logic_vector(0 TO 6)
	);
	END COMPONENT;	

	-- DefiniÃ§Ã£o dos sinais que serÃ£o usados na simulaÃ§Ã£o
	SIGNAL A1,B1,C1,D1 	: std_logic;
	SIGNAL SAIDAS1 		: std_logic_vector(0 TO 6);

	-- Inicio da descriÃ§Ã£o da simulaÃ§Ã£o em si
	BEGIN
	UUT: bcd_7seg
		-- mapeamento das portas do componente para simulaÃ§Ã£o
		PORT MAP(
			A => A1,
			B => B1,
			C => C1,
			D => D1,
			SAIDAS => SAIDAS1
		);
		
	PROCESS
		BEGIN
			A1 <= '0';
			B1 <= '0';
			C1 <= '0';
			D1 <= '0';
			wait for 10 ns;
			A1 <= '0';
			B1 <= '0';
			C1 <= '0';
			D1 <= '1';
			wait for 10 ns;
			A1 <= '0';
			B1 <= '0';
			C1 <= '1';
			D1 <= '0';
			wait for 10 ns;
			A1 <= '0';
			B1 <= '0';
			C1 <= '1';
			D1 <= '1';
			wait for 10 ns;
			A1 <= '0';
			B1 <= '1';
			C1 <= '0';
			D1 <= '0';
			wait for 10 ns;
			A1 <= '0';
			B1 <= '1';
			C1 <= '0';
			D1 <= '1';
			wait for 10 ns;
			A1 <= '0';
			B1 <= '1';
			C1 <= '1';
			D1 <= '0';
			wait for 10 ns; -- 6
			A1 <= '0';
			B1 <= '1';
			C1 <= '1';
			D1 <= '0';
			wait for 10 ns; -- 7
			A1 <= '1';
			B1 <= '0';
			C1 <= '1';
			D1 <= '0';
			wait; -- 10
	END PROCESS;
END testbench;