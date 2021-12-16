#! /bin/bash

i=1

while [ $i -le 10 ]
do 
    echo $i
    i=$((i+1)) # ((i++)) veya ((++i)) kullanilabilir.
    sleep 1 # Komutu calistirirken her seferinde 1 saniye bekler.
    gnome-terminal # Her bir deger icin yeni bir terminal acar. & flagi ile arka planda calistirabiliriz. 
done
