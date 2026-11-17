read_verilog test6.v
hierarchy -top test6

proc
flatten
opt
techmap
opt

abc -liberty NangateOpenCellLibrary_typical.lib -nocleanup -showtmp

write_verilog mapped.v
