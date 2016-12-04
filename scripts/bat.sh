#!/bin/bash

/usr/bin/msikeyboard -c blue
sleep 5

old_output=""

while :
do
	out="$(acpi -a)"
	
	if [[ ! $out = $old_output ]]; then
		echo "changed"
		if [[ ! $out = "Adapter 0: on-line"  ]]; then
			/usr/bin/msikeyboard -c red -b 500
		else
			/usr/bin/msikeyboard -c green
		fi
	fi

	sleep 1
	old_output=$out
done

