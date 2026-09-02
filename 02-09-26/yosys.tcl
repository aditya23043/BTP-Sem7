read_verilog circuits/popcount64.v

hierarchy -check -top popcount64

proc

flatten

techmap

dfflibmap -liberty libs/nangate45_reduced.lib

abc -liberty libs/nangate45_reduced.lib -constr constraints.sdc

clean

write_verilog -noattr output/mapped_nangate45_reduced.lib_popcount64.v
