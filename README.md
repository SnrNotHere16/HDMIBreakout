# HDMIBreakout
A ZYNQ 7020 project that plays breakout via HDMI. The programming logic communicates with the 
processing logic. 

<img src = "HDMIZYBOMEDIA/HDMIZYBOImage1.JPG" width= "500" >
<img src = "HDMIZYBOMEDIA/HDMIZYBOImage3.JPG" width= "500" > 
<img src = "HDMIZYBOMEDIA/HDMIZYBOImage5.JPG" width= "500" >
<img src = "HDMIZYBOMEDIA/HDMIZYBOImageA.JPG" width= "500" >

# HDMIBreakout Supplies 
1. ZYBO ZYNQ 7020 <br /> 
2. Sanwa Top Handle Arcade Joystick <br />
3. Breadboard <br />
4. Wire <br />
5. 5 10K resistors <br />
6. 3 16mm pushbuttons <br />
7. HDMI cable <br />
<img src = "HDMIZYBOMEDIA/HDMIZYBOImage7.JPG" width= "500" >

# HDMIBreakout Flowchart

<img src = "HDMIZYBOMEDIA/HDMIBreakoutFlowchart.jpg" width= "500" >

# HDMIBreakout game flow 
1. Title Screen 
<img src = "HDMIZYBOMEDIA/HDMIZYBOImage3.JPG" width= "500" >
2. Game in Session 
<img src = "HDMIZYBOMEDIA/HDMIZYBOImage5.JPG" width= "500" > 
3. Game Over (Name not entered)
<img src = "HDMIZYBOMEDIA/HDMIZYBOImageB.JPG" width= "500" > 
4. SDK Terminal during Game Over (Interrupt activated)
<img src = "HDMIZYBOMEDIA/ZYBOBreakoutSS2.JPG" width= "500" > 
5. SDK Terminal during Game Over (Name Written, exit out of handler)
<img src = "HDMIZYBOMEDIA/ZYBOBreakoutSS3.JPG" width= "500" > 
6. Game Over (Name entered)
<img src = "HDMIZYBOMEDIA/HDMIZYBOImageA.JPG" width= "500" > 
7. SDK terminal Game is reset (Reset is entered, Interrupt activated)
<img src = "HDMIZYBOMEDIA/ZYBOBreakoutSS4.JPG" width= "500" > 

# HDMIBreakout Block Design 

<img src = "HDMIZYBOMEDIA/HDMIZYBOBreakoutBlockDesign.JPG" width= "500" >
Note: Block divid_generator_0 was taken from https://numato.com/kb/hdmi-output-example-design-using-vivado-for-mimas-a7-fpga-development-board/ <br />
The original hdmi code is provided in folder mimasA7_hdmi_out https://github.com/SnrNotHere16/HDMIBreakout/tree/main/mimasA7_hdmi_out <br />
The code was modified to allow the game's vga input to display the game. 

# HDMIBreakout PinMapping 
<img src = "HDMIZYBOMEDIA/HDMIBreakoutSchematic.jpg" width= "500" >

# HDMIBreakout Video 
https://www.youtube.com/watch?v=NCKsvmawYa8&feature=youtu.be
