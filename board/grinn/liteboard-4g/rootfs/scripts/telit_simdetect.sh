#!/bin/sh
PORT="/dev/ttyUSB2"
TO=1000
echo -ne "AT#SIMDET=0\r" | microcom -t ${TO} ${PORT}
sleep 5
echo -ne "AT#SIMDET=1\r" | microcom -t ${TO} ${PORT}
