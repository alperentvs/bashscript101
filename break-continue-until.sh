#! /bin/bash

# break --> sart saglanirsa donguden cikar
for ((i=0;i<=10;i++))
do
    if [ $i -gt 5 ]
    then
    break
    fi 
    echo "$i"
done

# continue --> sart saglanirsa dongunun basina atar
for ((i=0;i<=10;i++))
do
    if [ $i -eq 2 -o $i -eq 6 ]
    then
    continue
    fi 
    echo "$i"
done

# until --> (e kadar) 
a=1

until [ $a -ge 10 ] # (($a >= 10))
do
    echo $a
    ((a++)) # a=$((a++)) 
done