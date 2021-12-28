#!/bin/bash
source /home/$SUDO_USER/plague-shell/plague-shell/colors.sh
function aliasfunc(){
  echo "source $HOME/.config/synth-shell/alias.sh" >> $HOME/.bashrc
  echo "source /home/$SUDO_USER/.config/synth-shell/alias.sh" >> /home/$SUDO_USER/.bashrc
  echo -e "${White}[${BGreen}+${White}]alias.sh added!"
}

function bettercd(){
echo "source $HOME/.config/synth-shell/better-cd.sh" >> $HOME/.bashrc
echo "source /home/$SUDO_USER/.config/synth-shell/better-cd.sh" >> /home/$SUDO_USER/.bashrc
echo -e "${White}[${BGreen}+${White}]better-cd.sh added!"
}

function betterhistory(){
echo "source $HOME/.config/synth-shell/better-history.sh" >> $HOME/.bashrc
echo "source /home/$SUDO_USER/.config/synth-shell/better-history.sh" >> /home/$SUDO_USER/.bashrc

echo -e "${White}[${BGreen}+${White}]better-history.sh added!"
}

function betterls(){
echo "source $HOME/.config/synth-shell/better-ls.sh" >> $HOME/.bashrc
echo "source /home/$SUDO_USER/.config/synth-shell/better-ls.sh" >> /home/$SUDO_USER/.bashrc
echo -e "${White}[${BGreen}+${White}]better-ls.sh added!"
}

function setup(){
  echo -e "${White}[${BYellow}*"${White}]Checking if user is running as root...
  sleep 1
if [ $EUID -eq 0 ];
then
  echo -e "${White}[${BGreen}+${White}]User is running as root."
  sleep 1
  echo -e "${White}[${BGreen}+${White}]Setting up .bashrc file..."
echo "source /home/$SUDO_USER/plague-shell/plague-shell/plague-prompt.sh" >> $HOME/.bashrc
echo "source /home/$SUDO_USER/plague-shell/plague-shell/banner.sh" >> $HOME/.bashrc
echo 'alias banner="prompt"' >> $HOME/.bashrc

echo "source /home/$SUDO_USER/plague-shell/plague-shell/plague-prompt.sh" >> /home/$SUDO_USER/.bashrc
echo "source /home/$SUDO_USER/plague-shell/plague-shell/banner.sh" >> /home/$SUDO_USER/.bashrc
echo 'alias banner="prompt"' >> $HOME/.bashrc

  echo -e "${White}[${BGreen}+${White}] Sourcing main files success!"
  echo -e -n "${White}[${BYellow}*${White}]Do you want to install alias.sh from synth-shell?(y=1/n=0): "
read choice1
if [[ $choice1 == 0 ]];then
echo -e "${White}[${BRed}-${White}]Skipping alias.sh"
elif [[ $choice1 == 1 ]];then
 aliasfunc
else 
  echo -e "${White}[${BRed}-${White}]Invalid Option."
fi

echo -e -n "${White}[${BYellow}*${White}]Do you want to install better-cd.sh from synth-shell?(y=1/n=0): "
read choice2
if [[ $choice2 == 0 ]];
then
echo -e "${White}[${BRed}-${White}]Skipping better-cd.sh"
elif [[ $choice2 == 1 ]];
then
  bettercd
else
 echo -e "${White}[${BRed}-${White}]Invalid Option."
fi
echo -e -n "${White}[${BYellow}*${White}]Do you want to install better-history.sh from synth-shell?(y=1/n=0): "
read choice3
if [[ $choice3 == 0 ]];
then
echo -e "${White}[${BRed}-${White}]Skipping better-history.sh"
elif [[ $choice3 == 1 ]];
then
  betterhistory
else
 echo -e "${White}[${BRed}-${White}]Invalid Option."
fi

echo -e -n "${White}[${BYellow}*${White}]Do you want to install better-cd.sh from synth-shell?(y=1/n=0): "
read choice4
if [[ $choice4 == 0 ]];
then
echo -e "${White}[${BRed}-${White}]Skipping better-ls.sh"
elif [[ $choice4 == 1 ]];
then
  bettercd
else
 echo -e "${White}[${BRed}-${White}]Invalid Option."
fi


else
  echo -e "${White}[${BRed}-${White}]Please run the script as root."
fi
}
figlet Setup.sh
setup
