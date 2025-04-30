#!/usr/bin/bash

# spustit tonto skript a nepoustet samostatne script kontrola.sh
# smaze pro jistotu vsechny soubor z priponou "txt" v adrsari

# generuje pres linuxovej kalandar "cal" textovy soubory ktery pak slouzej jako kontolni soubory
# pro porovni vystupu z PowerShellu
for x in {1..12};do ./kontrola_ql.sh $x > "cal_"$x".txt"; done
# tady vola script kontrola.sh ( proto drivejsi upozorneni )

# jenom vizualni kontorola jesli maji soubory stejny pocet radku
cat cal_1.txt | wc -l
cat ql_1.txt | wc -l
sleep 3

# generuje textove soubory z vysledky v PowerShellu, sakamato_1.txt - sakamato_12.txt
for y in {1..12};do dos2unix "ql_"$y".txt"; done

for z in {1..12};do echo $z; diff "cal_"$z".txt" "ql_"$z".txt"; done
