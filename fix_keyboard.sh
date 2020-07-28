#!/bin/bash

TARGET=/usr/share/X11/xkb/symbols/pc

sudo sed -i "s/key <LCTL>.*/key <LCTL> {        [ Super_L               ]       };/g" $TARGET
sudo sed -i "s/key <RCTL>.*/key <RCTL> {        [ Super_R               ]       };/g" $TARGET
sudo sed -i "s/key <LWIN>.*/key <LWIN> {        [ Control_L             ]       };/g" $TARGET
sudo sed -i "s/key <RWIN>.*/key <RWIN> {        [ Control_R             ]       };/g" $TARGET

sudo rm -rf /var/lib/xkb/*
