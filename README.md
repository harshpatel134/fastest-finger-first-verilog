# 8-User Fastest Finger First System

## Overview

This project implements an 8-user Fastest Finger First (FFF) system using Verilog HDL and FPGA.

The system detects the first valid player input, stores the winner, locks further responses until reset, and displays the winning player number using a seven-segment display.

## Features

- 8-user player input
- Winner detection and latching
- Lock mechanism to prevent further responses
- Reset for a new round
- Seven-segment display output
- FPGA implementation
- Verilog HDL design

## Design

The design consists of:

- Player input detection
- Winner latch
- Lock mechanism
- Seven-segment display decoder

## Simulation

The design was simulated using ModelSim to verify the winner detection and locking behavior.

## FPGA Implementation

The design was implemented on an FPGA platform with the winning player displayed on a seven-segment display.

## Project Files

| File | Description |
|---|---|
| `FFF8USER.v` | Verilog HDL design |
## Achievement

Runner-up position in the Autonomous Maze Solver Competition at Mindbend, SVNIT is a separate achievement and is not part of this project.
