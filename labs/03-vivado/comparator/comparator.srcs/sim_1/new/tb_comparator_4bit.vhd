------------------------------------------------------------
--
-- Testbench for 2-bit binary comparator.
-- EDA Playground
--
-- Copyright (c) 2020-Present Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
entity tb_comparator_2bit is
    -- Entity of testbench is always empty
end entity tb_comparator_2bit;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_comparator_2bit is

    -- Local signals
    signal s_a           : std_logic_vector(4 - 1 downto 0);
    signal s_b           : std_logic_vector(4 - 1 downto 0);
    signal s_B_greater_A : std_logic;
    signal s_B_equals_A  : std_logic;
    signal s_B_less_A    : std_logic;

begin
    -- Connecting testbench signals with comparator_2bit
    -- entity (Unit Under Test)
    uut_comparator_2bit : entity work.comparator_2bit
        port map(
            a_i           => s_a,
            b_i           => s_b,
            B_greater_A_o => s_B_greater_A,
            B_equals_A_o  => s_B_equals_A,
            B_less_A_o    => s_B_less_A
        );

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0011"; -- second last digit of ID (3)
        s_a <= "1000"; -- last digit of ID (8)
        wait for 100 ns; 
        -- expected outputs
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0011, 1000 FAILED" severity error;



        -- TEST CASE with the error report HERE
       -- s_b <= "01"; s_a <= "01"; wait for 100 ns;
        -- ... and its expected outputs
      --  assert ((s_B_greater_A = '0') and
               -- (s_B_equals_A  = '0') and
               -- (s_B_less_A    = '1'))
        -- If false, then report an error
        -- If true, then do not report anything
     --   report "Input combination 00, 01 FAILED" severity error;
        
        -- OTHER TEST CASES HERE
        -- s_b <= "00"; s_a <= "10"; wait for 100 ns;
        -- s_b <= "00"; s_a <= "11"; wait for 100 ns;
      
        -- s_b <= "01"; s_a <= "00"; wait for 100 ns;
        -- s_b <= "01"; s_a <= "01"; wait for 100 ns;
        -- s_b <= "01"; s_a <= "10"; wait for 100 ns;
        -- s_b <= "01"; s_a <= "11"; wait for 100 ns;
        
        -- s_b <= "10"; s_a <= "00"; wait for 100 ns;
        -- s_b <= "10"; s_a <= "01"; wait for 100 ns;
        -- s_b <= "10"; s_a <= "10"; wait for 100 ns;
        -- s_b <= "10"; s_a <= "11"; wait for 100 ns;
       
        -- s_b <= "11"; s_a <= "00"; wait for 100 ns;
        -- s_b <= "11"; s_a <= "01"; wait for 100 ns;
        -- s_b <= "11"; s_a <= "10"; wait for 100 ns;
        -- s_b <= "11"; s_a <= "11"; wait for 100 ns;



        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait; -- Data generation process is suspended forever
    end process p_stimulus;

end architecture testbench;
