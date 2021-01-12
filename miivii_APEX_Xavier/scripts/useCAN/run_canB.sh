#!/usr/bin/env bash


sudo modprobe can

sudo modprobe can_raw

sudo modprobe mttcan

sudo ip link set can1 type can bitrate 500000 berr-reporting on loopback off

sudo ip link set up can1

#sudo cansend can1 123#abcdabcd

sudo ip -details -statistics link show can1

sudo candump can1

#sudo ifconfig can1 down

exit 0
