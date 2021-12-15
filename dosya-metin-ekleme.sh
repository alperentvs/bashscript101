#! /bin/bash

echo -e "Dosyanin ismini giriniz:\c"

read dosyaismi

if [ -f $dosyaismi ]
then
    if [ -w $dosyaismi ]
    then
        echo "Dosya yazilabilir. Ctrl+d ile cikabilirsiniz."
        cat >> $dosyaismi
    else
        echo "Dosya yazilabilir degil"
    fi
else
    echo "Dosya mevcut degil"
fi