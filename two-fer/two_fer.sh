#!/usr/bin/env bash

nombre="you"
          
if (($#>0)); then
          
	nombre="$1"
fi
                  
echo "One for $nombre, one for me."
