#! /bin/bash

mkdir dl
cd dl

printf "========== Cloning from repos ==========\n"

printf "###### Guake theme \n"
git clone https://github.com/coolwanglu/guake-colors-solarized.git

printf "\n\n###### Guake fonts\n"
git clone https://github.com/powerline/fonts.git

printf "\n\n###### Downloading Intellij\n"
if [ ! -f idea* ]; then
	wget http://repo.dengreville.fr/soft/idea.tar.gz
fi

printf "\n\n###### Downloading CLion\n"
if [ ! -f clion*]; then
	wget http://repo.dengreville.fr/soft/clion.tar.gz
fi

printf "\n\n###### Adding repos\n"
printf "\t--> Google Chrome\n"
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
#printf "\t--> Sid for Awesome\n"
#echo "deb http://ftp.de.debian.org/debian unstable main non-free contrib" >> /etc/apt/sources.list

printf "\n\n ================ Cloning done ================"

cd ..
