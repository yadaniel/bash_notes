#!/bin/bash

# use declare -<TAB><TAB> on command line to see all type options
# -a  -A  -f  -F  -g  -i  -l  -n  -p  -r  -t  -u  -x

# -A associative array
declare -A SIZE_MAP
SIZE_MAP[KB]=$((2**10))
SIZE_MAP[MB]=$((2**20))
SIZE_MAP[GB]=$((2**30))

echo ${SIZE_MAP[*]}
echo ${SIZE_MAP[@]}
echo ${SIZE_MAP[KB]}
echo ${SIZE_MAP[MB]}
echo ${SIZE_MAP[GB]}
echo ${SIZE_MAP[TB]}   # missing key

# -a indexed array
declare -a NUMS
NUMS[0]=$((2**10))
NUMS[1]=$((2**20))
NUMS[2]=$((2**30))
NUMS[10]=$((2**0))
echo ${NUMS[*]}
echo ${NUMS[@]}
echo ${NUMS[0]}
echo ${NUMS[1]}
echo ${NUMS[2]}
echo ${NUMS[3]}     # missing key
echo ${NUMS[10]}

# -f function
# declare -f
# show definitions of all defined functions
# declare -f <fname>
# show definition of the function fname

# declare -F 
# show function name only

# -r readonly
declare -r KB=$((2**10))
declare -r MB=$((2**20))
declare -r GB=$((2**30))
# KB=1023     # error

# -i integer
declare -i NUMBER
NUMBER=100
# NUMBER="100foo"
echo ${NUMBER}

# -ri combination
declare -r -i CONST_NUMBER=1234
# declare -ri CONST_NUMBER="foo"
# CONST_NUMBER=4321     # readonly error
echo ${CONST_NUMBER}

# -g global when used within function

# -x export into environment on command line, check with env
export FOO="foo"
declare -x FOO="foo"

# -l lower case
# -u upper case
declare -l lcase
declare -u ucase
lcase="FOO"
ucase="foo"
echo ${lcase}   # foo
echo ${ucase}   # FOO

# show how variables values and type
declare -p lcase
declare -p ucase
declare -p SIZE_MAP
declare -p NUMS
declare -p KB
declare -p MB
declare -p GB
declare -p FOO
declare -p NUMBER
declare -p CONST_NUMBER



