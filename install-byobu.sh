#!/bin/bash

# remove yourself
rm $0

# install byobu and add (might cause duplicates) it to the list of shells
sudo apt install -y byobu && which byobu | sudo tee -a /etc/shells

echo
echo '"byobu" is now on the path'
