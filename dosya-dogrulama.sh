#! /bin/bash

# -e dosya mevcut 
# -f dosya mevcut ve regular file
# -s dosya icerigi dolu
# -d dizin olup olmadigi
# -r read
# -w write
# -x executable

# Ornek-1
echo -e "Dosyanin ismini giriniz:\c" # burdaki -e flagi girdi yapılırken ayni satirda kalmasini sagliyor.

read dosyaismi

if [ -e $dosyaismi ] # -e "exist" anlamindadir ve mevcut olup olmadigini ogrenmemize yarar.
then
  echo "$dosyaismi bulundu"
else
    echo "$dosyaismi bulunamadi"
fi

# Ornek-2
echo -e "Dosyanin ismini giriniz:\c"

read dosyaismi

if [ -s $dosyaismi ] # -s flagi dosyanin icinin dolu olup olmadigina bakar
then
  echo "$dosyaismi icerigi dolu"
else
    echo "$dosyaismi bos"
fi