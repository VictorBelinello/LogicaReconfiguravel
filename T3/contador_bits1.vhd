-- Criar 2 contadores de bits '1' em uma palavra de 3 bits
-- Na mesma entidade
-- Um com variaveis outro com sinais
-- A cada ciclo avaliar um bit da palavra

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_bits1 is
port(
	clk, rst : in std_logic;	-- Clock de entrada e rst
	word : in std_logic_vector(2 downto 0); -- Palavra de 3 bits
	output_signal: out unsigned(1 downto 0); -- Usando signal. Pode ser 4 valores (0,1,2,3) logo precisa de 2 bits
	output_var: out unsigned(1 downto 0) -- Usando variable. Pode ser 4 valores (0,1,2,3) logo precisa de 2 bits
);
end entity;

architecture hardware of contador_bits1 is	
	signal total : integer := 0;
	
begin	
	process(clk, rst)
	
		variable var_total : integer := 0;
		variable current_bit : std_logic := '0';
		variable index : integer range 0 to 3 := 0;
		
	begin
		if( rst = '1' ) then
			index := 0;
			total <= 0;
			var_total := 0;
		else
			if (rising_edge(clk)) then	
			
				if index < 3 then
					current_bit := word(index);
				
					if current_bit = '1' then
						total <= total +  1;
						var_total := var_total + 1;
					end if;
				else
					index := 0;
					total <= 0;
					var_total := 0;
					
					current_bit := word(index);
				
					if current_bit = '1' then
						total <= 1;
						var_total := var_total + 1;
					end if;
				end if;
				
				index := index  + 1;
				
			end if;
		end if;
		output_var <= to_unsigned(var_total, 2);
	end process;
	
	output_signal <= to_unsigned(total, 2);
	
		
end hardware;

