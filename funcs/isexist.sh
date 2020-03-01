#!/bin/bash

function isexist(){
	source_str=$1
	test_str=$2

	strings=$(echo $source_str | sed 's/:/ /g')
	for str in strings
	do
		if [ $test_str == $str ] ; then
			return 0
		fi
	done

	return 1
}

