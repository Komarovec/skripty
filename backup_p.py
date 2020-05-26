#!/usr/bin/python3
from os import system, path, rename, listdir, remove
from datetime import datetime
import re

# Make 2 digit
def m2d(a):
    return str(a) if a >= 10 else "0"+str(a)

def main():
    # Slozka pro zalohovani
    slozka = "/home/denis/Plocha/data"
    
    # Vytvor datum
    dnow = datetime.now()
    datum = "{}{}{}".format(m2d(dnow.day),m2d(dnow.month),dnow.year)

    # Zjisti existuci zalohy
    if(path.exists(datum)):
        print("Záloha {} již existuje, vytvářím {}.old".format(datum,datum))
        rename(datum,datum+".old")

    # Zalohuje
    system("tar cfz {} {}".format(datum, slozka))

    # Zaznamena do logu
    system("echo Záloha: {} >> /var/log/zalohaetc.log".format(datum))

    # Smaze stare zalohy
    for zaloha in listdir():
         if(re.match("^\d{8}$",zaloha)):
             zdat = datetime(int(zaloha[4:8]),int(zaloha[2:4]),int(zaloha[0:2]))
             td = dnow - zdat
             if(td.days > 5):
                 remove(zaloha)

if(__name__ == "__main__"):
    main()


