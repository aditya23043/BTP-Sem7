read_verilog full_adder.v
synth -top full_adder
dfflibmap -liberty NangateOpenCellLibrary_typical_only_NAND2_X3.lib
abc -liberty NangateOpenCellLibrary_typical_only_NAND2_X3.lib
write_verilog -noattr fa_nand_mapped.v
