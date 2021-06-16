# mobilebasic

`Mobile_BASIC_4.12.apk` - the latest version of MobileBASIC application. License activation is not needed. https://4pda.ru/forum/index.php?s=&showtopic=304725&view=findpost&p=54246563

`Examples` - directory with the official examples.

`math`, `netjson`, `picture` - my libraries:
 - `math/maplib.bas` - library with math function map() and constraint(), like in Arduino C++ (Wiring C++).
 - `netjson/json.bas` - library for parsing JSON.
 - `picture/drawbitmap.bas` - library for reading and drawing BMP.
 - `example.bas` - program with example using of functions from these libraries.

`test` - my test programs:
 - `loading.bas` - a loading circle with percents and button OK (click it to exit).
 - `accel.bas` - reading accelerometer values and changing the position of a white square (like a car in a game "Blocky Highway").
 - `variant.bas` - can I assign VARIANT with DOUBLE-data to an INTEGER-variable? Yes. Execute this program to make sure.
 - `/geopos/main.bas` - GPS testing.

`cars` - an interesting **working** game on MobileBASIC! (I did it :slightly_smiling_face: )  
Based on my accelerometer test (`test/accel.bas`). The game can detect screen rotation automatically.

`temp` - a randomizer, that can be used instead of wireless thermometers... (Do you remember that joke?)
