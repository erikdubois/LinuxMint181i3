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

sh install_i3_version_4.11_from_repositories-v1.sh

cd ..

cd 2-i3_with_gaps

sh 0_install_dependencies_for_both_scripts-v1.sh
sh 1_install_xcb-util-xrm-v1.sh
sh 2_install_i3_gaps_next-v1.sh

cd ..

cd ..

cd Step_2

cd j4_dmenu_desktop

sh j4-dmenu-desktop_install-v1.sh

cd ..

cd ..

cd Step_3

sh install-extra-software-v1.sh

cd ..

cd Step_4

sh copy-i3-files-to-config-i3-folder-v1.sh
