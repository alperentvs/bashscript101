#! /bin/bash

# Bu uygulamada arguman olarak girilen degerin ne tur bir dosya-dizin oldugunu gosteren bir uygulama yapacagiz.

if [ $# -lt 1 ]
then
    echo "Lutfen dosya ismi giriniz !!!"
    echo "Kullanim sekli=$0 dosyaismi"
fi

dosya="$1"

if [  -d "$dosya" ]
then
    echo "$dosya bir dizindir"
elif [  -f "$dosya" ]
then
    echo "$dosya normal bir dosyadir"
elif [  -e "$dosya" ]
then
    echo "$dosya ozel bir dosyadir"
else
    if (($#==1))
    then
    echo "$dosya seklinde bir dosya/dizin yoktur."
    fi
fi

