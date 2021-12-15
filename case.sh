#! /bin/bash

echo -e "Bir arac giriniz:\c"

read arac

# Ornek-1
case $arac in
    "araba" )
    echo "$arac 500₺ ye gunluk kiralanir";;
    "motorsiklet" )
    echo "$arac 200₺ ye gunluk kiralanir";;
    "bisiklet" )
    echo "$arac 100₺ ye gunluk kiralanir";;
    * ) # yukarida belirtilen degerler girdi olarak alinmazsa bu degeri dondurur. 
    echo "$arac kiralik degildir";;
esac

# Ornek-2
echo -e "Bir karakter giriniz:\c"

read deger

case $deger in
    [a-z] )
    echo "Kullanici $deger harf girisi yapti, a-z arasinda";;
    [0-9] )
    echo "Kullanici $deger rakam girisi yapti, 0-9 arasinda";;
    ? ) # ? burda ozel karakterleri temsil eder
    echo "Kullanici $deger ozel karakter girisi yapti";;
    * )  
    echo "Bilinmeyen karakter";;
esac