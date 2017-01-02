#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

cd Step_1

cd 1-i3-from-repo

sh install_i3_version_4.11_from_repositories.sh

cd ..

cd 2-i3_with_gaps

sh 0_install_dependencies_for_both_scripts.sh
sh 1_install_xcb-util-xrm.sh
sh 2_install_i3_gaps_next.sh

cd ..

cd ..

cd Step_2

cd j4_dmenu_desktop

sh j4-dmenu-desktop_install.sh

cd ..

cd ..

cd Step_3

sh install-extra-software.sh

cd ..

cd Step_4

mkdir ~/.config/i3

cp -avr i3 ~/.config

cd ..

cd Step_5

cd ..

cd Step_6

cd ..


cd Step_8

cd ..

cd Step_9

cd ..

cd Step_10

cd ..
