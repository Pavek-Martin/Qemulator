#!/usr/bin/bash

# tento skript nespoustet samostatne ale spustit skript test.sh

if [ -z "$1" ]
then
echo "mesic ? $1"
exit 1
fi

m=$1
#echo $m

for r in {2000..2050}; do

#echo "$r .$m"

# pouziva cal plus awk-cko
aa=$(cal $m $r | awk -F' ' '{print $1}')
# vezme prvni sloupec kalendare coz je nedele (angl.)
#echo $aa

# a z posledniho radky jeste vezme jenom 2 posledni znaky
# coz je cislo dne posledni nedele v mesici
bb=${aa:${#aa}-2:${#aa}}
#echo $bb

echo "$r $bb.$m"
done
