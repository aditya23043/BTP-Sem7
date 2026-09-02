# Sat Aug 22 12:08:33 IST 2026

- Analyzed Arnav's python script to understand how to automate the process of running the spectre
  simulations for the brute force approach

```
run_spectre()
	csh
	source ~/cmos65/.cshrc_cmos065
	spectre +aps +mt top.scs
		+aps = accelerated parallel simulator
		+mt = multi-threading		
```

## Simulation File (top.scs)

- top.scs
	- config
	- netlist
	- stimuli
	- meas
	- dataset

---

- out of these, config is just a fixed template, stimuli and meas are also fixed for specific application
- we need to handl netlist generation from Verilog to .scs
- and to generate data set according to the sweep

# Mon Aug 31 09:14:58 IST 2026

- Proved that there are cells which have transistor width values lying between those in the
  technology library that provide more optimal results with a given set of constraints

- Created 43 additional cells in the existing Nangate45 Library with width values calculated using
  interpolation since we cannot do full timing characterization within the given time limit and
  since this is proof-of-concept only

- Ran yosys with a set of constraints and observed that the tool picked out several of our custom
  cells to be mapped in the circuit. This proved that there exists cells between existing library
  cells which prove to be more optimal for a given set of constraints.

- Currently we were testing for a complex Ripple Carry Adder circuit but this works for a simple
  full adder circuit as well disproving my earlier assumption of the full adder circuit being too
  simple to notice drive strength changes

## Files

- 26-08-26/yosys.tcl
- 26-08-26/rca.v
- 26-08-26/nangate45_slow_arnav.lib
- 26-08-26/constraints.sdc


# Wed Sep  2 21:58:29 IST 2026

- Objective: write a script to find the delay, power, area for 8-10 complex circuits with both,
  original and modified library containing additional custom cells with drive strength resolution in
  the order of 0.5 with interpolated intrinsic values.
- Currently script does:
  - iterates through all libraries inside `libs/` then iterates over all circuits inside `circuits/`
    and then modifies the yosys tcl file then runs yosys
