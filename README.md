# Installing i3 on Linux Mint 18.1 Cinnamon, Xfce, Mate or Debian

**Remember the distro dependent applications are at the bottom of the config file like file managers.**

I3 = [improved tiling windows manager](https://i3wm.org/)

We start from an up-to-date Linux Mint 18.1 Cinnamon as described on 
http://erikdubois.be.

As described here at [this github](https://github.com/erikdubois/Ultimate-Linux-Mint-18-Cinnamon) for Linux Mint 18 Cinnamon or [this github](https://github.com/erikdubois/Ultimate-Linux-Mint-18.1-Cinnamon) for Linux Mint 18.1 Cinnamon.

or described in [this youtube movie](https://www.youtube.com/watch?v=5db66Dt0j4E) for Linux Mint 18

or described in this article at http://erikdubois.be/overview-of-linux-mint-18-1-cinnamon/ for Linux Mint 18.1.

When you follow these movies/articles and the installation scripts on github, you will end up with all the needed icons and applications you will see me use in the I3 tutorials.

Linux Mint 18

![Screenshots](http://i.imgur.com/QSggN1G.jpg)

Linux Mint 18.1 

![Screenshots](http://i.imgur.com/mNenIjf.jpg)

We will be using the following applications in the I3 tutorials :

+ variety

After some tinkering (choosing icons/themes/cursors) you will have a similar result.

![Screenshots](http://i.imgur.com/CRKtVRV.jpg)

#Prerequisites

First install Linux Mint 18.1 Cinnamon like you always would.

Then update.

Download and use proprietary drivers if needed.
Broadcom, nvidia, ati and the likes.

Upgrade your kernel if you want to. 

Get that out of the way. 

Get the code from github. Install git first

	sudo apt-get install git

Then

	git clone https://github.com/erikdubois/i3-on-Linux-Mint-18.1-Cinnamon.git

This folder, you are downloading, is all you will need to get I3 working <b>the easy way</b>.



# Installation Procedure of I3

Folder <b>Installation</b> is the sequence of the installation procedure you can follow. I recommend to install all of them.

Let us install I3 first. Go inside the folder <b>Installation</b>. You will find folders that are to be run in sequence. The folders are named according to our titles.

To make my installations quicker (after first time installation) I have created an **auto-install-vx.sh**.

# Step 1

###Folder 1-i3-from-repo

First we will get I3 from the Linux Mint Repositories (version 4.11) by running the script

	install_i3_version_4.11_from_repositories.sh

	I have added a line in this script to add the hidden folder

	 ~/.config/i3

###Folder 2-i3_with_gaps

Install first the dependencies.

	0_install_dependencies_for_both_scripts-vx.sh


Then we need to run a script to install a xcb-util-xrm. This package is not yet included in the repositories at mid january 2017. So we compile it ourselves. In the future this can be done easier if it is in the repo's.

	1_install_xcb-util-xrm-vx.sh


Next we will run a script to get I3 and its dependancies (version 4.13) with the possibility to have [gaps between the windows](https://github.com/Airblader/i3) by running

	2_install_i3_gaps_next-vx.sh

The added advantage is that we will have the <b>latest version of I3</b> as you can see on the [website](https://i3wm.org/).



# Step 2

We will install an extra menu to start applications. This menu is quite interesting as the menu is based on the .desktop files in your /usr/share/applications. Other menu's tend to show ALL programs. In linux this can be quite a long series.

Run the script to get this extra [j4-desktop-dmenu](https://github.com/enkore/j4-dmenu-desktop).


	j4-dmenu-desktop_install.sh



# Step 3

Now we will install software that is needed specifically for the use in I3.

Run the script

	install-extra-software.sh

You will install

- numlockx to enable the numeric key
- feh will help changing the wallpapers from variety
- lxappearance to change icons, themes and cursors
- scrot to take a quick screenshot of your desktop
- compton to enable some dimming of unfocused windows
- unclutter to get rid of the mouse icon if it is in the way
- volti to have a panel icon to adjust sound volume
- traded volti in for pasystray to change the volume due to the bluetooth headset
- terminator - different terminal you can fine-tune in look


Double click the **awesome font** to install it. You will need it for the conkybar in the config file.


# Step 4

When you install i3 the script in step 1 will make a hidden folder in this location.

	~/.config/i3

You have to copy/paste the content of the github folder into <b>~/.config/i3</b>.

You have to make this folder yourself IF you skipped step 1. It is normal that you do not have it since you never logged in with i3wm yet.


Some explanations of files/folders

+ **config** is the most **important** file - here all the settings of I3 that can be changed
+ i3status.conf is the standard bar configuration file for you bottom panel that can be changed
+ start-conky-i3statusbar.sh is the the application that will start next line
+ conky-i3statusbar - alternative bar made with conky
+ i3blocks.conf - alternative bar with scripts from i3blocks
+ i3exit.sh is used to logoff, exit, reboot etc - no need to change this (in folder scripts)
+ compton.conf is taking care of the windows (shadow, transparency, ...)
+ start-conkys.sh will start the two conky's present 
+ conky system-overview conky will show process and memory
+ conky system-shortcuts conky will help you with the shortcuts

Folder <b>config_backups</b> holds all the older config files of i3. Recommended to keep copies since the config files is that important.

Folder <b>Installation</b> is the sequence of the installation procedure you can follow. I recommend to install all of them.

Folder <b>scripts</b> is where all scripts are (and future scripts). You will need those to quit, sleep, lock, ... i3.

## Change the looks

Use <b>lxappearance</b> to change icons, themes etc  ...
Restart programs to see the changes.

Settings of icons, themes and fonts are kept in several files depending which gtk version the application uses.

This file should be in your home directory as a hidden file.

	.gtkrc-2.0

The other file is a bit deeper in the folder structure.

	~/.config/gtk-3.0/settings.ini

You can also use **qtconfig-qt4** to change settings.



# Conky

You installed the software for conky in Step_3

If you want to have a status bar based on a conky, you can now choose to have it in the options in the config file.



## I3 is MADE for DUAL and more SCREENS


The program xrandr will show you how your monitors are named.
In the config file you will need to change the code.

Uncomment the ones you need. This is my setup.


	set $firstMonitor DVI-I-1

	set $secondMonitor DVI-I-2

Use this code in your config or terminal (only once) to tell the system which monitor goes on the left.

	xrandr --output DVI-I-2 --right-of DVI-I-1 --auto

There is also an more 'gui' approach if you install arandr.

    sudo apt install arandr


# Extra info

## Nitrogen

Use variety for wallpaper changer. It will provide you with awesome images from desktoppr. But if you run into problem you can use this application.

You can set your wallpaper with nitrogen also if variety (or feh another tool that is installed) does not prove to work.

	sudo apt install nitrogen



# Shortcuts to remember

The best thing to do is : 

	read the config file in the folder ~/.config/i3

If in a hurry, you can always check the conky or this website.

## Mod key

You can set your mod key. I have set mine to the Windows Key

**This line in your config file will set the windows key or super key.**

	set $mod Mod4

Some commands working with the Mod Key (windows key)

$mod + SHIFT + E  = to exit i3 and log back on with Cinnamon

$mod + D  = dmenu

$mod + SHIFT + D = j4_dmenu

$mod + Enter = terminal

$mod + SHIFT + Enter= nemo (file manager)

$mod + SHIFT + Q = end current program (move mouse over it)


##Assign section

You will have 10 possible workspaces in the bottom-left corner to choose from. They will be visible if a program is activated on them.

I have positioned some programs on some specific desktops. I know them by heart. And there is a structure in my system. You can see it here down below.

assign [class="Firefox|Vivaldi-stable|Opera"]                                       → 1

assign [class="sublime-text|sublime_text|Sublime_text|subl|Subl|subl3|Subl3"]       → 2

assign [class="Xed|xed|Brackets|Atom|Code"]                                         → 2

assign [class="Inkscape"]                                                           → 3

assign [class="Gimp"]                                                               → 4

assign [class="ristretto|Ristretto|shotwell|Shotwell"]                              → 5

assign [class="Meld"]                                                               → 5

assign [class="feh|gthumb|Gthumb|eog|Eog|Pinta|pixeluvo|Pixeluvo"]                  → 5

assign [class="Vlc|vlc"]                                                            → 6

assign [class="Nemo|Thunar|Caja|nautilus|Nautilus"]                                 → 8

assign [class="Geary|Evolution"]                                                    → 9

assign [class="Spotify|spotify"]                                                    → 10

Tip : if you use sublime-text. It gives us 'nag screens' to buy it. They will pop up in workspace 2 because of my setting assuming sublime-text is active on another workspace then 2. 


## Reload the config

$mod + SHIFT + R = reset or rerun i3 if you change some code in the config file


## Start up programs with CTRL + ALT + ...

ALT = Mod1 for I3

So CTRL + ALT + f will start firefox. Change the shortcuts if you do not like them in the config file.

	bindsym control+Mod1+f exec firefox 

    bindsym control+Mod1+w exec sublime-text 

	bindsym control+Mod1+g exec gimp

	bindsym control+Mod1+e exec evolution

	bindsym control+Mod1+s exec spotify

	bindsym control+Mod1+t exec gnome-terminal

	bindsym control+Mod1+b exec nemo --no-desktop

	bindsym control+Mod1+n exec cinnamon-settings

	bindsym control+mod1+m exec gnome-system-monitor



# You can stop here, log off and try-out I3

Log in by clicking the symbol in the top right of the login screen and choose i3.
I am set to autologin. It will remember your preferences to log in next time. 


# What will happen when you login

Firefox will start on workspace 1.
Sublime Text will start on workspace 2.
Nemo will start on workspace 8.
Spotify will start on workspace 10.



# E N D   R E S U L T

The fun is that i3wm can run on many distro's. So you can move your i3 config to other distro's.

Check out google + for images : https://plus.google.com/u/0/collection/MI2kZB

Distro's covered already : 
	
http://erikdubois.be/tag/i3/

http://erikdubois.be/category/linux/i3/

Linux Mint 18.1 Cinnamon

![Screenshots](http://i.imgur.com/9o7bZuk.jpg)



Linux Mint 18 and Linux Mint 18.1 images do not differ.

![Screenshots](http://i.imgur.com/5RZaVMg.jpg)


Conky to help you with the basic information and the basic keyboard shortcuts

![Screenshots](http://i.imgur.com/irN98nN.jpg)


Lxappearance to change icons, themes, ...


![Screenshots](http://i.imgur.com/UcmfwmS.jpg)


## i3status bar

This is the standard i3statusbar but already personalised.

![Screenshots](http://i.imgur.com/Xz1Q0ss.jpg)


## Conky statusbar (alternative bar)

You can have a conky instead of the standard i3statusbar.


![Screenshots](http://i.imgur.com/ogYQLaV.jpg)


## i3 blocks (alternative bar)

You can have other information in your i3statusbar. You can use i3 blocks from
https://github.com/vivien/i3blocks as well

![Screenshots](http://i.imgur.com/JExirXa.jpg)




# F  A  Q
--------------------

#What can you do if the script does not execute?

Since I sometimes forget to make the script executable, I include here what you can do to solve that.

A script can only run when it is marked as an executable.

	ls -al 

Above code will reveal if a script has an "x". X meaning executable.
Google "chmod" and "execute" and you will find more info.

For now if this happens, you should apply this code in the terminal and add the file name.

	chmod +x typeyourfilename

Then you can execute it by typing

	./typeyourfilename

Or you can follow these steps

![Screenshots](http://i.imgur.com/vXsOaFL.gif)


-------------------------------------------------
#But that is the fun in Linux.

You can do whatever <b>Y O U</b> want.

Share the knowledge.

I share my knowledge at http://erikdubois.be
------------------------------------------------
