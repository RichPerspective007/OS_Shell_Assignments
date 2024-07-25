#!/bin/bash

gcd() {
	
	a=$1
	b=$2
	if ! [[ $a =~ ^[0-9]+$ ]] || ! [[ $b =~ ^[0-9]+$ ]]; then
		echo "NotPossible"
    		return
  	fi
  	while [ $b -ne 0 ]; do
    		t=$b
    		b=$((a % b))
    		a=$t
  	done
  	echo $a
}
