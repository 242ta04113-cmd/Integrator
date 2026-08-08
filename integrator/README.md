# 8-Bit Digital Integrator in Verilog

## Description

This project implements an 8-bit digital integrator using Verilog HDL.

The integrator accumulates the input value at every positive edge of
the clock.

## Equation

Output(n) = Output(n-1) + Input(n)

## Files

- `integrator.v` - Main Verilog design
- `integrator_tb.v` - Testbench
- `README.md` - Project documentation

## Inputs

- `clk` - Clock signal
- `reset` - Reset signal
- `enable` - Enables integration
- `input_data` - 8-bit input

## Output

- `output_data` - 8-bit accumulated output

## Example

If the input values are:

5 → 10 → 15 → 20

The output becomes:

5 → 15 → 30 → 50

## Simulation

Compile using Icarus Verilog:

```bash
iverilog -o integrator_sim integrator.v integrator_tb.v