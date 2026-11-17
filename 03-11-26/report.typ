#show raw.where(block: true): set text(size: 0.90em, font:
"Maple Mono")
#show raw.where(block: true): block.with(
  fill: luma(248),      // Sets the grey background color
  inset: 5pt,          // Adds padding inside the block
  radius: 3pt,          // Rounds the border corners
)
#show block: set block(inset: 10pt)

Wed Nov  4 01:15:54 IST 2026

= Analysing BLIF files

y=ab+bc+ca

```sh
.model netlist
.inputs ys__n0 ys__n1 ys__n3
.outputs ys__n7
# ys__n0     \a
# ys__n1     \b
# ys__n2     $and$test.v:6$1_Y
# ys__n3     \c
# ys__n4     $and$test.v:6$2_Y
# ys__n5     $or$test.v:6$3_Y
# ys__n6     $and$test.v:6$4_Y
# ys__n7     \y
.names ys__n0 ys__n1 ys__n2
11 1
.names ys__n1 ys__n3 ys__n4
11 1
.names ys__n2 ys__n4 ys__n5
-1 1
1- 1
.names ys__n3 ys__n0 ys__n6
11 1
.names ys__n5 ys__n6 ys__n7
-1 1
1- 1
.end
```

y=bc+ca+ab
and test -> test2 (verilog file name and top module)

```sh
.model netlist
.inputs ys__n0 ys__n1 ys__n3
.outputs ys__n7
# ys__n0     \b
# ys__n1     \c
# ys__n2     $and$test2.v:6$1_Y
# ys__n3     \a
# ys__n4     $and$test2.v:6$2_Y
# ys__n5     $or$test2.v:6$3_Y
# ys__n6     $and$test2.v:6$4_Y
# ys__n7     \y
.names ys__n0 ys__n1 ys__n2
11 1
.names ys__n1 ys__n3 ys__n4
11 1
.names ys__n2 ys__n4 ys__n5
-1 1
1- 1
.names ys__n3 ys__n0 ys__n6
11 1
.names ys__n5 ys__n6 ys__n7
-1 1
1- 1
.end
```

#image("Screenshot 2026-11-04 at 1.25.31 AM.png")

currently we need to try to allow same cache block for different variable ordering and also different module naming

note that both return same output.blif

#image("Screenshot 2026-11-04 at 1.29.41 AM.png")

let us try to remove comments and then run ABC

#pagebreak()

commented the following lines in `passes/techmap/abc.cc` in `RunAbcState::run()`:

```c
for (auto &si : signal_list)
  fprintf(f, "# ys__n%-5d %s\n", si.id, si.bit_str.c_str());
```

- yosys auto removes comments and gaps in blif
- yosys removes unused modules in RTLIL step
- yosys gives error in case of same module name defined twice
- tmp caching dir exists in current working directory

currently it does not handle different constraints differently
