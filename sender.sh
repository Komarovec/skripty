#!/bin/bash
zprava="Ja byt KOKOTI NECHTE TOHO!!!"
seznam=`tac /etc/passwd | head -n 28 | awk -F ":" '{print $1}'`
uzivatel=`echo $seznam | awk -F " " '{print $1}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $2}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $3}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $4}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $5}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $6}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $7}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $8}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $9}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $10}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $11}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $12}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $13}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $14}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $15}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $16}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $17}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $18}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $19}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $20}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $21}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $22}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $23}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $24}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $25}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $26}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $27}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel
uzivatel=`echo $seznam | awk -F " " '{print $28}'`
echo $zprava | write $uzivatel
echo "Napsal jste zpravu: "$uzivatel

