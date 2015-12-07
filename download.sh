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

printf "\n\n###### Adding repos\n"
printf "\t--> Google Chrome\n"
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
printf "\t--> Sid for Awesome\n"
echo "deb http://ftp.de.debian.org/debian unstable main non-free contrib" >> /etc/apt/sources.list
echo "Package: *
Pin: release a=stable
Pin-Priority: 700

Package: *
Pin: release a=testing
Pin-Priority: 650

Package: *
Pin: release a=unstable
Pin-Priority: 600" >> /etc/apt/preferences

printf "\n\n ================ Cloning done ================"

cd ..
