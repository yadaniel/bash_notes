# bash command history on cygwin
add to ~/.inputrc

# history completion
"\e[5~": history-search-backward
"\e[6~": history-search-forward

# sorting filenames containing numbers
ls | sort --version-sort

# touch file to reset date
touch -d 20190102 file
touch -r referencefile file

# type bash variables
use declare or typeset
declare -r VAR=123  # readonly
declare -i VAR=123  # integer
declare -a VAR=(1 2 3)  # array
declare -f  # show functions
declare -x  # show exported variables


