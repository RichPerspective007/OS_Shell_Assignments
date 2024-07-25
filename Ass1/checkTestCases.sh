#!/bin/bash

for script in ./scripts/*; do
	source $script
	echo -e "Script: $script\n"
	testCase=0
	passed=0
	while IFS= read -r line; do
		a=$(cut -d "," <<< $line -f1)
		b=$(cut -d "," <<< $line -f2)
		c=$(cut -d "," <<< $line -f3)
		out=$(gcd $a $b 2>error.log)
		error=$(cat error.log)
		testCase=$(($testCase+1))
		echo "Test Case $testCase:"
		if [ ! -z "$error" ]; then
			echo -e "\tError: $error"
		else
			if [ -z "$out" ]; then
				echo -e "\tExpected Output: $c\n\tYour Output: No Output\n\tResult: Failed\n"
			else
				if [ $c == $out ]; then
					echo -e "\tExpected Output: $c\n\tYour Output: $out\n\tResult: Passed\n"
					passed=$(($passed+1))
				else
					echo -e "\tExpected Output: $c\n\tYour Output: $out\n\tResult: Failed\n"
				fi
			fi
		fi
	done < "testCases.txt"
	echo "Test Cases Passed: $passed/$testCase"
done
