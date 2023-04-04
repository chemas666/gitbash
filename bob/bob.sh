#!/usr/bin/env bash

set -o errexit
set -o nounset


main(){
    if (( "$#"==0 )) ; then
        echo 'Fine. Be that way!'
        exit 0
	fi
    arg="$1"
    if [[ "$arg" =~ \?[[:space:]]*$ && "$arg" =~ [A-Z] &&  ! "$arg" =~ [a-z]  ]] ; then
        echo "Calm down, I know what I'm doing!"
    elif [[  ( "$arg" =~ [A-Z]  &&  ! "$arg" =~ [a-z] ) ]] ; then
        echo "Whoa, chill out!"
        elif [[ "$arg" =~ \?[[:space:]]*$ ]] ; then
        echo "Sure."
    elif [[ "$arg" =~ ^[[:space:]]*$ ]] ; then
        echo 'Fine. Be that way!'
    else
        echo "Whatever."
      
    fi
    }
main "$@"
