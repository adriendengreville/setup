#! /bin/bash
printf "========== Installing ==========\n"

printf "\n#### Installing from live resources\n"
printf "\t-> aptitude \n"
	apt-get install aptitude
printf "\t-> vim \n"
	aptitude install vim
printf "\t-> build-essential \n"
	aptitude install build-essential
printf "\t-> cmake \n"
	aptitude install cmake
printf "\t-> aria2c \n"
	aptitude install aria2
printf "\t-> proxychains \n"
	aptitude install proxychains
printf "\t-> git \n"
	aptitude install git
printf "\t-> maven \n"
	aptitude install maven
printf "\t-> zsh \n"
	aptitude install zsh
printf "\t-> ohmyszsh \n"
	sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
printf "\t-> guake \n"
	aptitude install guake
printf "\t-> awesome \n"
	apt-get -t unstable install awesome/unstable
printf "\t-> awesome-extra \n"
	aptitude install awesome-extra
printf "\t-> google-chrome \n"
	aptitude install google-chrome


printf "\n#### Installing from downloaded resources"
cd dl

printf "\n--> Intellij Idea"
if [ ! -d "/home/$1/intellij" ]; then
	mkdir /home/$1/intellij
	if ! ls idea* 1> /dev/null 2>&1; then
		tar -xzvf idea.tar.gz
	fi
	cd idea*
	cp -r * /home/$1/intellij
        cd .. 
fi

printf "\n--> CLion"
if [ ! -d "/home/$1/clion" ]; then
	mkdir /home/$1/clion
	if ! ls clion* 1> /dev/null 2>&1; then
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
