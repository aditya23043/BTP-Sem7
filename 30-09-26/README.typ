#text(fill: gray)[> BTP Meet at 3PM (online)]

#set block(inset: 5pt)
#show raw.where(block: true): block.with(
  fill: luma(248),
  inset: 10pt,
  radius: 3pt,
)
#show raw.where(block: true): set text(size: 0.65em, font: "Input Mono")

= Problem Statement

- Yosys computes timing information and which cell is optimal at a specific node in a boolean logic
  with given constraints during runtime.
- We propose a solution in which we store the options the tool generates along with the suitable
  information (like worst case arrival time and area flow) so that we can speed up the logic
  synthesis process by retrieving information in O(1) time for future runs

= Process for POC

- gitdiagram

= Passes inside ABC

Abc_CommandAbc9Nf() -> handles &nf
Nf_ManPerformMapping() -> resolves timing at each node
Nf_ManPerformMappingInt() -> creates truth tables, computes cuts, runs the main iteration loop
Nf_ManComputeMapping() -> for each iteration, parse the AIG
Nf_ManCutMatch() -> for each node in the AIG, reset the Dn,Dp,An,Ap values, loop over every cut
Nf_ManCutMatchOne() -> for each cut, try all candidates matching that cut's truth table
Vec_IntForEachEntryDouble loop inside which we have the print stmts
