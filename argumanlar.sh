#! /bin/bash

echo $0 $1 $2 $3 # '$' işaretinin yanina yazdiginiz sayi terminalde komutu calıstırırken verdigimiz degerlerdir. (local degisken)
# orn: ./argumanlar.sh alperen tavas --> $0 = /.argumanlar(scriptin ismi).sh $1 = alperen $2 = tavas

echo $@ # @ işareti butun argumanları yazdırır. Farkı ise $0 degeri bu sefer script adi olmaz. Ilk deger olur.
echo $* # @ gibi tum degerleri gosterir, @ ten farkı degerleri dizi olarak tutmaz.
echo $# # kac tane arguman oldugunu gosterir. (Dizideki eleman sayisi)

dizi=("$@") # eger burada @ yerine * kullansaydık degerleri göremeyecektik cunku * dizi olarak deger tutmaz.
echo ${dizi[0]} ${dizi[1]} # dizinin elamanlarini okumamizi sagladi