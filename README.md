# PygmyRobot
A tiny robot using PygmyForth.

![pygmy](https://github.com/photoplane/PygmyRobotTof/assets/31778273/2e7f9684-4f8f-4a17-907e-76c8bf4ab14a)



https://github.com/photoplane/PygmyRobotTof/assets/31778273/0b6892b9-5dae-40a4-bf02-31c8f226ba6b

## Step by step

First: 
download and install Pygmy Forth,
http://pygmy.utoh.org

Do i2cdetect -y 1 to know if I2C is open

install the module for the vl53l1x
sudo pip3 install sparkfun-qwiic-vl53l1x

Things to do before going to Pygmy Forth

python3 VL53L1X_Rasp.py 

to check the sensor

Download the PygmyRobotTof-main.zip file

pi@raspberrypi:~ $ unzip PygmyRobotTof-main.zip 

pi@raspberrypi:~ $ cd PygmyRobotTof-main/

pi@raspberrypi:~/PygmyRobotTof-main $ python3 VL53L1X_Rasp.py 

Inialisation du telemetre VL53L1X.

pi@raspberrypi:~/PygmyRobotTof-main $ pygmy.sh RobotTof.fth

pi@raspberrypi:~/PygmyRobotTof-main $ pygmy.sh RobotTof.fth

Pygmy Forth version 17.10

Welcome to Pygmy Forth 

About to load RobotTof.fth
           
![robot](https://github.com/photoplane/PygmyRobotTof/assets/31778273/db7b0085-cf49-4101-9f9d-b2c8e7ade6ba)

Bonjour tout le monde  

CODE ( . CR " + 1+ - * / DROP DUP SWAP OVER .S .RS R@ PUSH POP 2DUP 2DROP .H EMIT COMPILER FORTH WORDS 

COUNT TYPE BL WORD : BLOCK LOAD BYE OPEN VARIABLE ABORT QUIT @ ! ? TRUE FALSE AND OR NOT XOR ." THRU = > 

< <= 0= HI robot R >R R> MS X PAGE TOFFACE TOFGL TOFDW TOF SERVOINPUT TURNG TURND MOTORAV MOTORSTOP 

MOTORHALT CAPF CAPG CAPD >CAPF >CAPG >CAPD CAPF> CAPG> CAPD> GO SCAN TOP 








