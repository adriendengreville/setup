#! /bin/bash

printf \n"======== Applying preferences ========\n"

printf "\t-> guake theme \n"
	su $1 -c "dl/guake-colors-solarized/set_dark.sh solarized"

printf "\t-> import .zshrc \n"
	cp pref/.zshrc /home/$1

printf "\t-> load guake on startup \n"
	if [ ! -L /etc/xdg/autostart/guake.desktop ]; then
		ln -s /usr/share/applications/guake.desktop /etc/xdg/autostart/
	fi

printf "\t-> copying awesome config \n"
	if [ ! -d /home/$1/.config/awesome ]; then
		mkdir /home/$1/.config/awesome
	fi
	cp -r dl/awesome-copycats/* /home/$1/.config/awesome/
	cp pref/rc.lua /home/$1/.config/awesome/

printf "\t-> setting awesome config \n"
	if [ ! -f /etc/xdg/awesome/rc.lua ]; then
		rm /etc/xdg/awesome/rc.lua
	fi
	ln -s rc.lua /home/$1/.config/awesome/
	echo "guake&

source /home/$1/.zshrc

exec awesome" > /home/$1/.xinitrc
