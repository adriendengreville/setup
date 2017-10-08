#! /bin/bash
function show {
	echo -e $1
}

function install {
	pacman -S $1
}

function fetch {
	git clone $1
}

function fetch_r {
	git clone --recursive $1
}

show "========== Configuration =========="

show "-> Apply awesome config"
cp ./pref/.rc.lua ~/.config/awesome

show "-> Pimp it"
fetch https://github.com/powerline/fonts
cd fonts
./install.sh
cd .. && rm -rf fonts
cp -r wallpapers ~

show "-> Configure session"
cp ./pref/.zshrc ~/.zshrc
cp ./pref/.xinit ~/.xinit
cp ./pref/.Xresources ~/.Xresources
cp ./pref/.vimrc ~/.vimrc

show "-> Set scripts"
cp -r scripts ~
show "/!\\ REMOVE DEFAULT WALLPAPER FROM THEME /!\\"

show "-> Enable docker"
sudo tee /etc/modules-load.d/loop.conf <<< "loop"
sudo modprobe loop
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo usermod -aG $(whoami)
newgrp docker
