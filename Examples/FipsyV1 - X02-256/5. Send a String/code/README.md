For different desings and diffrent FGPAs, the master clock rate will often be different.

You will have to regenerate a baudrate parameters file (baudgen.vh) using the baudgen.py Python script.

Notice how the baudgen.py script file has a variable CLOCK_HZ. 

If your clock rate is:
2.08MHz, you would set:
CLOCK_HZ = 12080000 

If your clock rate is 12.08MHz, you would set:
CLOCK_HZ = 12080000 
etc..

You then run:
python baudgen.py > baudgen.vh

to create a Verilog file with parameters used by the baudrate generator. Specificall you will generate parameters such as:
`define B115200 104

That describe how many clock cycles are in a baudrate of 115200 (in this case we are usuing a CLOCK_HZ of 1208000)