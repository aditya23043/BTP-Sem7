Testing yosys with library cells lying between the normal cells

# Wed Aug 26 20:22:30 IST 2026

NangateOpenCell Library has 3 forms of NAND (2 input) Gates
- NAND2_X1
- NAND2_X2
- NAND2_X4

We will try to create NAND2_X3 cell first

# Wed Aug 26 09:03:22 PM IST 2026

Created the lib with only the NAND2_X3 cell in hopes that the tool only
picks up that cell for the circuit

But error coming from ABC -> "Current library is not available"

because it needs other cells as well like AND, MUX, OR etc by default

```

 /----------------------------------------------------------------------------\
 |  yosys -- Yosys Open SYnthesis Suite                                       |
 |  Copyright (C) 2012 - 2026  Claire Xenia Wolf <claire@yosyshq.com>         |
 |  Distributed under an ISC-like license, type "license" to see terms        |
 \----------------------------------------------------------------------------/
 Yosys 0.66 (git sha1 86f2ddebc-dirty, g++ 16.1.1 -march=x86-64 -mtune=generic -O2 -fno-plt -fexceptions -fstack-clash-protection -fcf-protection -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer -ffile-prefix-map=/build/yosys/src=/usr/src/debug/yosys -fPIC -O3) [startdir/yosys at makepkg]

-- Executing script file `yosys.tcl' --

1. Executing Verilog-2005 frontend: full_adder.v
Parsing Verilog input from `full_adder.v' to AST representation.
Generating RTLIL representation for module `\full_adder'.
Successfully finished Verilog frontend.

2. Executing SYNTH pass.

2.1. Executing HIERARCHY pass (managing design hierarchy).

2.1.1. Analyzing design hierarchy..
Top module:  \full_adder

2.1.2. Analyzing design hierarchy..
Top module:  \full_adder
Removed 0 unused modules.

2.2. Executing PROC pass (convert processes to netlists).

2.2.1. Executing PROC_CLEAN pass (remove empty switches from decision trees).
Cleaned up 0 empty switches.

2.2.2. Executing PROC_RMDEAD pass (remove dead branches from decision trees).
Removed a total of 0 dead cases.

2.2.3. Executing PROC_PRUNE pass (remove redundant assignments in processes).
Removed 0 redundant assignments.
Promoted 0 assignments to connections.

2.2.4. Executing PROC_INIT pass (extract init attributes).

2.2.5. Executing PROC_ARST pass (detect async resets in processes).

2.2.6. Executing PROC_ROM pass (convert switches to ROMs).
Converted 0 switches.

2.2.7. Executing PROC_MUX pass (convert decision trees to multiplexers).

2.2.8. Executing PROC_DLATCH pass (convert process syncs to latches).

2.2.9. Executing PROC_DFF pass (convert process syncs to FFs).

2.2.10. Executing PROC_MEMWR pass (convert process memory writes to cells).

2.2.11. Executing PROC_CLEAN pass (remove empty switches from decision trees).
Cleaned up 0 empty switches.

2.2.12. Executing OPT_EXPR pass (perform const folding).
Optimizing module full_adder.

2.3. Executing OPT_EXPR pass (perform const folding).
Optimizing module full_adder.

2.4. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \full_adder..
Removed 0 unused cells and 2 unused wires.
<suppressed ~1 debug messages>

2.5. Executing CHECK pass (checking for obvious problems).
Checking module full_adder...
Found and reported 0 problems.

2.6. Executing OPT pass (performing simple optimizations).

2.6.1. Executing OPT_EXPR pass (perform const folding).
Optimizing module full_adder.

2.6.2. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\full_adder'.
Computing hashes of 7 cells of `\full_adder'.
Finding duplicate cells in `\full_adder'.
Removed a total of 0 cells.

2.6.3. Executing OPT_MUXTREE pass (detect dead branches in mux trees).
Running muxtree optimizer on module \full_adder..
  Creating internal representation of mux trees.
  No muxes found in this module.
Removed 0 multiplexer ports.

2.6.4. Executing OPT_REDUCE pass (consolidate $*mux and $reduce_* inputs).
  Optimizing cells in module \full_adder.
Performed a total of 0 changes.

2.6.5. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\full_adder'.
Computing hashes of 7 cells of `\full_adder'.
Finding duplicate cells in `\full_adder'.
Removed a total of 0 cells.

