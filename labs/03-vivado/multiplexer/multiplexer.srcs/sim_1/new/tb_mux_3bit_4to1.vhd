library ieee;
use ieee.std_logic_1164.all;

entity tb_mux_3bit_4to1 is
    -- Entity of testbench is always empty
end entity tb_mux_3bit_4to1;

architecture testbench of mux_3bit_4to1 is
        signal s_a   : std_logic_vector(3 - 1 downto 0);
        signal s_b   : std_logic_vector(3 - 1 downto 0);
        signal s_c   : std_logic_vector(3 - 1 downto 0);
        signal s_d   : std_logic_vector(3 - 1 downto 0);
        signal s_sel : std_logic_vector(2 - 1 downto 0);
        signal s_f   : std_logic_vector(3 - 1 downto 0);
begin
  uut_mux_3bit_4to1 : entity work.mux_3bit_4to1
  port map(
      a_i   => s_a,
      b_i   => s_b,
      c_i   => s_c,
      d_i   => s_d,
      sel_i => s_sel,
      f_o   => s_f
   );
      
p_stimulus : process
begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_a <= "000";s_b <= "000";s_c <= "000";s_d <= "000";wait for 100 ns;
        s_a <= "000";s_b <= "000";s_c <= "000";s_d <= "000";wait for 100 ns;
        s_a <= "000";s_b <= "000";s_c <= "000";s_d <= "000";wait for 100 ns;
        s_a <= "000";s_b <= "000";s_c <= "000";s_d <= "000";wait for 100 ns;
      
        -- s_b <= "01"; s_a <= "00"; wait for 100 ns;
        -- s_b <= "01"; s_a <= "01"; wait for 100 ns;
        -- s_b <= "01"; s_a <= "10"; wait for 100 ns;
        -- s_b <= "01"; s_a <= "11"; wait for 100 ns;
        
        -- s_b <= "10"; s_a <= "00"; wait for 100 ns;
        -- s_b <= "10"; s_a <= "01"; wait for 100 ns;
    end process p_stimulus;
end architecture testbench;
