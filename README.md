# Simple Verilog ALU Project

This is my first project in Verilog, featuring a simple Arithmetic Logic Unit (ALU) that performs basic arithmetic and logical operations on 4-bit inputs.

## Project Description
The ALU can perform the following operations, controlled by a 3-bit `control` signal:
- **000**: Addition (`A + B`)
- **001**: Subtraction (`A - B`)
- **010**: Bitwise AND (`A & B`)
- **011**: Bitwise OR (`A | B`)
- **100**: Bitwise NOT (`~A`)

Any other value for `control` results in the `result` being set to `0000` (default).

## File Included
- **ALU.v**: The Verilog module that defines the ALU and its operations.

## How to Run
1. Use a Verilog simulator such as ModelSim, Icarus Verilog, or Vivado.
2. Compile and run `ALU.v` to observe the output for different control signals.
3. The simulation can display the results using a testbench that you can write to monitor and validate the ALU's behavior.

## Simulation Details
The ALU can be tested for various operations:
- **Addition**: Example input `0101` (5) and `0011` (3) to produce `1000` (8).
- **Subtraction**: Example input `1000` (8) minus `0010` (2) to produce `0110` (6).
- **AND**: Example bitwise AND on `1100` and `1010` to get `1000`.
- **OR**: Example bitwise OR on `1100` and `1010` to get `1110`.
- **NOT**: Example bitwise NOT on `1010` to get `0101`.

## Lessons Learned
This project introduced me to:
- Writing Verilog modules and using case statements for different operations.
- Understanding the basics of arithmetic and logical circuits in digital design.

## Future Plans
- Expand the ALU to support more complex operations, like bit shifting and comparisons.
- Implement this ALU design on FPGA hardware in the future to gain hands-on experience with hardware prototyping.