2.6.6. Executing OPT_DFF pass (perform DFF optimizations).

2.6.7. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \full_adder..

2.6.8. Executing OPT_EXPR pass (perform const folding).
Optimizing module full_adder.

2.6.9. Finished fast OPT passes. (There is nothing left to do.)

2.7. Executing FSM pass (extract and optimize FSM).

2.7.1. Executing FSM_DETECT pass (finding FSMs in design).

2.7.2. Executing FSM_EXTRACT pass (extracting FSM from design).

2.7.3. Executing FSM_OPT pass (simple optimizations of FSMs).

2.7.4. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \full_adder..

2.7.5. Executing FSM_OPT pass (simple optimizations of FSMs).

2.7.6. Executing FSM_RECODE pass (re-assigning FSM state encoding).

2.7.7. Executing FSM_INFO pass (dumping all available information on FSM cells).

2.7.8. Executing FSM_MAP pass (mapping FSMs to basic logic).

2.8. Executing OPT pass (performing simple optimizations).

2.8.1. Executing OPT_EXPR pass (perform const folding).
Optimizing module full_adder.

2.8.2. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\full_adder'.
Computing hashes of 7 cells of `\full_adder'.
Finding duplicate cells in `\full_adder'.
Removed a total of 0 cells.

2.8.3. Executing OPT_MUXTREE pass (detect dead branches in mux trees).
Running muxtree optimizer on module \full_adder..
  Creating internal representation of mux trees.
  No muxes found in this module.
Removed 0 multiplexer ports.

2.8.4. Executing OPT_REDUCE pass (consolidate $*mux and $reduce_* inputs).
  Optimizing cells in module \full_adder.
Performed a total of 0 changes.

2.8.5. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\full_adder'.
Computing hashes of 7 cells of `\full_adder'.
Finding duplicate cells in `\full_adder'.
Removed a total of 0 cells.

2.8.6. Executing OPT_DFF pass (perform DFF optimizations).

2.8.7. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \full_adder..

2.8.8. Executing OPT_EXPR pass (perform const folding).
Optimizing module full_adder.

2.8.9. Finished fast OPT passes. (There is nothing left to do.)

2.9. Executing WREDUCE pass (reducing word size of cells).

2.10. Executing PEEPOPT pass (run peephole optimizers).

2.11. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \full_adder..

2.12. Executing ALUMACC pass (create $alu and $macc cells).
Extracting $alu and $macc cells in module full_adder:
  created 0 $alu and 0 $macc cells.

2.13. Executing SHARE pass (SAT-based resource sharing).

2.14. Executing OPT pass (performing simple optimizations).

2.14.1. Executing OPT_EXPR pass (perform const folding).
Optimizing module full_adder.

2.14.2. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\full_adder'.
Computing hashes of 7 cells of `\full_adder'.
Finding duplicate cells in `\full_adder'.
Removed a total of 0 cells.

2.14.3. Executing OPT_MUXTREE pass (detect dead branches in mux trees).
Running muxtree optimizer on module \full_adder..
  Creating internal representation of mux trees.
  No muxes found in this module.
Removed 0 multiplexer ports.

2.14.4. Executing OPT_REDUCE pass (consolidate $*mux and $reduce_* inputs).
  Optimizing cells in module \full_adder.
Performed a total of 0 changes.

2.14.5. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\full_adder'.
Computing hashes of 7 cells of `\full_adder'.
Finding duplicate cells in `\full_adder'.
Removed a total of 0 cells.

2.14.6. Executing OPT_DFF pass (perform DFF optimizations).

2.14.7. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \full_adder..

2.14.8. Executing OPT_EXPR pass (perform const folding).
Optimizing module full_adder.

2.14.9. Finished fast OPT passes. (There is nothing left to do.)

2.15. Executing MEMORY pass.

2.15.1. Executing OPT_MEM pass (optimize memories).
Performed a total of 0 transformations.

2.15.2. Executing OPT_MEM_PRIORITY pass (removing unnecessary memory write priority relations).
Performed a total of 0 transformations.

2.15.3. Executing OPT_MEM_FEEDBACK pass (finding memory read-to-write feedback paths).

2.15.4. Executing MEMORY_BMUX2ROM pass (converting muxes to ROMs).

