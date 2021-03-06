# Lab 5: Hana Daová

### Flip-flops

1. Listing of VHDL architecture for T-type flip-flop. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture Behavioral of t_ff_rst is
    signal q_n    : std_logic;
begin
    --------------------------------------------------------
    -- p_t_ff_rst:
    -- T type flip-flop with a high-active sync reset,
    -- rising-edge clk.
    -- q(n+1) = t./q(n) + /t.q(n)
    --------------------------------------------------------
    p_t_ff_rst : process(clk) --sensitivity list (v zavorce)
    begin
        if rising_edge(clk) then  -- Synchronous process
            if (rst = '1') then-- USE HIGH-ACTIVE RESET HERE
                q     <= '0';
                q_bar <= '1';
                q_n   <= '0';
            else
                q_n   <= (t and (not q_n)) or ((not t) and q_n);
                q     <= q_n;
                q_bar <= not q_n;
                
                --q_1 <= (t and (not q_n)) or ((not t) and q_n);
                --q_1_bar <= not((t and (not q_n)) or ((not t) and q_n));
            end if; 
        end if;
    end process p_t_ff_rst;
end architecture Behavioral;
```

2. Screenshot with simulated time waveforms. Try to simulate both flip-flops in a single testbench with a maximum duration of 200 ns, including reset. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![your figure](https://github.com/hakidaova/digital-electronics-1/blob/main/labs/05-ffs/images/ffs.png)

### Shift register

1. Image of the shift register `top` level schematic. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

   ![your figure](https://github.com/hakidaova/digital-electronics-1/blob/main/labs/05-ffs/images/top.jpg)
