#! /bin/bash

function merhaba(){     # Fonksiyonumuzu burada tanimliyoruz.

    echo "merhaba dostlar"

}

cikis(){    # Bu şekilde de tanimlama yapabiliriz. Turkce harf kullanmamaya dikkat edelim.

    exit

}

merhaba     # Fonksiyonumuzu bu sekilde cagirabiliriz. 
# cikis  

# Ornek verelim: 

echo -e "Bir sayi giriniz:\c "

read sayi

function karesinial(){

    echo "Sayinin karesi: $((sayi*sayi))"

}

karesinial

# Ornek2

function cikti(){

    echo $1 $2

}

cikti Alperen Tavas