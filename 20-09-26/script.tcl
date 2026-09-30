read_verilog test.v
hierarchy -top test

proc
opt

write_rtlil log/01_proc.rtlil

opt
write_rtlil log/02_opt.rtlil

techmap
write_rtlil log/03_techmap.rtlil

opt
write_rtlil log/04_opt2.rtlil

abc -liberty NangateOpenCellLibrary_typical.lib -constr constraints.sdc
write_rtlil log/05_abc.rtlil
