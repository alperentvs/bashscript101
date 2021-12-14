#! /bin/bash

# ---- IF KULLANIMI -----

# if[kosul]
# then
# durum
# fi

# (if, elif, else)

# ---- INT KARSILASIRMA -----
# -eq / esit ise               / if [ "$a" -eq "$b" ] (equal)
# -ne / esit degil ise         / if [ "$a" -ne "$b" ] (not equal)
# -gt / buyuk ise              / if [ "$a" -gt "$b" ] (greater than)
# -ge / buyuk veya esit ise    / if [ "$a" -ge "$b" ] (greater than or equal)
# -lt / kucuk ise              / if [ "$a" -lt "$b" ] (less than)
# -le / kucuk veya esit ise    / if [ "$a" -le "$b" ] (less than or equal)

# <   / kucuk                  / if(( "$a" < "$b" ))
# <=  / kucuk esit             / if(( "$a" <= "$b" ))
# >   / buyuk                  / if(( "$a" > "$b" ))
# >=  / buyuk esit             / if(( "$a" >= "$b" ))


# ---- STRING KARSILASTIRMA ----- 
# =   / esit ise               / if [ "$a" = "$b" ]
# ==  / esit ise               / if [ "$a" == "$b" ]
# !=  / esit degil ise         / if [ "$a" != "$b" ]
# <   / kucuk                  / if [[ "$a" < "$b" ]] --> Alfabetik dizilime gore
# >   / buyuk                  / if [[ "$a" > "$b" ]] --> Alfabetik dizilime gore


# ---- AND, OR OPERATORLERİ -----
# AND --> && (-a)
# OR  --> || (-o)
 
# Dikkat edilmesi gereken bir diger sey if kullanırken aralarda bosluk birakilmasi gerekmektedir.


sayi=10

# Ornek-1
if [ $sayi -eq 10 ]
then
echo "Kosul dogru"
fi

# Ornek-2
if [ $sayi -ne 9 ]
then 
echo "Kosul dogru-2"
fi

# Ornek-3 
if (( $sayi != 9 ))
then 
echo "Kosul dogru-3"
fi

# Ornek-4 
deger=9

if (( $deger < 9 ))
then 
echo "Deger 9'dan kucuktur"
elif (( $deger > 9 ))
then
echo "Deger 9'dan buyuk"
else 
echo "Deger 9'a esit"
fi 

# Ornek-5
d=alperen

if [ $ad == "alperen" ]
then
echo "Isım Alperen'dir"
fi

# Ornek-6
yas=28

if [ "$yas" -gt 18 ] && [ "$yas" -lt 30 ] # if [ "$yas" -gt 18 -a "$yas" -lt 30 ], [[ "$yas" -gt 18 && "$yas" -lt 30 ]] --> ayni seydir
then
echo "Gecerli yas"
else
echo "Gecersiz yas"
fi