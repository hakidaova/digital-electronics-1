## 1 Preparation tasks (done before the lab at home)

1. A half adder has two inputs A and B and two outputs Carry and Sum. Complete the half adder truth table. Draw a logic diagram of both output functions.

    | **B** | **A** | **Carry** | **Sum** |
    | :-: | :-: | :-: | :-: |
    | 0 | 0 | 0 | 0 |
    | 0 | 1 | 0 | 1 |
    | 1 | 0 | 0 | 1 |
    | 1 | 1 | 1 | 0 |
    
    ![half](https://github.com/hakidaova/digital-electronics-1/blob/main/labs/04-adder/images/half_adder.jpg)

2. A full adder has three inputs and two outputs. The two inputs are A, B, and Carry input. The outputs are Carry output and Sum. Complete the full adder truth table and draw a logic diagram of both output functions.

    | **Cin** | **B** | **A** | **Cout** | **Sum** |
    | :-: | :-: | :-: | :-: | :-: |
    | 0 | 0 | 0 | 0 | 0 |
    | 0 | 0 | 1 | 0 | 1 |
    | 0 | 1 | 0 | 0 | 1 |
    | 0 | 1 | 1 | 1 | 0 |
    | 1 | 0 | 0 | 0 | 1 |
    | 1 | 0 | 1 | 1 | 0 |
    | 1 | 1 | 0 | 1 | 0 |
    | 1 | 1 | 1 | 1 | 1 |
    
    ![full](https://github.com/hakidaova/digital-electronics-1/blob/main/labs/04-adder/images/full_adder.jpg)

3. Find the relationship between half adder and full adder logic diagrams.
   a) **Full adder is basically composed from two half adders that are both conducted to an OR logic gate.**

4. See schematic of the [CPLD expansion board](../../Docs/cpld_expansion.pdf) and find out the connection of LEDs, push buttons, and slide switches.
