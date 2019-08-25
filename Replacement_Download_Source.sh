#!/bin/sh
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cp /etc/apt/sources.list.d/raspi.list /etc/apt/sources.list.d/raspi.list.bak

echo 'deb http://mirrors.ustc.edu.cn/raspbian/raspbian/ stretch main contrib non-free rpi' > /etc/apt/sources.list
echo 'deb http://mirrors.ustc.edu.cn/archive.raspberrypi.org/debian/ stretch main ui' > /etc/apt/sources.list.d/raspi.list

sudo apt-get update
sudo apt-get upgrade

echo 'Program Completed!'