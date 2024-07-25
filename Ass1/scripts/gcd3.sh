#!/bin/bash

gcd() {
  	a=$1
  	b=$2
  	if ! [[ $a =~ ^[0-9]+$ ]] || ! [[ $b =~ ^[0-9]+$ ]]; then
    		echo "NotPossible"
    		return
  	fi
  	if [ $b -eq 0 ]; then
    		echo $a
  	else
    		gcd $b $((a % b))
  	fi
}
