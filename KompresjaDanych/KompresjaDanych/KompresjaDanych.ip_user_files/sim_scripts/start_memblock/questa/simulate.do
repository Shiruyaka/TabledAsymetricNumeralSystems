onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib start_memblock_opt

do {wave.do}

view wave
view structure
view signals

do {start_memblock.udo}

run -all

quit -force
