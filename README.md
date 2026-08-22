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
