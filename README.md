# Flip-Flops in Verilog

This repository contains the Verilog HDL implementation and simulation of commonly used sequential circuits. Each module includes its corresponding testbench in the same file for easy simulation and verification.

## Repository Contents

| File Name | Description |
|-----------|-------------|
| `jk.v` | JK Flip-Flop implementation with testbench |
| `dff.v` | D Flip-Flop implementation with testbench |
| `tff.v` | T Flip-Flop implementation with testbench |
| `tjkff.v` | T Flip-Flop implemented using a JK Flip-Flop with testbench |
| `djkff.v` | D Flip-Flop implemented using a JK Flip-Flop with testbench |

## Flip-Flops Implemented

### 1. JK Flip-Flop
A sequential circuit whose next state depends on the inputs **J**, **K**, and the clock.

| J | K | Next State |
|---|---|------------|
| 0 | 0 | No Change |
| 0 | 1 | Reset |
| 1 | 0 | Set |
| 1 | 1 | Toggle |

---

### 2. D Flip-Flop
A data storage element that transfers the input **D** to the output **Q** on the active clock edge.

| D | Next State |
|---|------------|
| 0 | 0 |
| 1 | 1 |

---

### 3. T Flip-Flop
A toggle flip-flop that changes its output only when **T = 1**.

| T | Next State |
|---|------------|
| 0 | No Change |
| 1 | Toggle |

---

### 4. T Flip-Flop using JK Flip-Flop
Implementation of a T Flip-Flop using a JK Flip-Flop.

Logic used:

```
J = T
K = T
```

When **T = 1**, both J and K become 1, causing the JK Flip-Flop to toggle.

---

### 5. D Flip-Flop using JK Flip-Flop
Implementation of a D Flip-Flop using a JK Flip-Flop.

Logic used:

```
J = D
K = ~D
```

This configuration makes the JK Flip-Flop behave exactly like a D Flip-Flop.

## Features

- Verilog HDL implementation
- Individual testbench included with each module
- Easy to simulate in Vivado or any Verilog simulator
- Suitable for beginners learning sequential logic and flip-flop design

## Simulation

Compile and simulate the desired file using your preferred Verilog simulator (e.g., Vivado, ModelSim, or Icarus Verilog). Observe the waveform to verify the behavior of each flip-flop according to its truth table.

## Learning Objectives

- Understand the operation of JK, D, and T Flip-Flops.
- Learn how one type of flip-flop can be implemented using another.
- Practice writing Verilog modules and testbenches.
- Verify sequential circuits through simulation.
