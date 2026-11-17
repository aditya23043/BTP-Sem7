TEST ?= 1

yosys: script.tcl
	sed -i '' 's/test[0-9]/test$(TEST)/g' script.tcl
	../../yosys/build/yosys -s script.tcl

clean:
	rm -rf _tmp_yosys-abc-* .yosys_caching_dir
