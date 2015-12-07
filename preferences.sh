#! /bin/bash

printf \n"======== Applying preferences ========\n"

printf "\t-> guake theme \n"
	cd dl
	cd guake-colors-solarized
	./set_dark.sh solarized
	cd ..
