#!/bin/bash
# $1 project folder | package.json file
# on project folder also use node_modules

# if bad input, print usage

# checks

# check if $1 is directory and if it contains package.json
file="$1"
if [[ -d $file ]]; then 
	file="$1/package.json"
fi

if [[ ! -e $file || $file != *package.json ]]; then 
	echo "file $1 not found 1"
	exit 1;
fi

jqRaw=$(jq -r '[.dependencies] | add | keys | unique | .[]' $file 2> /dev/null)

if [[ $? -ne 0 ]]; then
	echo "error reading $file"
	exit 1
fi
if [[ -z "$jqRaw" ]]; then
	echo "no dependencies"
	exit 1
fi

readarray -t dependencies < <(echo "$jqRaw")

for dependency in "${dependencies[@]}"; do
	
	# TODO check in node_modules
	license=$(find  "$(dirname $file)/node_modules/$dependency/" -name "LICENSE" 2> /dev/null)
	if [[ -z $? ]]; then 

		head -n 1 "$license"
	else 
		license=$(npm info $dependency license) #slow
#		if [[ $license == "SEE LICENSE IN "* ]]; then
#			echo 
		if [[ -z $license ]]; then
			echo "no license"
		else
			echo $license # also outputs "SEE LICENSE IN ... "
		fi
	fi

done
#elif [[ jq empty $1 ]] 
#then 
#	echo "file is json"
#fi

# check if directory contains package.json
#if [[ -e $1/package.json ]]
#then 
#	echo "bla"
#fi

#if [[ $1 == *package.json ]]
#then
#	echo true
#fi



## sources 
# stackoverflow.com
# 	
# unix.stackexchange.com
# 	
# baeldung.com/linux/reading-output-into-array
# linuxconfig.org
# 	
# github.com
# 	
