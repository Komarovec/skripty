#!/bin/bash
clear #nevim
echo "Zadejte věk: "
read vek

if [ $vek -lt 0 ]; then
  echo "Meně než 0?!?"
fi

if [ $vek -lt 15 ] && [ $vek -ge 0 ]; then
  echo "Jste díte"
fi

if [ $vek -lt 18 ] && [ $vek -ge 15 ]; then
  echo "Jste mladivství"
fi

if [ $vek -lt 120 ] && [ $vek -ge 18 ]; then
  echo "Jste dosplělí"
fi

if [ $vek -ge 120 ]; then
  echo "Jste Pán Času"
fi

