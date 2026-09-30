read_verilog test.v
hierarchy -top test

proc
opt
techmap
opt

abc -liberty NangateOpenCellLibrary_typical.lib -nocleanup -showtmp

write_verilog mapped.v
