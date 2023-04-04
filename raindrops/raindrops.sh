#!/usr/bin/env bash

(( $1 % 3 )) || resultado+=Pling
 (( $1 % 5 )) || resultado+=Plang
(( $1 % 7 )) || resultado+=Plong

echo ${resultado:-$1}
