-- Criar 2 contadores de bits '1' em uma palavra de 3 bits
-- Na mesma entidade
-- Um com variaveis outro com sinais
-- A cada ciclo avaliar uma palavra

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_bits1 is
	port(
		clk, rst : in std_logic;	-- Clock de entrada e rst
		word : in std_logic_vector(2 downto 0); -- Palavra de 3 bits
		output_signal: out unsigned(1 downto 0); -- Usando signal. Pode ser 4 valores (0,1,2,3) logo precisa de 2 bits
		output_var_for, output_var_while: out unsigned(1 downto 0) -- Usando variable. Pode ser 4 valores (0,1,2,3) logo precisa de 2 bits
	);
end entity;

architecture hardware of contador_bits1 is
	signal sig_total : unsigned(1 downto 0) := "00";

begin
	process(clk, rst)
		variable var_total_for, var_total_while : unsigned(1 downto 0) := "00";
		variable idx : integer range 0 to 3 := 0;
	begin
		if rst = '1' then
			sig_total <= "00";
			var_total_for := "00";
			var_total_while := "00";
		elsif rising_edge(clk) then
			var_total_for := "00";
			var_total_while := "00";
			
			for i in 0 to 2 loop
				if(word(i) = '1') then
					var_total_for := var_total_for	+ 1;
				end if;
			end loop;
			
			idx := 0;
			while idx <= 2 loop
				if(word(idx) = '1') then
					var_total_while := var_total_while	+ 1;
				end if;
				idx := idx + 1;
			end loop;
			
			case word is
				when "000" => sig_total <= "00";
				when "001"|"010"|"100" => sig_total <= "01";
				when "011"|"110"|"101" => sig_total <= "10";
				when "111" => sig_total <= "11";
				when others => sig_total <= "UU";
			end case;
			
		end if;
		output_var_for <= var_total_for;
		output_var_while <= var_total_while;
	end process ;
	output_signal <= sig_total;	
	
end architecture hardware;