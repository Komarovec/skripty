#!/bin/bash
zprava="./InfCo.sh"
seznam=`tac /etc/passwd | head -n 28 | awk -F ":" '{print $1}'`
uzivatel=`echo $seznam | awk -F " " '{print $1}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $2}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $3}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $4}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $5}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $6}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $7}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $8}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $9}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $10}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $11}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $12}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $13}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $14}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $15}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $16}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $17}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $18}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $19}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $20}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $21}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $22}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $23}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $24}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $25}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $26}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $27}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $28}'`
$zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
