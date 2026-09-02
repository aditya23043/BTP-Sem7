# Nangate45 SCL time_unit is ns, capacitance is fF -- match those units
create_clock -name virtual_clk -period 3.0
set_input_delay -clock virtual_clk 0.0 [all_inputs]
set_output_delay -clock virtual_clk 0.0 [all_outputs]

# Realistic loading -- without this, outputs are assumed to drive nothing
set_load 20.0 [all_outputs]

# Realistic driving strength on inputs -- without this, inputs are ideal
set_driving_cell -lib_cell INV_X1 [all_inputs]
