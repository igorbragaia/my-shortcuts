#!/bin/bash
RESTORE='\033[0m'
RED='\033[00;31m'
GREEN='\033[00;32m'
YELLOW='\e[0;33m'

function devhelp {
    echo -e "-------------------------------------------------------------------"
    echo -e "MacOS command line shortcuts"
    echo -e ""
    echo -e "${GREEN}devhelp${RESTORE}           Prints this ${RED}help${RESTORE}"
    echo -e ""
    echo -e "${GREEN}ll${RESTORE}                Detailed ${RED}ls${RESTORE}. Example: ll ~/"
    echo -e ""
    echo -e "${GREEN}code${RESTORE}              Opens ${RED}VSCode${RESTORE} for the given path. Example: code ."
    echo -e "-------------------------------------------------------------------"
}

# useful ls
# usage $ ls ~/
function ll {
    ls -help -G $*;
}

# open vscode
# usage: $ code .
function code { 
    VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;
}
