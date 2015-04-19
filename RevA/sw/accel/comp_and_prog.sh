make
sudo avrdude -c jtag3isp -p m168p -e -U flash:w:accel.hex -F
