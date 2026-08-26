set LIB NangateOpenCellLibrary_typical_nand_only_x3.lib

yosys read_verilog full_adder.v

yosys hierarchy -check -top full_adder

yosys proc

yosys techmap

yosys dfflibmap -liberty $LIB

yosys abc -liberty $LIB

yosys clean

yosys write_verilog -noattr fa_nand2x3.v
