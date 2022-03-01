# Lab 3: Hana Daová

### Two-bit wide 4-to-1 multiplexer

1. Listing of VHDL architecture from source file `mux_2bit_4to1.vhd`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture Behavioral of mux_2bit_4to1 is
begin
  f_o <= a_i when (sel_i = "00") else          
         b_i when (sel_i = "01") else        
         c_i when (sel_i = "10") else        
         d_i; -- All other combinations
end architecture Behavioral;
```

2. Listing of VHDL stimulus process from testbench file (`tb_mux_2bit_4to1`) with asserts. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines. Verify at least four random input combinations:

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- WRITE YOUR TEST CASES HERE

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

3. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![your figure](https://github.com/hakidaova/digital-electronics-1/blob/main/labs/03-vivado/images/sim_3.png)

