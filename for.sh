#! /bin/bash

# Kullanim-1
for (( i=0;i<5;i++ ))
do
    echo $i
done

# Kullanim-2
for i in ls pwd 
do
    echo "------$i--------"
    $i
    echo
done

# Kullanim-3
for i in {1..10..2}
do
echo $i
done