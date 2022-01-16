#!/bin/bash
source /home/user/.config/plague-shell/plague-shell/files/colors.sh
function install_synth-shell(){
if [[ -d "/home/$SUDO_USER/.config/synth-shell" ]]; then
return 1
else
echo -e "${BWhite}[${BGreen}+${BWhite}]Installing Synth-shell..."
sudo git clone https://github.com/andresgongora/synth-shell ~/.config/
fi
}
function copy_dir(){
if [[ -d "/home/$SUDO_USER/.config/plague-shell" ]]; then
return 1
else
sudo python3 ../config.sh
fi
}
function aliasfunc(){
  echo "source /home/$SUDO_USER/.config/synth-shell/alias.sh" >> $HOME/.bashrc
  echo "source /home/$SUDO_USER/.config/synth-shell/alias.sh" >> /home/$SUDO_USER/.bashrc
  echo -e "${White}[${BGreen}+${White}]alias.sh added!"
  echo -e "\n"
}

function bettercd(){
echo "source /home/$SUDO_USER/.config/synth-shell/better-cd.sh" >> $HOME/.bashrc
echo "source /home/$SUDO_USER/.config/synth-shell/better-cd.sh" >> /home/$SUDO_USER/.bashrc
echo -e "${White}[${BGreen}+${White}]better-cd.sh added!"
echo -e "\n"
}

function betterhistory(){
echo "source /home/$SUDO_USER/.config/synth-shell/better-history.sh" >> $HOME/.bashrc
echo "source /home/$SUDO_USER/.config/synth-shell/better-history.sh" >> /home/$SUDO_USER/.bashrc
echo -e "${White}[${BGreen}+${White}]better-history.sh added!"
echo -e "\n"
}

function betterls(){
echo "source /home/$SUDO_USER/.config/synth-shell/better-ls.sh" >> $HOME/.bashrc
echo "source /home/$SUDO_USER/.config/synth-shell/better-ls.sh" >> /home/$SUDO_USER/.bashrc
echo -e "${White}[${BGreen}+${White}]better-ls.sh added!"
echo -e "\n"
}

function setup(){
 copy_dir
  echo -e "${BWhite}[${BYellow}*${BWhite}]Checking if user is running as ${BRed}root."
  sleep 1
if [ $EUID -eq 0 ];
then
  echo -e "${BWhite}[${BGreen}+${BWhite}]User is running as ${BRed}root."
  sleep 1
  echo -e "${White}[${BGreen}+${BWhite}]Setting up .bashrc file..."
echo "source /home/$SUDO_USER/plague-shell/plague-shell/files/plague-prompt.sh" >> $HOME/.bashrc
echo "source /home/$SUDO_USER/plague-shell/plague-shell/files/banner.sh" >> $HOME/.bashrc
echo 'alias banner="prompt"' >> $HOME/.bashrc

echo "source /home/$SUDO_USER/plague-shell/plague-shell/files/plague-prompt.sh" >> /home/$SUDO_USER/.bashrc
echo "source /home/$SUDO_USER/plague-shell/plague-shell/files/banner.sh" >> /home/$SUDO_USER/.bashrc
echo 'alias banner="prompt"' >> /home/$SUDO_USER/.bashrc
install_synth-shell
  echo -e "${BWhite}[${BGreen}+${BWhite}] Sourcing main files success!"
  echo -e -n "\n${BWhite}[${BYellow}*${BWhite}]Do you want to install alias.sh from synth-shell?(y=1/n=0): "
read choice1
if [[ $choice1 == 0 ]];then
echo -e "${BWhite}[${BRed}-${BWhite}]Skipping alias.sh"
echo -e "\n"
elif [[ $choice1 == 1 ]];then
 aliasfunc
else 
  echo -e "${BWhite}[${BRed}-${BWhite}]Invalid Option."
fi

echo -e -n "${BWhite}[${BYellow}*${BWhite}]Do you want to install better-cd.sh from synth-shell?(y=1/n=0): "
read choice2
if [[ $choice2 == 0 ]];
then
echo -e "${BWhite}[${BRed}-${BWhite}]Skipping better-cd.sh"
echo -e "\n"
elif [[ $choice2 == 1 ]];
then
  bettercd
else
 echo -e "${BWhite}[${BRed}-${BWhite}]Invalid Option."
fi
echo -e -n "${BWhite}[${BYellow}*${BWhite}]Do you want to install better-history.sh from synth-shell?(y=1/n=0): "
read choice3
if [[ $choice3 == 0 ]];
then
echo -e "${BWhite}[${BRed}-${BWhite}]Skipping better-history.sh"
echo -e "\n"
elif [[ $choice3 == 1 ]];
then
  betterhistory
else
 echo -e "${BWhite}[${BRed}-${BWhite}]Invalid Option."
fi

echo -e -n "${BWhite}[${BYellow}*${BWhite}]Do you want to install better-cd.sh from synth-shell?(y=1/n=0): "
read choice4
if [[ $choice4 == 0 ]];
then
echo -e "${BWhite}[${BRed}-${BWhite}]Skipping better-ls.sh"
echo -e "\n"
elif [[ $choice4 == 1 ]];
then
  bettercd
else
 echo -e "${BWhite}[${BRed}-${BWhite}]Invalid Option."
fi


else
  echo -e "${BWhite}[${BRed}-${BWhite}]Please run the script as root."
fi

if grep -R "plague-shell" >/dev/null /home/$SUDO_USER/.bashrc;
then
  echo -e "\n${BWhite}[${BGreen}+${BWhite}]All set, now open a new terminal and see the changes(CTRL + Shift + T)."
else
  echo -e "\n${BWhite}[${BRED}-${BWhite}]Unknown Error Occurred."
fi

}

figlet Setup.sh
echo -e "${BWhite}Only run this script once."
setup
