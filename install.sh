#! /bin/bash
printf "========== Installing ==========\n"

printf "\n#### Installing from live resources\n"
apt-get install aptitude
aptitude install vim
aptitude install build-essential
aptitude install cmake
aptitude install aria2
aptitude install proxychains
aptitude install git
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
	mkdir /home/$1/intellij
	if [ ! -d idea* ]; then
		tar -xzvf idea.tar.gz
	fi
	cd idea*
	cp -r * /home/$1/intellij
        cd .. 
fi

printf "\n--> CLion"
if [ ! -d "~\clion" ]; then
	mkdir /home/$1/clion
	if [ ! -d clion* ]; then
		tar -xzvf clion.tar.gz
	fi
	cd clion*
	cp -r * /home/$1/clion
        cd .. 
fi

printf "\n--> Guake fonts"
cd fonts
./install.sh
cd ..
