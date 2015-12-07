#! /bin/bash

mkdir dl
cd dl

printf "========== Cloning from repos ==========\n"

printf "###### Guake theme \n"
if [ ! -d "guake-colors-solarized" ]; then
	git clone https://github.com/coolwanglu/guake-colors-solarized.git
fi

printf "\n\n###### Guake fonts\n"
if [ ! -d "fonts" ]; then
	git clone https://github.com/powerline/fonts.git
fi

printf "\n\n###### Downloading Intellij\n"
if [ ! -f "idea.tar.gz" ]; then
	wget http://repo.dengreville.fr/soft/idea.tar.gz
fi

printf "\n\n###### Downloading CLion\n"
if [ ! -f "clion.tar.gz" ]; then
	wget http://repo.dengreville.fr/soft/clion.tar.gz
fi

printf "\n\n###### Downloading awesome themes resources\n"
if [ ! -d "awesome-copycats" ]; then
	git clone https://github.com/copycat-killer/awesome-copycats.git
fi

if [ ! -d "awesome-copycats/lain" ]; then
	git clone https://github.com/copycat-killer/lain.git
fi

printf "\n\n###### Adding repos\n"
printf "\t--> Google Chrome\n"
	cp pref/sources.list /etc/apt/
	cp pref/preferences /etc/apt/

printf "\n\n ================ Cloning done ================\n"

cd ..
