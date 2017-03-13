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
	echo "-- Implode Effect     1) -----"
	echo "-- Charcoal Effect    2) -----"
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

#Conver dir/file with variable from user
function shortProcces {
	getPath
	if [[ "$DoF" == 2 ]]; then
		pathShort=`echo $path | awk -F "." '{print $1}'`
		pathType=`echo $path | awk -F "." '{print $2}'`
		echo "Proccesing..."
		convert $path "-"$2 $1 $pathShort"-"$2"_"$1"."$pathType
		echo "Done!"
		stop
	else
		cd $path
		for file in *.*; do
			path=$file
			pathShort=`echo $path | awk -F "." '{print $1}'`
			pathType=`echo $path | awk -F "." '{print $2}'`
			echo "Proccesing file: $path" 
			convert $path "-"$2 $1 $pathShort"-"$2"_"$1"."$pathType
		done
		echo "Done!"
		stop	
	fi
}

#Decides between different choices, convert file/directory
function longProcces {
	choice 0 2 "Type your choice: "
	var=$nChoice
	getPath
	if [[ "$var" == '1' ]]; then
		if [[ "$DoF" == '2' ]]; then
			pathShort=`echo $path | awk -F "." '{print $1}'`
			pathType=`echo $path | awk -F "." '{print $2}'`
			echo "Proccesing..."
			if [[ "$1" == '1' ]]; then
				convert $path $pathShort".png"
			else
				convert $path -implode 1 $pathShort"-imploded."$pathType
			fi
			echo "Done!"
			stop			
		else
			cd $path
			for file in $2; do
				path=$file
				pathShort=`echo $path | awk -F "." '{print $1}'`
				pathType=`echo $path | awk -F "." '{print $2}'`
				echo "Proccesing file $path...."
				if [[ "$1" == '1' ]]; then
					convert $path $pathShort".png"
				else
					convert $path -implode 1 $pathShort"-imploded."$pathType
				fi
			done
			echo "Done!"
			stop
		fi
	else
		if [[ "$DoF" == '2' ]]; then
			pathShort=`echo $path | awk -F "." '{print $1}'`
			pathType=`echo $path | awk -F "." '{print $2}'`
			echo "Proccesing..."
			if [[ "$1" == '1' ]]; then
				convert $path $pathShort".jpg"
			else
				convert $path -charcoal 2 $pathShort"-charcoal."$pathType
			fi
			echo "Done!"
			stop			
		else
			cd $path
			for file in $3; do
				path=$file
				pathShort=`echo $path | awk -F "." '{print $1}'`
				pathType=`echo $path | awk -F "." '{print $2}'`
				echo "Proccesing file $path...."
				if [[ "$1" == '1' ]]; then
					convert $path $pathShort".jpg"
				else
					convert $path -charcoal 2 $pathShort"-charcoal."$pathType
				fi
			done
			echo "Done!"
			stop
		fi
	fi
}

#Main Function         Important --> DoF (1 - Dir, 2 - File); (shortProcces var proccesName)  
while :; do
	clear
	mainMenu
	choice 0 5 "Type your choice: "
	case "$nChoice" in
		1)
			formatMenu
			longProcces '1' "*.jpg" "*.png"
			;;
		2)
			qualityMenu
			choice 0 100 "Type % (1 - 100): "
			var=$nChoice
			shortProcces $var "quality"	
			;;
		3)
			resizeMenu
			choice 0 100000 "Type width: "
			width=$nChoice
			if [[ "$nChoice" -gt '0' ]]; then 
				choice 0 100000 "Type height: "
				height=$nChoice
				var=`echo $width"x"$height`
				shortProcces $var "resize"
			fi
			;;
		4)
			rotateMenu
			choice -360 360 "Type angle: "
			var=$nChoice
			shortProcces $var "rotate"
			;;
		5)
			effectsMenu
			longProcces '2' "*.*" "*.*"
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
