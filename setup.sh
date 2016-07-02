#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git

sudo curl -sL https://github.com/djl/vcprompt/raw/master/bin/vcprompt > /usr/bin/vcprompt
sudo chmod 755 /usr/bin/vcprompt

cp -av .bash_profile ~/
source ~/.bash_profile
