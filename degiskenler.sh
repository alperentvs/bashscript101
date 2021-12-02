#! /bin/bash

# Degiskenler ikiye ayrilir: 
# 1- System Variables
# 2- User Variables

echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD

ad=Alperen
echo $ad

sayi=10
echo $sayi

# Degiskenler int bir deger ile baslayamaz. (Sayi ile)
# READ kod disinden degisken degerini kullanicidan almamiza yarar.

echo "Isminiz: "
read isim
echo "Ismim $isim"

echo "Isımler: "
read isim1 isim2 isim3 
echo "Isımler: $isim1, $isim2, $isim3"

read -p 'Isminiz: ' isimdeger # -p flagi ile degeri terminalde ayni hizada aldik. 
read -sp 'Sifreniz: ' sifre # -s flagi ile sifre gibi degerlerde terminale yazilan deger gozukmez.

echo "Ismim $isimdeger"
echo # Bir satir bosluk birakir.
echo "Sifrem $sifre" 

echo "Isminizi giriniz: "
read 
echo "Ismim $REPLAY" # REPLAY degiskeni ile degeri atamadan read ile alınan degeri yazdirabiliriz. 

echo "Isimler: "
read -a isimdizi # -a (argument)
echo "Isimler: ${isimdizi[0]}, ${isimdizi[1]}, ${isimdizi[2]}" # dizi seklinde tutabiliriz. 