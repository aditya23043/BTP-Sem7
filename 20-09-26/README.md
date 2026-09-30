
# Sun Sep 20 11:29:08 PM IST 2026

- Trying to print out the options that the logic synthesis tool generates
  out which it picks the most optimal one based on constraints given
- we have established that this step is primarily handled by ABC

- Ran the different stages and logged the intermediate RTLIL files for a half adder circuit but did
  not see many options because of the limited flexibility by the logic

# Mon Sep 21 16:03:46 IST 2026

- Trying the same thing but with a more flexible circuit

## Flexible circuit

$y = (a & b) | (b & c) | (c & a)$

- OUTPUT LOG:

```
~/D/R/B/20-09-26 ❯❯❯ yosys -s script.tcl                                                                                                                                                                                      main ✱

 /----------------------------------------------------------------------------\
 |  yosys -- Yosys Open SYnthesis Suite                                       |
 |  Copyright (C) 2012 - 2026  Claire Xenia Wolf <claire@yosyshq.com>         |
 |  Distributed under an ISC-like license, type "license" to see terms        |
 \----------------------------------------------------------------------------/
 Yosys 0.68+post (git sha1 c12172fbae8af5e20f6fb52e3d4e92d56ed587b6, Release, AppleClang clang++ 21.0.0.21000101)

-- Executing script file `script.tcl' --

1. Executing Verilog-2005 frontend: test.v
Parsing Verilog input from `test.v' to AST representation.
Generating RTLIL representation for module `\test'.
Successfully finished Verilog frontend.

2. Executing HIERARCHY pass (managing design hierarchy).

2.1. Analyzing design hierarchy..
Top module:  \test

2.2. Analyzing design hierarchy..
Top module:  \test
Removed 0 unused modules.

3. Executing PROC pass (convert processes to netlists).

3.1. Executing PROC_CLEAN pass (remove empty switches from decision trees).
Cleaned up 0 empty switches.

3.2. Executing PROC_RMDEAD pass (remove dead branches from decision trees).
Removed a total of 0 dead cases.

3.3. Executing PROC_PRUNE pass (remove redundant assignments in processes).
Removed 0 redundant assignments.
Promoted 0 assignments to connections.

3.4. Executing PROC_INIT pass (extract init attributes).

3.5. Executing PROC_ARST pass (detect async resets in processes).

3.6. Executing PROC_ROM pass (convert switches to ROMs).
Converted 0 switches.

3.7. Executing PROC_MUX pass (convert decision trees to multiplexers).

3.8. Executing PROC_DLATCH pass (convert process syncs to latches).

3.9. Executing PROC_DFF pass (convert process syncs to FFs).

3.10. Executing PROC_MEMWR pass (convert process memory writes to cells).

3.11. Executing PROC_CLEAN pass (remove empty switches from decision trees).
Cleaned up 0 empty switches.

3.12. Executing OPT_EXPR pass (perform const folding).
Optimizing module test.

4. Executing OPT pass (performing simple optimizations).

4.1. Executing OPT_EXPR pass (perform const folding).
Optimizing module test.

4.2. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\test'.
Computing hashes of 5 cells of `\test'.
Finding duplicate cells in `\test'.
Removed a total of 0 cells.

4.3. Executing OPT_MUXTREE pass (detect dead branches in mux trees).
Running muxtree optimizer on module \test..
  Creating internal representation of mux trees.
  No muxes found in this module.
Removed 0 multiplexer ports.

4.4. Executing OPT_REDUCE pass (consolidate $*mux and $reduce_* inputs).
  Optimizing cells in module \test.
Performed a total of 0 changes.

4.5. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\test'.
Computing hashes of 5 cells of `\test'.
Finding duplicate cells in `\test'.
Removed a total of 0 cells.

4.6. Executing OPT_DFF pass (perform DFF optimizations).

4.7. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \test..
Removed 0 unused cells and 1 unused wires.
<suppressed ~1 debug messages>

4.8. Executing OPT_EXPR pass (perform const folding).
Optimizing module test.

4.9. Rerunning OPT passes. (Maybe there is more to do..)

4.10. Executing OPT_MUXTREE pass (detect dead branches in mux trees).
Running muxtree optimizer on module \test..
  Creating internal representation of mux trees.
  No muxes found in this module.
Removed 0 multiplexer ports.

4.11. Executing OPT_REDUCE pass (consolidate $*mux and $reduce_* inputs).
  Optimizing cells in module \test.
Performed a total of 0 changes.

4.12. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\test'.
Computing hashes of 5 cells of `\test'.
Finding duplicate cells in `\test'.
Removed a total of 0 cells.

4.13. Executing OPT_DFF pass (perform DFF optimizations).

4.14. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \test..

4.15. Executing OPT_EXPR pass (perform const folding).
Optimizing module test.

4.16. Finished fast OPT passes. (There is nothing left to do.)

5. Executing RTLIL backend.
Output filename: 01_proc.rtlil

6. Executing OPT pass (performing simple optimizations).

6.1. Executing OPT_EXPR pass (perform const folding).
Optimizing module test.

6.2. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\test'.
Computing hashes of 5 cells of `\test'.
Finding duplicate cells in `\test'.
Removed a total of 0 cells.

6.3. Executing OPT_MUXTREE pass (detect dead branches in mux trees).
Running muxtree optimizer on module \test..
  Creating internal representation of mux trees.
  No muxes found in this module.
Removed 0 multiplexer ports.

6.4. Executing OPT_REDUCE pass (consolidate $*mux and $reduce_* inputs).
  Optimizing cells in module \test.
Performed a total of 0 changes.

