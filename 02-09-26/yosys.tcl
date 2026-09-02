read_verilog circuits/alu32.v

hierarchy -check -top alu32

proc

flatten

techmap

dfflibmap -liberty libs/modified.lib

abc -liberty libs/modified.lib -constr constraints.sdc

clean

write_verilog -noattr output_fa.v
