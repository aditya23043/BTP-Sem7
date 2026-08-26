# read_verilog full_adder.v

# hierarchy -top full_adder
# proc; opt; techmap; opt

# abc -g NAND

# hilomap -hicell NAND2_X3 Y -locell NAND2_X3 Y
# abc -liberty NangateOpenCellLibrary_typical_only_NAND2_X3.lib -g NAND

# write_verilog -noattr fa_nand_mapped.v

read_verilog full_adder.v

# Lower logic to basic internal primitives
hierarchy -top full_adder
proc; opt; techmap; opt

# Force ABC to synthesize logic strictly into 2-input NAND primitives ($_NAND_$)
abc -g NAND

# Map internal generic $_NAND_$ primitives directly to NAND2_X3 instantiations
techmap -map nand_map.v

# Remove unused wires and format instance names cleanly
clean
rename -enumerate -pattern cell_%d t:NAND2_X3

write_verilog -noattr fa_nand_mapped.v
