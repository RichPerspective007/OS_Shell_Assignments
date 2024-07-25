#!/bin/bash

gcd() {
  	a=$1
  	b=$2
  	if ! [[ $a =~ ^[0-9]+$ ]] || ! [[ $b =~ ^[0-9]+$ ]]; then
    		echo "NotPossible"
    		return
  	fi
  	echo $((a + b / 2))
}