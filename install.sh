#! /bin/bash
printf "========== Installing ==========\n"

printf "\n#### Installing from live resources\n"
apt-get install aptitude
aptitude install vim
aptitude install build-essential
aptitude install cmake
aptitude install aria2c
aptitude install proxychains
aptitude instakk git
aptitude install maven
aptitude install zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
aptitude install guake
aptitude install awesome/unstable
aptitude install awesome-extra
aptitude install google-chrome


printf "\n#### Installing from downloaded resources"
cd dl

printf "\n--> Intellij Idea"
if [ ! -d "~\intellij" ]; then
	mkdir ~/intellij
	tar -xzvf idea.tar.gz
	cd idea*
	cp -r * ~/intellij
        cd .. 
fi

printf "\n--> CLion"
if [ ! -d "~\clion" ]; then
	mkdir ~/clion
	tar -xzvf clion.tar.gz
	cd clion*
	cp -r * ~/clion
        cd .. 
fi

printf "\n--> Guake fonts"
cd fonts
./install.sh
cd ..
rm -rf fonts