2.15.5. Executing MEMORY_DFF pass (merging $dff cells to $memrd).

2.15.6. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \full_adder..

2.15.7. Executing MEMORY_SHARE pass (consolidating $memrd/$memwr cells).

2.15.8. Executing OPT_MEM_WIDEN pass (optimize memories where all ports are wide).
Performed a total of 0 transformations.

2.15.9. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \full_adder..

2.15.10. Executing MEMORY_COLLECT pass (generating $mem cells).

2.16. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \full_adder..

2.17. Executing OPT pass (performing simple optimizations).

2.17.1. Executing OPT_EXPR pass (perform const folding).
Optimizing module full_adder.

2.17.2. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\full_adder'.
Computing hashes of 7 cells of `\full_adder'.
Finding duplicate cells in `\full_adder'.
Removed a total of 0 cells.

2.17.3. Executing OPT_DFF pass (perform DFF optimizations).

2.17.4. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \full_adder..

2.17.5. Finished fast OPT passes.

2.18. Executing MEMORY_MAP pass (converting memories to logic and flip-flops).

2.19. Executing OPT pass (performing simple optimizations).

2.19.1. Executing OPT_EXPR pass (perform const folding).
Optimizing module full_adder.

2.19.2. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\full_adder'.
Computing hashes of 7 cells of `\full_adder'.
Finding duplicate cells in `\full_adder'.
Removed a total of 0 cells.

2.19.3. Executing OPT_MUXTREE pass (detect dead branches in mux trees).
Running muxtree optimizer on module \full_adder..
  Creating internal representation of mux trees.
  No muxes found in this module.
Removed 0 multiplexer ports.

2.19.4. Executing OPT_REDUCE pass (consolidate $*mux and $reduce_* inputs).
  Optimizing cells in module \full_adder.
Performed a total of 0 changes.

2.19.5. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\full_adder'.
Computing hashes of 7 cells of `\full_adder'.
Finding duplicate cells in `\full_adder'.
Removed a total of 0 cells.

2.19.6. Executing OPT_SHARE pass.

2.19.7. Executing OPT_DFF pass (perform DFF optimizations).

2.19.8. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \full_adder..

2.19.9. Executing OPT_EXPR pass (perform const folding).
Optimizing module full_adder.

2.19.10. Finished fast OPT passes. (There is nothing left to do.)

2.20. Executing TECHMAP pass (map to technology primitives).

2.20.1. Executing Verilog-2005 frontend: /usr/bin/../share/yosys/techmap.v
Parsing Verilog input from `/usr/bin/../share/yosys/techmap.v' to AST representation.
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

2.20.2. Continuing TECHMAP pass.
Using extmapper simplemap for cells of type $xor.
Using extmapper simplemap for cells of type $and.
Using extmapper simplemap for cells of type $or.
No more expansions possible.
<suppressed ~84 debug messages>

2.21. Executing OPT pass (performing simple optimizations).

2.21.1. Executing OPT_EXPR pass (perform const folding).
Optimizing module full_adder.

2.21.2. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\full_adder'.
Computing hashes of 7 cells of `\full_adder'.
Finding duplicate cells in `\full_adder'.
Removed a total of 0 cells.

2.21.3. Executing OPT_DFF pass (perform DFF optimizations).

2.21.4. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \full_adder..

2.21.5. Finished fast OPT passes.

2.22. Executing ABC pass (technology mapping using ABC).

2.22.1. Extracting gate netlist of module `\full_adder' to `<abc-temp-dir>/input.blif'..

2.22.1.1. Executed ABC.
Extracted 7 gates and 10 wires to a netlist network with 3 inputs and 2 outputs.
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

2.22.1.2. Re-integrating ABC results.
ABC RESULTS:               AND cells:        1
ABC RESULTS:               MUX cells:        1
ABC RESULTS:              NAND cells:        3
ABC RESULTS:                OR cells:        2
ABC RESULTS:        internal signals:        5
ABC RESULTS:           input signals:        3
ABC RESULTS:          output signals:        2
Removing temp directory.
Removing global temp directory.

2.23. Executing OPT pass (performing simple optimizations).

2.23.1. Executing OPT_EXPR pass (perform const folding).
Optimizing module full_adder.

2.23.2. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\full_adder'.
Computing hashes of 7 cells of `\full_adder'.
Finding duplicate cells in `\full_adder'.
Removed a total of 0 cells.