6.5. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\test'.
Computing hashes of 5 cells of `\test'.
Finding duplicate cells in `\test'.
Removed a total of 0 cells.

6.6. Executing OPT_DFF pass (perform DFF optimizations).

6.7. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \test..

6.8. Executing OPT_EXPR pass (perform const folding).
Optimizing module test.

6.9. Finished fast OPT passes. (There is nothing left to do.)

7. Executing RTLIL backend.
Output filename: 02_proc.rtlil

8. Executing TECHMAP pass (map to technology primitives).

8.1. Executing Verilog-2005 frontend: /opt/homebrew/bin/../share/yosys/techmap.v
Parsing Verilog input from `/opt/homebrew/bin/../share/yosys/techmap.v' to AST representation.
Generating RTLIL representation for module `\_90_simplemap_bool_ops'.
Generating RTLIL representation for module `\_90_simplemap_reduce_ops'.
Generating RTLIL representation for module `\_90_simplemap_logic_ops'.
Generating RTLIL representation for module `\_90_simplemap_compare_ops'.
Generating RTLIL representation for module `\_90_simplemap_various'.
Generating RTLIL representation for module `\_90_simplemap_registers'.
Generating RTLIL representation for module `\_90_shift_ops_shr_shl_sshl_sshr'.
Generating RTLIL representation for module `\_90_shift_shiftx'.
Generating RTLIL representation for module `\_90_fa'.
Generating RTLIL representation for module `\_90_lcu_brent_kung'.
Generating RTLIL representation for module `\_90_alu'.
Generating RTLIL representation for module `\_90_macc'.
Generating RTLIL representation for module `\_90_alumacc'.
Generating RTLIL representation for module `$__div_mod_u'.
Generating RTLIL representation for module `$__div_mod_trunc'.
Generating RTLIL representation for module `\_90_div'.
Generating RTLIL representation for module `\_90_mod'.
Generating RTLIL representation for module `$__div_mod_floor'.
Generating RTLIL representation for module `\_90_divfloor'.
Generating RTLIL representation for module `\_90_modfloor'.
Generating RTLIL representation for module `\_90_pow'.
Generating RTLIL representation for module `\_90_demux'.
Generating RTLIL representation for module `\_90_lut'.
Generating RTLIL representation for module `$connect'.
Generating RTLIL representation for module `$input_port'.
Successfully finished Verilog frontend.

8.2. Continuing TECHMAP pass.
Using extmapper simplemap for cells of type $and.
Using extmapper simplemap for cells of type $or.
No more expansions possible.
<suppressed ~82 debug messages>

9. Executing RTLIL backend.
Output filename: 03_proc.rtlil

10. Executing OPT pass (performing simple optimizations).

10.1. Executing OPT_EXPR pass (perform const folding).
Optimizing module test.

10.2. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\test'.
Computing hashes of 5 cells of `\test'.
Finding duplicate cells in `\test'.
Removed a total of 0 cells.

10.3. Executing OPT_MUXTREE pass (detect dead branches in mux trees).
Running muxtree optimizer on module \test..
  Creating internal representation of mux trees.
  No muxes found in this module.
Removed 0 multiplexer ports.

10.4. Executing OPT_REDUCE pass (consolidate $*mux and $reduce_* inputs).
  Optimizing cells in module \test.
Performed a total of 0 changes.

10.5. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\test'.
Computing hashes of 5 cells of `\test'.
Finding duplicate cells in `\test'.
Removed a total of 0 cells.

10.6. Executing OPT_DFF pass (perform DFF optimizations).

10.7. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \test..

10.8. Executing OPT_EXPR pass (perform const folding).
Optimizing module test.

10.9. Finished fast OPT passes. (There is nothing left to do.)

11. Executing RTLIL backend.
Output filename: 04_proc.rtlil

12. Executing ABC pass (technology mapping using ABC).

12.1. Extracting gate netlist of module `\test' to `<abc-temp-dir>/input.blif'..

12.1.1. Executed ABC.
Extracted 5 gates and 8 wires to a netlist network with 3 inputs and 1 outputs.
Running ABC script: <abc-temp-dir>/abc.script
ABC: ======== ABC command line "source <abc-temp-dir>/abc.script"
ABC: + read_blif <abc-temp-dir>/input.blif
ABC: + read_library <abc-temp-dir>/stdcells.genlib
ABC: + strash
ABC: + &get -n
ABC: + &fraig -x
ABC: + &put
ABC: + scorr
ABC: Warning: The network is combinational (run "fraig" or "fraig_sweep").
ABC: + dc2
ABC: + dretime
ABC: + strash
ABC: + &get -n
ABC: + &dch -f
ABC: + &nf
ABC: + &put
ABC: + write_blif <abc-temp-dir>/output.blif

12.1.2. Re-integrating ABC results.
ABC RESULTS:              NAND cells:        3
ABC RESULTS:                OR cells:        1
ABC RESULTS:        internal signals:        4
ABC RESULTS:           input signals:        3
ABC RESULTS:          output signals:        1
Removing temp directory.
Removing global temp directory.

13. Executing RTLIL backend.
Output filename: 05_proc.rtlil

End of script. Logfile hash: a44d379def, time: 0.07s, user: 0.02s, system: 0.02s, MEM: 16.58 MB peak
Yosys 0.68+post (git sha1 c12172fbae8af5e20f6fb52e3d4e92d56ed587b6, Release, AppleClang clang++ 21.0.0.21000101)
Time spent: 72% 1x abc (0 sec), 17% 3x read_verilog (0 sec), ...
```

- We saw that in the first pass itself the tool resolves the output as:
  - y = OR( AND(B, C) , OR( AND(A, B) , AND(B, C) ))
