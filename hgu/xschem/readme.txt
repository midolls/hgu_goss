(I created a Docker to install xschem and did the work.)
After modifying the paths of the symbols used in the dff and 4bit_sar_logic in the zip file, you can reproduce the issue of xschem forcibly terminating when clicking on any block or component in tb_4bit_sar_adc.sch.

1. Modify the paths of the symbols used in the "dff_4.sch" and "4bit_sar_logic.sch" in the zip file.
2. Enter the "tb_4bit_sar_adc.sch in xschem."
3. Attempt to click on any block or component, which triggers xschem to forcibly terminate.

I'm using xschem version 3.4.0.