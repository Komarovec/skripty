#!/usr/bin/python3
import os

soubor = "uzivatele.txt"
uzivatele = []
with open(soubor, "r") as fv:
	while(line := fv.readline()):
		uzivatele.append(line.split(";"))

for uzivatel in uzivatele:
	os.system("adduser --disabled-password --gecos '' {}".format(uzivatel[0]))
