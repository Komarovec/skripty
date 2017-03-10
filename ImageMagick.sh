#!/bin/bash

#All Menus
function mainMenu {
	echo "------------------------------"
	echo "----- Image Magick Menu  -----"
	echo "------------------------------"
	echo "-- Convert format     1) -----"
	echo "-- Lower quality      2) -----"
	echo "-- Resize             3) -----"
	echo "-- Rotate             4) -----"
	echo "-- Effects            5) -----"
	echo "-- Quit               0) -----"
	echo "------------------------------"
}

function dirOrFilMenu {
	echo "------------------------------"
	echo "-----  Do you want to    -----"
	echo "-----      select        -----"
	echo "----- Directory or File  -----"
	echo "------------------------------"
	echo "-- Directory          1) -----"
	echo "-- File               2) -----"
	echo "-- Back               0) -----"
	echo "------------------------------"
}

function formatMenu {
	echo "------------------------------"
	echo "-----  Convert  format   -----"
	echo "------------------------------"
	echo "-- JPG --> PNG        1) -----"
	echo "-- PNG --> JPG        2) -----"
	echo "-- Back               0) -----"
	echo "------------------------------"
}

function qualityMenu {
	echo "------------------------------"
	echo "-----   Lower  quality   -----"
	echo "------------------------------"
	echo "-- Enter quality in %    -----"
	echo "--            (1% - 100%)-----"
	echo "-- Back               0) -----"
	echo "------------------------------"
}

function resizeMenu {
	echo "------------------------------"
	echo "-----       Resize       -----"
	echo "------------------------------"
	echo "-- Enter resolution      -----"
	echo "--      Example: 500x600 -----"
	echo "-- Back               0) -----"
	echo "------------------------------"
}
# End of Menus

#Choices between different selections, and return choice.
function choice { 
	max=5
	min=0
	echo "Type your choice: "
	read nChoice
	if [[ "$nChoice" -ge "$min" && "$nChoice" -le "$max" ]]; then
		return "$nChoice"
	else
		echo "You have entered wrong choice, please try again."
	fi
}

#Main Function
mainMenu
choice
switch($nChoice) {
	case 1:
		formatMenu
	case 2:
		qualityMenu
	case 3:
		resizeMenu
	case 4:
		rotateMenu
	case 5:
		effectsMenu
	case 6:
		echo "Do you really want to exit?"
		echo "Yes	1)"
		echo "No	2)"
		if [[ "$nChoice" == '1' ]]; then
			exit
		fi
}






