function prompt(){
source /home/user/.config/plague-shell/plague-shell/files/hardware-info/hardware-info.sh

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
  \e[1;31m  [\e[1;33mWelcome to  Plague Shell\e[1;31m] ◄►\e[1;31m [\e[1;33mSpreading Diseases to your security\e[1;31m]\e[0m 
"
PS1="\e[48;5;${VIOLET1}\u▶\e[48;5;${BLUEGREEN2}\h▶\e[48;5;${BLUEGREEN1}\w──▶${RESET}"
else
echo -e "
\e[31m ${BANNER}
\e[1;31m  [\e[1;33mWelcome to  Plague Shell\e[1;31m] ◄►\e[1;31m [\e[1;33mSpreading Diseases to your security\e[1;31m]\e[0m 

"

PS1="\e[48;5;${RED}\u▶\e[48;5;${ORANGE}\h▶\e[48;5;${DARKRED}\w──▶${RESET}"
fi

}

hardware_info


