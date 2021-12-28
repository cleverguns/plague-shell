#!/bin/bash
source /home/user/plague-shell/plague-shell/colors.sh
function hardware_info(){
OS="$(uname -n)"
KERNEL="$(uname -r)"
echo -e "\n\n${BWhite}      OS: ${BGreen} ${OS}"
echo -e "     ${BWhite} Kernel: ${BGreen} ${KERNEL}"
}

