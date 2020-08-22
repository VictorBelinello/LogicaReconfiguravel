-- Criar 2 contadores de bits '1' em uma palavra de 3 bits
-- Na mesma entidade
-- Um com variaveis outro com sinais
-- A cada ciclo avaliar um bit da palavra

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_bits1_tb is
end entity;

architecture hardware of contador_bits1_tb is
	component contador_bits1 
	port(
	 clk : in std_logic;	-- Clock de entrada
	 word : in unsigned(2 downto 0); -- Palavra de 3 bits
	 output_signal: out unsigned(1 downto 0); -- Usando signal. Pode ser 4 valores (0,1,2,3) logo precisa de 2 bits
	 output_var: out unsigned(1 downto 0) -- Usando variable. Pode ser 4 valores (0,1,2,3) logo precisa de 2 bits
  );
  end component;
  
  signal clk : std_logic;	-- Clock de entrada
	signal  word :  unsigned(2 downto 0); -- Palavra de 3 bits
	signal  output_signal:  unsigned(1 downto 0); -- Usando signal. Pode ser 4 valores (0,1,2,3) logo precisa de 2 bits
	signal  output_var:  unsigned(1 downto 0);

  begin
    cont : contador_bits1 port map(clk=>clk, word=>word,output_signal=>output_signal,output_var=>output_var);
    
    process
    begin
      clk <= '0';
      wait for 10ns;
      clk <= '1';
      wait for 10ns;
    end process;
      
    process
    begin
      word <= "010";
      wait for 30ns;
      word <= "101";
      wait for 30ns;
      word <= "000";
      wait for 30ns;
      word <= "111";
      wait for 30ns;
      word <= "110";
      wait;
    end process;  
  
end hardware;

