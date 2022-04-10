
The 2 .bat file attached in this repo are 
-----------------------------------------------------
Made By sanjay0302
-------------------------------
1. true wireless.bat
2. partially wireless.bat

-------------------------------------------------------
Why u need this .bat files
----------------------
To screen cast wirelessly using scrcpy u will need to enter repeated data again and again,

i.e u have to enconter below mentioned commands to conect wirelessly
  1. adb pair 23.23.12.3:50500   #for example
  2. enter paring code : 40505   #for example
  3. adb tcpip 5555
  4. enter ip address : 23.23.12.3
  5. then start the scrcpy

*So this .bat files will only accept the data from user and the command will use this data to run the scrcpy screen casting

--------------------------------------------------


*Where [true wireless.bat] dont need USB cable to start the scrcpy cmd Which works on wireless debugging feature

*And [partially wireless.bat] helps to connect both wirelessly and wired connections to start scrcpy cmd but for initial setup u need to have USB cable until cmd promt displays you to remove usb cable


NOTE:---->
u need to set the scrcpy folder location to user path variable in Environment variable
The scrcpy folder is Copied from official scrcpy repo

------------------------------------------------------------
![image](https://user-images.githubusercontent.com/90672297/162629604-51bafd0f-2a88-4ff4-9266-4457e340d07f.png)
---------------------------------------------------------------
![image](https://user-images.githubusercontent.com/90672297/162629732-93126d2c-d7ed-401c-86e3-edfc5f255eab.png)
------------------------------------------------------------

