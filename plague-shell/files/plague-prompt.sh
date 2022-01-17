#!/bin/bash
source /home/user/.config/plague-shell/plague-shell/files/bgcolors.sh
source /home/user/.config/plague-shell/plague-shell/files/colors.sh
source /home/user/.config/plague-shell/plague-shell/files/hardware-info/hardware-info.sh
function prompt(){
DIR=$(pwd)
BANNER="

 ██▓███   ██▓    ▄▄▄        ▄████  █    ██ ▓█████   ██████  ██░ ██ ▓█████  ██▓     ██▓    
▓██░  ██▒▓██▒   ▒████▄     ██▒ ▀█▒ ██  ▓██▒▓█   ▀ ▒██    ▒ ▓██░ ██▒▓█   ▀ ▓██▒    ▓██▒    
▓██░ ██▓▒▒██░   ▒██  ▀█▄  ▒██░▄▄▄░▓██  ▒██░▒███   ░ ▓██▄   ▒██▀▀██░▒███   ▒██░    ▒██░    
▒██▄█▓▒ ▒▒██░   ░██▄▄▄▄██ ░▓█  ██▓▓▓█  ░██░▒▓█  ▄   ▒   ██▒░▓█ ░██ ▒▓█  ▄ ▒██░    ▒██░    
▒██▒ ░  ░░██████▒▓█   ▓██▒░▒▓███▀▒▒▒█████▓ ░▒████▒▒██████▒▒░▓█▒░██▓░▒████▒░██████▒░██████▒
▒▓▒░ ░  ░░ ▒░▓  ░▒▒   ▓▒█░ ░▒   ▒ ░▒▓▒ ▒ ▒ ░░ ▒░ ░▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒░░ ▒░ ░░ ▒░▓  ░░ ▒░▓  ░
░▒ ░     ░ ░ ▒  ░ ▒   ▒▒ ░  ░   ░ ░░▒░ ░ ░  ░ ░  ░░ ░▒  ░ ░ ▒ ░▒░ ░ ░ ░  ░░ ░ ▒  ░░ ░ ▒  ░
░░         ░ ░    ░   ▒   ░ ░   ░  ░░░ ░ ░    ░   ░  ░  ░   ░  ░░ ░   ░     ░ ░     ░ ░   
             ░  ░     ░  ░      ░    ░        ░  ░      ░   ░  ░  ░   ░  ░    ░  ░    ░  ░

"
if [ "$EUID" -ne 0 ];then
echo -e "
\e[94m${BANNER}
  \e[1;31m  [\e[1;33mWelcome to  Plague Shell\e[1;31m] ◄►\e[1;31m [\e[1;33mSpreading Diseases to your security\e[1;31m]\e[0m"
  PS1="
${BWhite}${VIOLET1}\\u${BGreen}▶${BWhite}${BLUEGREEN2}\\h${BGreen}▶${BWhite}${BLUEGREEN1}[${BYellow}\\w${BWhite}]──${BGreen}"\$"${Color_Off}"
else
echo -e "
\e[31m ${BANNER}
\e[1;31m  [\e[1;33mWelcome to  Plague Root Shell\e[1;31m] ◄►\e[1;31m [\e[1;33mSpreading Diseases to your security\e[1;31m]\e[0m"

PS1="
${BWhite}${RED}\u${BGreen}▶${BWhite}${DARKRED}\h${BGreen}▶${BWhite}${DARKRED}[${BYellow}\w${BWhite}]──${BRed}#${Color_Off}"
fi
}
prompt
