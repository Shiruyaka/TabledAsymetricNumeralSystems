onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib start_block_opt

do {wave.do}

view wave
view structure
view signals

do {start_block.udo}

run -all

quit -force
