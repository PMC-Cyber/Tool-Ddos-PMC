#!/bin/bash
## ANSI colors (FG & BG)
R="$(printf '\033[31m')"  
GR="$(printf '\033[32m')"  
O="$(printf '\033[33m')"  
BL="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  
CYAN="$(printf '\033[36m')"  
WT="$(printf '\033[37m')" 
BLK="$(printf '\033[30m')"
RBG="$(printf '\033[41m')"  
GRBG="$(printf '\033[42m')"  
OBG="$(printf '\033[43m')"  
BLBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  
CYANBG="$(printf '\033[46m')"  
WTBG="$(printf '\033[47m')" 
BLKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

clear
echo -e "                Installing \033[91mTUPAI \033[0mATTACKER Tool,"
echo -e "                Please Wait..."
clear
echo -e "\033[92m[*]\033[0m \033[91mTUPAI \033[0mATTACKER Tool was installed successfully."
sleep 1

banner1() {
  clear
printf "\033[36m┏┳┓ ┏━┓ ┏━┓ ┳   ┏━┓    ┳┓ ┏┳┓ ┏━┓ ┏━┓   ┏━┓ ┏┳┓ ┏━┓ \e[0m\n"
printf "\033[36m ┃  ┃ ┃ ┃ ┃ ┃   ┗━┓    ┃┃  ┃┃ ┃ ┃ ┗━┓   ┣━┛ ┃┃┃ ┃\e[0m\n"
printf "\033[36m ┻  ┗━┛ ┗━┛ ┻━┛ ┗━┛    ┻┛ ━┻┛ ┗━┛ ┗━┛   ┻   ┻ ┻ ┗━┛  \e[0m\n"
echo -e "\033[33mANDA MENGGUNAKAN DDOS TUPAI ATTACKER BUAT MASUK \033[36m>> \033[33mBISA KETIKKAN \033[37mOPEN DOS"
}

pilihan() {
  banner1
echo " "
echo $WT" OPEN TO DDOS V2 BY PURWOKERTO MALWARE CYBER "
echo " "
echo $R"[${O}01${R}] ${CYAN}TUPAI V1"
echo $R"[${O}02${R}] ${CYAN}TUPAI V2"
echo $R"[${O}00${R}] ${CYAN}EXIT "
echo " "
read -p $'  \e[1;31m• Input >>\e[0m\e[1;96m  \en' pmc
if [[ $pmc == 01 || $pmc == 01 ]]; then
python ddosV3JEK1.py
elif [[ $pmc == 02 || $pmc == 02 ]]; then
python ddosV3JEK2.py
elif [[ $pmc == 00 || $pmc == 00 ]]; then
banner1
bash install.sh
else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
pilihan
fi
}

banner() {
  clear
printf "\033[36m┏┳┓ ┏━┓ ┏━┓ ┳   ┏━┓    ┳┓ ┏┳┓ ┏━┓ ┏━┓   ┏━┓ ┏┳┓ ┏━┓ \e[0m\n"
printf "\033[36m ┃  ┃ ┃ ┃ ┃ ┃   ┗━┓    ┃┃  ┃┃ ┃ ┃ ┗━┓   ┣━┛ ┃┃┃ ┃\e[0m\n"
printf "\033[36m ┻  ┗━┛ ┗━┛ ┻━┛ ┗━┛    ┻┛ ━┻┛ ┗━┛ ┗━┛   ┻   ┻ ┻ ┗━┛  \e[0m\n"
echo -e "\033[33mANDA MENGGUNAKAN DDOS TUPAI ATTACKER BUAT MASUK \033[36m>> \033[33mBISA KETIKKAN \033[37mOPEN DOS"
login
}

login() {
  echo " "
printf "\033[31m• \033[33mWELCOME TO DDOS INJEKSI \e[0m\n"
read -p "INPUT >> " apa 
if [ "$apa" = "OPEN DOS" ]
then
printf "\033[36m INPUT BENAR SEDANG MASUK MOHON DI TUNGGU... \e[0m\n"
pilihan
else
sleep 1
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Key Salah \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m] \033[31m• \033[33mCoba Ulangi ! \e[0m\n"
sleep 1
banner
fi
}

banner