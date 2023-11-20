#!/bin/bash
clear
echo -e "                Installing \033[91mBanteng \033[0mDDoS Tool,"
echo -e "                Please Wait..."
python3 -m pip install --upgrade pip > /dev/null 2>&1
clear
echo -e "\033[92m[*]\033[0m \033[91mBanteng \033[0mDDoS Tool was installed successfully."
sleep 1
banner

banner() {
  clear
printf "\033[36m╦╔═ ╔═╗ ╦ ╦   ╦   ╔═╗ ╔═╗ ╦ ╔╗╔  \e[0m\n"
printf "\033[36m╠╩╗ ║╣  ╚╦╝   ║   ║ ║ ║ ╦ ║ ║║║  \e[0m\n"
printf "\033[36m╩ ╩ ╚═╝  ╩    ╩═╝ ╚═╝ ╚═╝ ╩ ╝╚╝  \e[0m\n"
echo -e "\033[33mAKSES BUAT DAPET KEY \033[36m>> \033[33mhttps://adpaylink.com/KeyLogin"
login
}

login() {
  echo " "
printf "\033[31m• \033[33mMASUKAN KEY BUAT LOGIN \e[0m\n"
read -p "KEY AKSES >> " apa 
if [ "$apa" = "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" ]
then
printf "\033[36m KAY PENGGUNA BENAR SILAKAN MENGOPERASIKAN \e[0m\n"
python3 ddosV1.py
else
sleep 1
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Key Salah \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m] \033[31m• \033[33mCoba Ulangi ! \e[0m\n"
sleep 1
banner
fi
}
banner