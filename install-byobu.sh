#!/bin/bash

# remove yourself
rm $0

# install xclip for copying into the clipboard
sudo apt-get install -yqqq xclip

# install byobu and add (might cause duplicates) it to the list of shells
sudo apt install -y byobu && which byobu | sudo tee -a /etc/shells

# fix the reuse session bug
mkdir -p ~/.byobu
cd ~/.byobu
touch .reuse-session

echo
echo '"byobu" is now on the path'
