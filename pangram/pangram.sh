#!/usr/bin/env bash

alfabeto=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
letras=$(echo ${1,,}|tr -d -c [^a-z])

       
for letra in ${alfabeto[@]}; do
    if ! [[ "${letras}" =~ .*${letra}+.* ]]; then
        echo false;
        exit 0;
   fi
done


echo true;
