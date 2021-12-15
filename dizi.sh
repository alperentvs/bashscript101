#! /bin/bash

OS=( 'Linux' 'Windows' 'Unix' ) # Dizi tanimlama

echo "${OS[@]}" # Tum dizi elemanlarini gosterir

echo "${OS[2]}"

echo "${!OS[@]}" # Tum dizinin index sirasini gosterir

echo "${#OS[@]}" # Tum dizi eleman sayisini gosterir

OS[3]='Mac'

echo "${OS[@]}"

unset OS[1] # Dizinin 1. indexini cikartir

echo "${OS[@]}"

echo "${!OS[@]}"