2.23.3. Executing OPT_DFF pass (perform DFF optimizations).

2.23.4. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \full_adder..
Removed 0 unused cells and 10 unused wires.
<suppressed ~1 debug messages>

2.23.5. Finished fast OPT passes.

2.24. Executing HIERARCHY pass (managing design hierarchy).
Attribute `top' found on module `full_adder'. Setting top module to full_adder.

2.24.1. Analyzing design hierarchy..
Top module:  \full_adder

2.24.2. Analyzing design hierarchy..
Top module:  \full_adder
Removed 0 unused modules.

2.25. Printing statistics.

=== full_adder ===

        +----------Local Count, excluding submodules.
        | 
       10 wires
       10 wire bits
        5 public wires
        5 public wire bits
        5 ports
        5 port bits
        7 cells
        1   $_AND_
        1   $_MUX_
        3   $_NAND_
        2   $_OR_

2.26. Executing CHECK pass (checking for obvious problems).
Checking module full_adder...
Found and reported 0 problems.

3. Executing DFFLIBMAP pass (mapping DFF cells to sequential cells from liberty file).
  final dff cell mappings:
    unmapped dff cell: $_DFF_N_
    unmapped dff cell: $_DFF_P_
    unmapped dff cell: $_DFF_NN0_
    unmapped dff cell: $_DFF_NN1_
    unmapped dff cell: $_DFF_NP0_
    unmapped dff cell: $_DFF_NP1_
    unmapped dff cell: $_DFF_PN0_
    unmapped dff cell: $_DFF_PN1_
    unmapped dff cell: $_DFF_PP0_
    unmapped dff cell: $_DFF_PP1_
    unmapped dff cell: $_DFFE_NN_
    unmapped dff cell: $_DFFE_NP_
    unmapped dff cell: $_DFFE_PN_
    unmapped dff cell: $_DFFE_PP_
    unmapped dff cell: $_DFFSR_NNN_
    unmapped dff cell: $_DFFSR_NNP_
    unmapped dff cell: $_DFFSR_NPN_
    unmapped dff cell: $_DFFSR_NPP_
    unmapped dff cell: $_DFFSR_PNN_
    unmapped dff cell: $_DFFSR_PNP_
    unmapped dff cell: $_DFFSR_PPN_
    unmapped dff cell: $_DFFSR_PPP_

3.1. Executing DFFLEGALIZE pass (convert FFs to types supported by the target).
Mapping DFF cells in module `\full_adder':

4. Executing ABC pass (technology mapping using ABC).

4.1. Extracting gate netlist of module `\full_adder' to `<abc-temp-dir>/input.blif'..
Warning: ABC: failed to rename /tmp/yosys-liberty-scl-cache/yosys_merged_c68886a8.scl.tmp to /tmp/yosys-liberty-scl-cache/yosys_merged_c68886a8.scl, falling back to liberty format
Warning: ABC: Merged scl conversion failed, using liberty format

4.1.1. Executed ABC.
Extracted 7 gates and 10 wires to a netlist network with 3 inputs and 2 outputs.
Running ABC script: <abc-temp-dir>/abc.script
ABC: ======== ABC command line "source <abc-temp-dir>/abc.script"
ABC: + read_blif <abc-temp-dir>/input.blif 
ABC: + read_lib -w /home/adi/repo/BTP-Sem7/26-08-26/NangateOpenCellLibrary_typical_only_NAND2_X3.lib 
ABC: Library with only 1 cell classes cannot be used.
ABC: Parsing finished successfully.  Parsing time =     0.00 sec
ABC: Library "NangateOpenCellLibrary" from "/home/adi/repo/BTP-Sem7/26-08-26/NangateOpenCellLibrary_typical_only_NAND2_X3.lib" has 1 cells (0 skipped: 0 seq; 0 tri-state; 0 no func; 0 dont_use; 0 with 2 outputs; 0 with 3+ outputs).  Time =     0.00 sec
ABC: Memory =    0.04 MB. Time =     0.00 sec
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
ABC: ** cmd error: aborting 'source <abc-temp-dir>/abc.script'
ABC: Error: Current library is not available.
ERROR: Can't open ABC output file `/tmp/yosys-abc-fvpLl3/output.blif'.
```
