#!/bin/bash
clear
echo -e "                Installing \033[91mDDOS \033[0mINJEKSI Tool,"
echo -e "                Please Wait..."
pip3 install requests
pip3 install fake_headers
pip3 install colorama
pip3 install click
clear
echo -e "\033[92m[*]\033[0m \033[91mDDOS \033[0mINJEKSI Tool was installed successfully."
sleep 1
banner

banner() {
  clear
printf "\033[36m┏┳┓ ┏━┓ ┏━┓ ┳   ┏━┓    ┳┓ ┏┳┓ ┏━┓ ┏━┓   ┏━┓ ┏┳┓ ┏━┓ \e[0m\n"
printf "\033[36m ┃  ┃ ┃ ┃ ┃ ┃   ┗━┓    ┃┃  ┃┃ ┃ ┃ ┗━┓   ┣━┛ ┃┃┃ ┃\e[0m\n"
printf "\033[36m ┻  ┗━┛ ┗━┛ ┻━┛ ┗━┛    ┻┛ ━┻┛ ┗━┛ ┗━┛   ┻   ┻ ┻ ┗━┛  \e[0m\n"
echo -e "\033[33mANDA MENGGUNAKAN DDOS INJEKSI BUAT MASUK \033[36m>> \033[33mBISA KETIKKAN \033[37mOPEN"
login
}

login() {
  echo " "
printf "\033[31m• \033[33mWELCOME TO DDOS INJEKSI \e[0m\n"
read -p "INPUT >> " apa 
if [ "$apa" = "OPEN" ]
then
printf "\033[36m INPUT BENAR SEDANG MASUK MOHON DI TUNGGU... \e[0m\n"
python ddosV2.py
else
sleep 1
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Key Salah \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m] \033[31m• \033[33mCoba Ulangi ! \e[0m\n"
sleep 1
banner
fi
}
banner