#!/bin/bash
clear #nevim
for (( i=1; i<=10; i++ ))
do
  echo "Otazka čislo" $i"."
  echo "Zadejte věk: "
  read vek
  echo "Je vam " $vek " let."
  if [ $vek -lt 0 ]; then
    echo "Meně než 0?!? a máte" $vek "let."
    echo "Meně než 0?!? a máte" $vek "let." >> log
  fi
  if [ $vek -lt 15 ] && [ $vek -ge 0 ]; then
    echo "Jste díte a máte" $vek "let."
    echo "Jste díte a máte" $vek "let." >> log
  fi
  if [ $vek -lt 18 ] && [ $vek -ge 15 ]; then
    echo "Jste mladivství a máte" $vek "let."
    echo "Jste mladivství a máte" $vek "let." >> log
  fi
  if [ $vek -lt 120 ] && [ $vek -ge 18 ]; then
    echo "Jste dosplělí a máte" $vek "let."
    echo "Jste dosplělí a máte" $vek "let." >> log
  fi
  if [ $vek -ge 120 ]; then
    echo "Jste Pán Času"
    echo "Jste Pán Času" >> log
  fi
done
