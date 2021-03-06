#!/bin/bash
#
# Used to 'provision' the vagrant machine. Basically is run after the machine
# is created so you don't have to worry about installing everything yourself.

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

# RobotFramework
sudo apt-get update
sudo apt-get install -y python-pip git
sudo pip install robotframework
sudo pip install robotframework-selenium2library
sudo apt-get install -y firefox

#  vnc4server for virtual display
sudo apt-get install -y vnc4server


# git clone
git clone https://github.com/IoTitude/Tests.git   test

# vncserver setup
vncserver :89 -geometry 1920x1200 -depth 24

export DISPLAY=:89
