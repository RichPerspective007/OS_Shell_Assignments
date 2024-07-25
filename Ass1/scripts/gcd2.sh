#!/bin/bash

gcd() {
  	a=$1
  	b=$2
  	if ! [[ $a =~ ^[0-9]+$ ]] || ! [[ $b =~ ^[0-9]+$ ]]; then
    		echo "NotPossible"
    		return
  	fi
  	for ((i=1; i<=a && i<=b; i++)); do
    		if [ $((a % i)) -eq 0 ] && [ $((b % i)) -eq 0 ]; then
      			gcd=$i
    		fi
  	done
  	echo $gcd
}
