#!/bin/bash
set -e
#
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

echo "#########################################"
echo "j4-dmenu-desktop"
echo "#########################################"

#https://github.com/enkore/j4-dmenu-desktop

rm -rf /tmp/j4-dmenu-desktop
git clone https://github.com/enkore/j4-dmenu-desktop.git /tmp/j4-dmenu-desktop
cd /tmp/j4-dmenu-desktop
sudo apt-get install cmake -y
cmake . &&  make  &&  sudo make install
cd ..
rm -rf j4-dmenu-desktop

echo
echo
echo "#########################################"
echo "j4-dmenu-desktop installed"
echo "#########################################"
sleep 1