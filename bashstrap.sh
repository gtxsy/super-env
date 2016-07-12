#!/bin/bash

HOME_DIR=$HOME
BACKUP_DIR=../backup
SRC="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function UpdateUbuntu {
  sudo apt-get update
  sudo apt-get upgrade
}

function InstallTools {
  # Install Git
  sudo apt-get install git
  # Install vcprompt
  sudo curl -sL https://github.com/djl/vcprompt/raw/master/bin/vcprompt > /usr/bin/vcprompt
  sudo chmod 755 /usr/bin/vcprompt
}

function SetupBash {
  # Remove original .bashrc from $HOME
  rm "$HOME_DIR/.bashrc"
  # Install new .bashrc from src
  cp -av "src/.bashrc" "$HOME_DIR/"
  # Add backup profile to end of .bashrc
  cat "$BACKUP_DIR/.bashrc" >> "$HOME_DIR/.bashrc"
  # Add sources to bashrc
  echo "export PATH=\$PATH:$SRC/lib:$SRC/usr" >> "$HOME_DIR/.bashrc"
  echo "source bash_profile.sh" >> "$HOME_DIR/.bashrc"
  # Refresh window
  exec bash
}

SetupBash
