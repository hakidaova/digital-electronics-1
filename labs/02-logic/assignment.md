# Lab 2: HANA DAOVA

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

   ![K-maps](https://github.com/hakidaova/digital-electronics-1/blob/main/labs/02-logic/images/greater_SoP.jpg)

   Less than:

   ![K-maps](https://github.com/hakidaova/digital-electronics-1/blob/main/labs/02-logic/images/less_PoS.jpg)

2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](https://github.com/hakidaova/digital-electronics-1/blob/main/labs/02-logic/images/functions.jpg)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **230238**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0011"; -- second last digit of ID (3)
        s_a <= "1000"; -- last digit of ID (8)
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '1') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination 0011, 1000 FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![your figure](https://github.com/hakidaova/digital-electronics-1/blob/main/labs/02-logic/images/simulation.png)

3. Link to your public EDA Playground example:

   [https://www.edaplayground.com/hakidaova](https://www.edaplayground.com/x/UFqp)
