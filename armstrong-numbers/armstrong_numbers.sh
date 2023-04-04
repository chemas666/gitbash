#!/usr/bin/env bash


input_length="${#1}"
armstrong=0
while read -r -n1 char; do
    armstrong=$((armstrong + char ** input_length))
done <<<"$1"



if [ "$armstrong" -eq "$1" ]; then
    echo true
else
    echo false
fi


