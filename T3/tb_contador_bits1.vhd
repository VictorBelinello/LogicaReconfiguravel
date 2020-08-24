---- Criar 2 contadores de bits '1' em uma palavra de 3 bits
-- Na mesma entidade
-- Um com variaveis outro com sinais
-- A cada ciclo avaliar um bit da palavra

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_contador_bits1 is
end entity;

architecture hardware of tb_contador_bits1 is	

	signal   clk, rst : std_logic;	-- Clock de entrada e rst
	signal 	word : std_logic_vector(2 downto 0); -- Palavra de 3 bits
	signal 	output_signal: std_logic_vector(1 downto 0); -- Usando signal. Pode ser 4 valores (0,1,2,3) logo precisa de 2 bits
	signal 	output_var: std_logic_vector(1 downto 0); -- Usando variable. Pode ser 4 valores (0,1,2,3) logo precisa de 2 bits
	
	component contador_bits1 is 
	port(
		clk, rst : in std_logic;	-- Clock de entrada e rst
		word : in std_logic_vector(2 downto 0); -- Palavra de 3 bits
		output_signal: out std_logic_vector(1 downto 0); -- Usando signal. Pode ser 4 valores (0,1,2,3) logo precisa de 2 bits
		output_var: out std_logic_vector(1 downto 0) -- Usando variable. Pode ser 4 valores (0,1,2,3) logo precisa de 2 bits
		);
	end component;

	
	begin 
		UUT:contador_bits1 
		port map(
			clk,
			rst,
			word,
			output_signal,
			output_var
		);
		
	process
	begin
		rst <= '1';
		wait for 50ns;
		rst <= '0';
		wait;
	end process;
	
	process
	begin
		clk <= '0';
		wait for 50ns;
		clk <= '1';
		wait for 50ns;
	end process;
	
	process
	begin
		word <= "101"; wait for 300ns; 
		word <= "001"; wait for 300ns; 
		word <= "000"; wait for 300ns; 
		word <= "111"; wait for 300ns;  
		word <= "110"; wait for 300ns; 
		word <= "100"; wait for 300ns; 
		wait;
	end process;
	
end hardware;

