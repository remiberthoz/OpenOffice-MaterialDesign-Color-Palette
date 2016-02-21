#!/bin/sh

############################
# Translate colors from palette.soc
#

IFS=,
colors="Red,Pink,Purple,Deep Purple,Indigo,Blue,Light Blue,Cyan,Teal,Green,Light Green,Lime,Yellow,Amber,Orange,Deep Orange,Brown,Grey,Blue grey,Black,White"

for color in $colors
do
    read -p "Translate "$color" to : " colort
    sed -i 's/"'$color'\([ a0-9]*\)"/"'$colort'\1"/g' palette.soc
done
