# 7420 Dual 4-Input NAND Gate IC Verilog Simulation

A structural digital logic project implementing the classic **7420 Integrated Circuit (IC)**, which features dual independent 4-input NAND gates. The hardware is simulated using Icarus Verilog (`iverilog`) and verified visually using GTKWave on Ubuntu.

## 7420 IC Logic Configuration
Each gate inside the IC evaluates four distinct inputs. The output flips low (`0`) **if and only if** all four corresponding inputs are driven high (`1`). Otherwise, the output rests high (`1`).

$$\text{p1y} = \neg (\text{p1a} \land \text{p1b} \land \text{p1c} \land \text{p1d})$$
$$\text{p2y} = \neg (\text{p2a} \land \text{p2b} \land \text{p2c} \land \text{p2d})$$

### Truth Table (Per Independent Gate)

| Inputs (A, B, C, D) | Output (Y) |
| :---: | :---: |
| Any input is `0` | **1** |
| All inputs are `1` (`1111`) | **0** |

## Files In This Repository
* `simple_7420.v` - Primary Verilog source design file mapping the boolean dual 4-input NAND functions.
* `tb_simple_7420.v` - Testbench utilizing an unpacked multi-dimensional register array alongside four parallel clock loops to exhaustively sweep the full 16-combination binary state space (`0000` to `1111`) for both gates.

## How to Run & Verify Locally
Ensure you have `iverilog` and `gtkwave` installed on your Linux system. Run the following command block from this directory:

```bash
# Compile the design module and testbench together
iverilog -o design_simple_7420 *.v

# Execute the simulation engine to generate waveform logs
vvp design_simple_7420

# Open the logic analyzer display window
gtkwave sim_output.vcd
```
