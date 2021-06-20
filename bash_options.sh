#!/bin/bash

# exit immediately when command returns non-zero, e.g. false
set -e

# set debug to print each line
set -x

# error when variable referenced before it is set
set -u

# this sets to empty string
# VAR=
# this unsets the variable
# unset VAR
#
# VAR unset when not defined previously in script and in environment
echo 'befor referencing ${VAR}'
echo ${VAR}
echo 'after referencing ${VAR}'

# echo "before find"
# find "non_existent_file"
# echo "after find"

echo "before separate shell"
false
(echo "separate shell"; exit 0;)
echo "after separate shell"

