#!/usr/bin/env bash

if [[ $# != 2 ]]; then
  echo 'Usage: hamming.sh <string1> <string2>'
  exit 1
fi



if [[ "${#1}" != "${#2}" ]]; then
  echo 'strands must be of equal length'
  exit 1
fi


contador=0
for ((i = 0; i < ${#1}; i++)); do
  [[ "${1:$i:1}" != "${2:$i:1}" ]] && contador=$((contador + 1))
done
echo $contador
