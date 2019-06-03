#!/bin/bash

HOME_DIR=$HOME
SRC="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function InstallTools {
  mkdir -vp "$HOME_DIR/.bin"
  cp -av "$SRC/src/vcprompt" "$HOME_DIR/.bin/vcprompt"
  sudo chmod 755 "$HOME_DIR/.bin/vcprompt"
}

function SetupBash {
  # Remove original .bashrc from $HOME
  rm "$HOME_DIR/.bashrc"
  # Install new .bashrc from src
  cp -av "src/.bashrc" "$HOME_DIR/"
  # Add sources to bashrc
  echo "export PATH=\$PATH:$SRC/lib:$SRC/usr:~/.bin" >> "$HOME_DIR/.bashrc"
  echo "source bash_profile.sh" >> "$HOME_DIR/.bashrc"
}

SetupBash
# Refresh window
exec bash
