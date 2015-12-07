#! /bin/bash

printf \n"======== Applying preferences ========\n"

printf "\t-> guake theme \n"
	su - dl/guake-colors-solarized/set_dark.sh solarized

printf "\t-> import .zshrc \n"
	cp pref/.zshrc /home/$1

printf "\t-> load guake on startup \n"
	ln -s /usr/share/applications/guake.desktop /etc/xdg/autostart/

printf "\t-> copying awesome config \n"
	cp -r dl/awesome-copycats/* /home/$1/.config/awesome
	cp pref/rc.lua /home/$1/.config/awesome	

printf "\t-> setting awesome config \n"
	rm /etc/xdg/awesome/rc.lua
	ln -s /home/$1/.config/awesome/rc.lua rc.lua 
