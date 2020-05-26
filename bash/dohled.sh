#!/bin/bash
cas=`date +%T" "%D`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
user_log=`who | wc -l`
vDisk=`df -h | grep sda1 | awk -F " " '{print $2}'`
uDisk=`df -h | grep sda1 | awk -F " " '{print $3}'`
volnoDisk=`df -h | grep sda1 | awk -F " " '{print $4}'`
uProDisk=`df -h | grep sda1 | awk -F " " '{print $5}'`
vRAM=`free -m | grep Mem: | awk -F " " '{print $2}'`
pouzitaRAM=`free -m | grep Mem: | awk -F " " '{print $2}'`
volnaRAM=`free -m | grep Mem: | awk -F " " '{print $2}'`

clear
echo "-------------------------------------------------" >> dohled
echo "Aktuální čas: "$cas >> dohled
echo "Aktuálně je přihlášeno "$user_log" uživatelů." >> dohled
echo "-------------------------------------------------" >> dohled
echo "Velikost disku je "$vDisk"B." >> dohled
echo "Na disku je "$uDisk"B obsazeného místa." >> dohled
echo "Na disku je "$volnoDisk"B volneho místa." >> dohled
echo "Disk je z "$uProDisk" Plný." >> dohled
echo "-------------------------------------------------" >> dohled
echo "Velikost operační paměti je "$vRAM" MB." >> dohled
echo "V operační paměti je "$pouzitaRAM" MB obsazených." >> dohled
echo "V operační paměti je "$volnaRAM" MB volných." >> dohled
echo "-------------------------------------------------" >> dohled
echo "Moje IP: "$ip >> dohled
echo "Přijatá data: "$rx >> dohled
echo "Odeslaná data: "$tx >> dohled
echo "-------------------------------------------------" >> dohled
echo "-------------------------------------------------" >> dohled


