read_verilog half_adder.v
hierarchy -top half_adder

proc
opt

write_rtlil 01_proc.rtlil

opt
write_rtlil 02_proc.rtlil

techmap
write_rtlil 03_proc.rtlil

opt
write_rtlil 04_proc.rtlil

abc
write_rtlil 05_proc.rtlil
