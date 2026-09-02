read_verilog circuits/full_adder.v

hierarchy -check -top full_adder

proc

flatten

techmap

dfflibmap -liberty nangate45_slow_arnav.lib

abc -liberty nangate45_slow_arnav.lib -constr constraints.sdc

clean

write_verilog -noattr fa_mapped.v
stat -liberty nangate45_slow_arnav
ltp
