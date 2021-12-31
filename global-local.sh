#! /bin/bash

function cikti(){

    local isim=$1       # Burda isim degiskenini local olarak yani sadece fonksiyon icinde kullanilacak sekilde ayarladik. 
    echo "Ismim $isim"

}

isim="Mehmet"

echo "Ismim $isim"

cikti Alperen

echo "Ismim $isim"      # Eger local isim degiskenini local olarak ayarlamis olmasaydik burada cikti Alperen olacakti. 

