#! /bin/bash
function show {
	echo -e $1
}

function install {
	sudo pacman -S $1 --noconfirm
}

function fetch {
	git clone $1
}

function fetch_r {
	git clone --recursive $1
}

function add_archfr {
	sudo echo "[archlinuxfr]" >> /etc/pacman.conf
	sudo echo "SigLevel = Never" >> /etc/pacman.conf
	sudo echo "Server = http://repo.archlinux.fr/\$arch" >> /etc/pacman.conf
	pacman -Sy
}

show "========== Installing =========="

show "Installing graphics stuff"

show "\tXorg server"
install xorg-server
install xorg-xinit
install xorg-server-utils
install mesa

show "\tDrivers"
install xf86-video-intel
install libva-intel-driver
install xf86-input-synaptics

show "\tAwesome"
install awesome
mkdir -p ~/.config/awesome/
fetch_r https://github.com/lcpz/awesome-copycats.git
cd awesome-copycats
#rm -rf lain freedesktop
#fetch "https://github.com/lcpz/awesome-freedesktop.git freedesktop"
#fetch https://github.com/lcpz/lain.git
cd ..
mv -bv awesome-copycats/* ~/.config/awesome
rm -rf awesome-copycats

show "Installing useful stuff"
install xterm
install networkmanager
install network-manager-applet
install jdk9-openjdk
install vim
install maven
install google-chrome
install jetbrains-toolbox
install atom
install docker
install docker-compose
add_archfr
install yaourt
install mirage
install feh
install nemo
install gitkraken
install gnome-mplayer
install go
install gparted
install htop
install pavucontrol
install redshift
install unzip
install wireshark-qt
install wget
install i3lock
install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
show "-> Install spotify by hand"
