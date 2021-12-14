#! /bin/bash

sayi1=25
sayi2=5

echo $(( sayi1+sayi2 ))
echo $(( sayi1-sayi2 ))
echo $(( sayi1*sayi2 ))
echo $(( sayi1/sayi2 ))
echo $(( sayi1%sayi2 ))

# Asagidaki ornekler yukaridaki ile ayni isi yapar.

echo $( expr $sayi1 + $sayi2 )
echo $( expr $sayi1 - $sayi2 )
echo $( expr $sayi1 \* $sayi2 ) # expr modulunde * isareti hata verir. Bunun onune gecmek icin '*' onune '\(escape)' isareti konulmalıdır.
echo $( expr $sayi1 / $sayi2 )
echo $( expr $sayi1 % $sayi2 )

# float veya gelismis hesaplamalar yaparken bc modulunu kullanacagiz. Daha fazla bilgi icin terminale "man bc" yazabilirsiniz.

deger1=20.5
deger2=5

echo "20.5+5" | bc
echo "20.5-5" | bc
echo "20.5*5" | bc
echo "20.5/5" | bc
echo "20.5%5" | bc

# scale kavramini, virgulden sonra kac basamak gostermek istedigimizi soylemek icin kullaniriz.

echo "scale=2;20.5/5" | bc

echo "scale=2;$deger1/$deger2" | bc

echo "scale=10; sqrt($deger2)" | bc -l # -l flagi library anlamindadir.
echo "scale=2; $deger2^3" | bc -l