#!/bin/bash

#All Menus
function mainMenu {
	clear
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
	clear
	echo "------------------------------"
	echo "-----  Do you want to    -----"
	echo "-----      select        -----"
	echo "----- Directory or File  -----"
	echo "------------------------------"
	echo "-- Directory          1) -----"
	echo "-- File               2) -----"
	echo "------------------------------"
}

function getPathMenu {
	clear
	echo "------------------------------"
	echo "----- Enter path of your -----"
	echo "-----      Dir/File      -----"
	echo "------------------------------"
	echo "-- 	Example:       -----"
	echo "--/home/user/picture.png -----"
	echo "--/home/user/pictures    -----"
	echo "------------------------------"
	echo "Type your path: "
}

function formatMenu {
	clear
	echo "------------------------------"
	echo "-----  Convert  format   -----"
	echo "------------------------------"
	echo "-- JPG --> PNG        1) -----"
	echo "-- PNG --> JPG        2) -----"
	echo "-- Back               0) -----"
	echo "------------------------------"
}

function qualityMenu {
	clear
	echo "------------------------------"
	echo "-----   Lower  quality   -----"
	echo "------------------------------"
	echo "-- Enter quality in %    -----"
	echo "--       Example: 90     -----"
	echo "-- Back               0) -----"
	echo "------------------------------"
}

function resizeMenu {
	clear
	echo "------------------------------"
	echo "-----       Resize       -----"
	echo "------------------------------"
	echo "-- Enter resolution      -----"
	echo "--      Example: 500     -----"
	echo "--               400     -----"
	echo "-- Back               0) -----"
	echo "------------------------------"
}

function rotateMenu {
	clear
	echo "------------------------------"
	echo "-----       Rotate       -----"
	echo "------------------------------"
	echo "-- Enter angel           -----"
	echo "--      Example: -90     -----"
	echo "-- Back               0) -----"
	echo "------------------------------"
}

function effectsMenu {
	clear
	echo "------------------------------"
	echo "-----      Effects       -----"
	echo "------------------------------"
	echo "-- Effect1            1) -----"
	echo "-- Effect2            2) -----"
	echo "-- Effect3            3) -----"
	echo "-- Effect4            4) -----"
	echo "-- Effect5            5) -----"
	echo "-- Effect6            6) -----"
	echo "-- Back               0) -----"
	echo "------------------------------"
}

# End of Menus

#Choices between different selections, and return choice.
function choice {
	while :; do
		echo $3
		read nChoice
		if [[ "$nChoice" -ge "$1" && "$nChoice" -le "$2" ]]; then
			return "$nChoice"
		else
			echo "You have entered wrong choice, please try again."
		fi
	done
}

function getPath {
	dirOrFilMenu
	choice 1 2 "Type your choice: "
	DoF=$nChoice
	getPathMenu
	read path
	return $DoF
	return $path
}

function stop {
	echo "[ Press any button to continue. ]"
	read 
}

function changeFormat {
	choice 0 2 "Type your choice: "
		format=$nChoice
		getPath
		if [[ "$format" == '1' ]]; then
			if [[ "$DoF" == '2' ]]; then
				pathShort=`echo $path | awk -F "." '{print $1}'`
				echo "Converting..."
				convert $path $pathShort".png"
				echo "Done!"
				stop			
			else
				cd $path
				for file in *.jpeg; do
					fileShort=`echo $file | awk -F "." '{print $1}'`
					echo "Converting file $file...." 
					convert $file $fileShort".png"
				done
				echo "Done!"
				stop
			fi
		else
			if [[ "$DoF" == '2' ]]; then
				pathShort=`echo $path | awk -F "." '{print $1}'`
				echo "Converting..."
				convert $path $pathShort".jpg"
				echo "Done!"
				stop			
			else
				cd $path
				for file in *.png; do
					fileShort=`echo $file | awk -F "." '{print $1}'`
					echo "Converting file $file...." 
					convert $file $fileShort".jpg"
				done
				echo "Done!"
				stop
			fi
		fi
}

#function changeQuality {
#}

#Main Function         Important --> DoF (1 - Dir, 2 - File); path; nChoice
while :; do
	clear
	mainMenu
	choice 0 5 "Type your choice: "
	case "$nChoice" in
		1)
			formatMenu
			changeFormat
			;;
		2)
			qualityMenu
			choice 0 100 "Type % (1 - 100): "
			quality=$nChoice
			getPath
			if [[ "$DoF" == 2 ]]; then
				pathShort=`echo $path | awk -F "." '{print $1}'`
				pathType=`echo $path | awk -F "." '{print $2}'`
				echo "Proccesing..."
				convert $path -quality $quality $pathShort"-quality_"$quality"."$pathType
				echo "Done!"
				stop
			else
				cd $path
				for file in *.*; do
					fileShort=`echo $file | awk -F "." '{print $1}'`
					fileType=`echo $file | awk -F "." '{print $2}'`
					echo "Proccesing file: $file" 
					convert $file -quality $quality $fileShort"-quality_"$quality"."$fileType
				done
				echo "Done!"
				stop	
			fi
			;;
		3)
			resizeMenu
			choice 0 100000 "Type width: "
			width=$nChoice
			if [[ "$nChoice" -gt '0' ]]; then 
				choice 0 100000 "Type height: "
				height=$nChoice
				getPath
				if [[ "$DoF" == 2 ]]; then
					pathShort=`echo $path | awk -F "." '{print $1}'`
					pathType=`echo $path | awk -F "." '{print $2}'`
					echo "Proccesing..."
					convert $path -resize $width"x"$height $pathShort"-"$width"x"$height"."$pathType
					echo "Done!"
					stop
				else
					cd $path
					for file in *.*; do
						fileShort=`echo $file | awk -F "." '{print $1}'`
						fileType=`echo $file | awk -F "." '{print $2}'`
						echo "Proccesing file: $file" 
					convert $file -resize $width"x"$height $fileShort"-"$width"x"$height"."$fileType
					done
				echo "Done!"
				stop	
				fi
			fi
			;;
		4)
			rotateMenu
			choice -360 360 "Type angle: "
			angle=$nChoice
			;;
		5)
			effectsMenu
			choice 0 6 "Type your choice: "
			option=$nChoice
			;;
		0)
			clear
			echo "---------------------------"
			echo "Do you really want to exit?"
			echo "Yes	1)"
			echo "No	2)"
			echo "---------------------------"
			choice 1 2
			if [[ "$nChoice" == '1' ]]; then
				clear
				exit
			fi
			;;
		*)
			echo "You have entered wrong choice, please try again."
			;;
	esac
done






