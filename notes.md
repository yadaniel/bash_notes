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
  
# using set-e  
set -e => exit the script on first command exiting with non-zero exit code  
note following exceptions  
    subshell => (false)  
    optional command that is executed when first part does not fail => false || optional  
    command used as if-condition => if false; do then fi  
    pipeline => false | true  
  

