#!/bin/bash

TARGET=/usr/bin/unc

sudo cp unc $TARGET
sudo chown root:root $TARGET
sudo chmod 755 $TARGET
