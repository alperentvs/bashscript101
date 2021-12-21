#! /bin/bash

select iller in Ankara Izmir Istanbul 
do
    echo "$iller secildi"
done

# Genellikle case yapisi ile birlikte verilir. Case yapisiyla birlikte bir ornek verecek olursak: 

select iller in Ankara Izmir Istanbul 
do
    case $iller in
    Ankara )
        echo "Ankara secildi";;
    Izmir )
        echo "Izmir secildi";;
    Istanbul )
        echo "Istanbul secildi";;
    * )
        echo "1-3 arasi deger giriniz";;
    esac
done