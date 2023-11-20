
#!/bin/bash
# recode ngotak tolol 
#jangan lupa bre startednya ok >.-

__version__="1.0"


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

#------------------------ Check Internet Status--------------------#
check_status() {
    echo -ne "\n${GR}[${WT}+${GR}]${CYAN} Internet Status : "
    timeout 3s curl -fIs "https://api.github.com" > /dev/null
    [ $? -eq 0 ] && echo -e "${GR}Online${WT}" || echo -e "${R}Offline${WT}"
}

#-----------------------about banner-------------------------------#
aboutbanner() {
   clear
  banner2
  printf "\e[0m\n"
		echo "${GR} Author   ${R}:  ${O}./B7 ${R}[ ${O}PMC MALWARE TEAM ${R}]"
		echo "${GR} Github   ${R}:  ${CYAN}https://github.com/Unlimitid-Crak-You"
		echo "${GR} Social   ${R}:  ${CYAN}https://instagram.com/rizal_febriian"
		echo "${GR} Version  ${R}:  ${O}${__version__}"
	
printf "\e[0m\n"
		echo "${WT} ${RBG}Warning:${RESETBG}"
		echo "${CYAN}  This Tool is made for educational purpose"
		  echo "only ${R}!${WT}${CYAN} Author will not be responsible for"
		  echo "any misuse of this toolkit ${R}!${WT}"
}

#------------------------Script termination------------------------$
exit_on_signal_SIGINT() {
    { printf "\n\n%s\n\n" "${R}[${WT}!${R}]${R} Program Interrupted." 2>&1; reset_color; }
    exit 0
}

exit_on_signal_SIGTERM() {
    { printf "\n\n%s\n\n" "${R}[${WT}!${R}]${R} Program Terminated." 2>&1; reset_color; }
    exit 0
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

#-------------------------- Reset terminal colors------------------------#
reset_color() {
    tput sgr0   # reset attributes
    tput op     # reset color
    return
}


#-------------------------------- Exit message-------------------------#
msg_exit() {
    { clear; banner1; }
    echo -e "${GRBG}${BLK} Thank you for using this tool. Have a good day.${RESETBG}\n"
    { reset_color; exit 0; }
    sleep 2
    clear
}

#---------------------------- Banner 1 --------------------------------#
banner1() {
printf "╔╦╗ ╦ ╦ ╔═╗ ╔╗╔ ╦╔═ ╔═╗   ╦ ╦ ╔═╗ ╦ ╦  \e[0m\n"
printf " ║  ╠═╣ ╠═╣ ║║║ ╠╩╗ ╚═╗   ╚╦╝ ║ ║ ║ ║  \e[0m\n"
printf " ╩  ╩ ╩ ╩ ╩ ╝╚╝ ╩ ╩ ╚═╝    ╩  ╚═╝ ╚═╝  \e[0m\n"

}

#---------------------------- Banner 2 --------------------------------#
banner2() {
  clear
  check_status
  printf "\e[0m\n"
echo $GR"┏┳┓ ┏━┓ ┏━┓ ┳   ┏━┓    ┳┓ ┏┳┓ ┏━┓ ┏━┓   ┏━┓ ┏┳┓ ┏━┓  "
echo $GR" ┃  ┃ ┃ ┃ ┃ ┃   ┗━┓    ┃┃  ┃┃ ┃ ┃ ┗━┓   ┣━┛ ┃┃┃ ┃"
echo $GR" ┻  ┗━┛ ┗━┛ ┻━┛ ┗━┛    ┻┛ ━┻┛ ┗━┛ ┗━┛   ┻   ┻ ┻ ┗━┛  "
printf "\e[1;32m                            In Code \e[0m\e[1;33mBash  \e[0m\e[1;31mVersion : ${__version__}    \e[0m\n"
printf "\e[0m\n"
printf "   \e[0m\e[1;37m┌─────────────────────────────────────────┐ \e[0m\n"
printf "\e[0m\e[1;33m   \e[0m\e[1;37m│  \e[0m\e[1;33mCreated By ./B7 \e[0m\e[1;31m(\e[0m\e[1;33m PMC MALWARE CYBER \e[0m\e[1;31m)  \e[0m\e[1;37m│  \e[0m\n"
printf "   └─────────────────────────────────────────┘"
printf "\e[0m\n"
}

#---------------------------- Banner --------------------------------#
banner() {
clear
check_status
printf "\e[0m\n"
printf "\e[0m\e[1;32m   ┳ ┳ ┏━┓ ┳   ┏━┓ ┏━┓ ┏┳┓ ┏━┓   ┏┳┓ ┏━┓   ┳ ┳ ┏━┓ ┳ ┳   \e[0m\n"
printf "\e[0m\e[1;32m   ┃┃┃ ┣┫  ┃   ┃ ┃ ┃   ┃┃┃ ┣┫     ┃  ┃ ┃   ┗┳┛ ┃ ┃ ┃ ┃   \e[0m\n"
printf "\e[0m\e[1;32m   ┗┻┛ ┗━┛ ┻━┛ ┗━┛ ┗━┛ ┻ ┻ ┗━┛    ┻  ┗━┛    ┻  ┗━┛ ┗━┛   \e[0m\n"
printf "\e[1;32m                            In Code \e[0m\e[1;33mBash  \e[0m\e[1;31mVersion : ${__version__}    \e[0m\n"
printf "\e[0m\n"
printf "   \e[0m\e[1;37m┌─────────────────────────────────────────┐ \e[0m\n"
printf "\e[0m\e[1;33m   \e[0m\e[1;37m│  \e[0m\e[1;33mCreated By ./B7 \e[0m\e[1;31m(\e[0m\e[1;33m PMC MALWARE CYBER \e[0m\e[1;31m)  \e[0m\e[1;37m│  \e[0m\n"
printf "   └─────────────────────────────────────────┘"
printf "\e[0m\n"
}

#---------------------------- Menu --------------------------------#
menu() {
printf "\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m01\e[0m\e[1;31m]\e[0m\e[1;33m DOOS - PMC V1\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m02\e[0m\e[1;31m]\e[0m\e[1;33m DDOS - PMC V2\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m03\e[0m\e[1;31m]\e[0m\e[1;33m DDOS - PMC V3\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37mUP\e[0m\e[1;31m]\e[0m\e[1;33m UPDATE SCRIPT\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m99\e[0m\e[1;31m]\e[0m\e[1;33m ABOUT AUTHOR\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m00\e[0m\e[1;31m]\e[0m\e[1;33m EXIT/LOGOUT\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m INFORMASI \e[0m\e[1;31m]\e[0m\e[1;33m APABILA MAU CONTAK ADMIN BISA KALIAN KETIK AJA \e[0m\e[1;96mKONTAK\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m[\e[0m\e[1;37m~\e[0m\e[1;31m]\e[0m\e[1;92m Select An Option \e[0m\e[1;96m: \e[0m\e[1;93m\en' option

if [[ $option == 1 || $option == 01 ]]; then
ddos1
elif [[ $option == 2 || $option == 02 ]]; then
ddos2
elif [[ $option == 3 || $option == 03 ]]; then
ddos3
elif [[ $option == KONTAK || $option == KONTAK ]]; then
contak
elif [[ $option == UP || $option == UP ]]; then
update
elif [[ $option == 2 || $option == 99 ]]; then
about
elif [[ $option == 0 || $option == 00 ]]; then
sleep 1
printf "\e[0m\n"
printf "\e[0m\n"
msg_exit

else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner2
menu
fi
}

#---------------------------INSTALL BAHAN-----------------------#
install_bahan() {
  banner
  echo " "
  printf " \e[0m\e[1;93mSEBELUM LANJUT INSTALL BAHANNYA DAN SESUAI TIPE OS YG DI GUNAKAN \e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m TERMUX OS\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m LINUX OS\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m03\e[0m\e[1;91m]\e[0m\e[1;93m EXIT\e[0m\n"
printf "\e[0m\n"
read -p $'\e[0;32m• Input \e[1;31m>>\e[0m\e[1;96m  \en' bahan

if [[ $bahan == 02 || $bahan == 02 ]]; then
clear
echo " "
echo "╦ ╔╗╔ ╔═╗ ╔╦╗ ╔═╗ ╦   ╦   ╦ ╔╗╔ ╔═╗  "
echo "║ ║║║ ╚═╗  ║  ╠═╣ ║   ║   ║ ║║║ ║ ╦ "
echo "╩ ╝╚╝ ╚═╝  ╩  ╩ ╩ ╩═╝ ╩═╝ ╩ ╝╚╝ ╚═╝ ╻ ╻ ╻ ╻ ╻  "
echo " "
echo $O"Installing packages......."
echo " "
sudo apt-get update && upgrade
sudo apt-get install python
sudo apt-get install python2
sudo apt-get install python3
sudo apt-get install git
pip install tqdm
sudo apt-get install python-pip
pip install pyfiglet
pip install --upgrade setuptools  
sleep 1
clear
echo " "
printf " \e[0m\e[1;93mINSTALLING SELESAI MENCOBA MASUK !\e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
sleep 1
clear
banner2
menu
elif [[ $bahan == 01 || $bahan == 01 ]]; then
clear
echo " "
echo "╦ ╔╗╔ ╔═╗ ╔╦╗ ╔═╗ ╦   ╦   ╦ ╔╗╔ ╔═╗  "
echo "║ ║║║ ╚═╗  ║  ╠═╣ ║   ║   ║ ║║║ ║ ╦ "
echo "╩ ╝╚╝ ╚═╝  ╩  ╩ ╩ ╩═╝ ╩═╝ ╩ ╝╚╝ ╚═╝ ╻ ╻ ╻ ╻ ╻  "
echo " "
echo $O"Installing packages......."
echo " "
pkg update && upgrade
pkg install python
pkg install python2
pkg install python3
pkg install python-pip
pkg install git
pip install tqdm
pip install pyfiglet
pip install --upgrade setuptools
sleep 1
clear
echo " "
printf " \e[0m\e[1;93mINSTALLING SELESAI MENCOBA MASUK !\e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
sleep 1
clear
banner2
menu
elif [[ $bahan == 03 || $bahan == 03 ]]; then
msg_exit
else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
install_bahan
fi
}

#----------------------------UPDATE SCRIPT-----------------#
update() {
clear
printf "\e[0m\n"
sleep 1
printf "\e[1;31mFollow me one github\e[0m" 
 echo 
 echo -e "\E[1;33m:::::::::::::: \e[97m  PMC MALWARE CYBER  \E[1;33m:::::::::::::::"
printf "\e[0m\n"
printf "\e[97m╦╔═ ╔═╗ ╔╗╔ ╔═╗ ╦ ╦═╗ ╔╦╗ ╔═╗ ╔═╗ ╦  \e[0m\n"
printf "\e[97m╠╩╗ ║ ║ ║║║ ╠╣  ║ ╠╦╝ ║║║ ╠═╣ ╚═╗ ║  \e[0m\n"
printf "\e[97m╩ ╩ ╚═╝ ╝╚╝ ╚   ╩ ╩╚═ ╩ ╩ ╩ ╩  ═╝ ╩  \e[0m\n"
printf "\e[0m\n"
printf " \e[0m\e[1;93mAPAKAH ANDA AKAN MENGUPDATE SCRIPT INI \e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m NO\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m YES\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' update

if [[ $update == 1 || $update == 01 ]]; then
banner2
menu
elif [[ $update == 2 || $update == 02 ]]; then
clear
printf "\e[0m\n"
printf "\e[97m╦ ╦ ╔═╗ ╔╦╗ ╔═╗ ╔╦╗ ╔═╗  \e[0m\n"
printf "\e[97m║ ║ ╠═╝  ║║ ╠═╣  ║  ║╣\e[0m\n"
printf "\e[97m╚═╝ ╩   ═╩╝ ╩ ╩  ╩  ╚═╝ \e[0m\n"
cd $HOME 
cd
rm -rf Tool-Ddos-PMC
git clone https://github.com/Unlimited-Crack-You/Tool-Ddos-PMC.git
cd Tool-Ddos-PMC
sleep 1
clear
echo ""
printf " \e[0m\e[1;93mUPDATE SELESAI AKAN MENCOBA MASUK KEMBALI \e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
sleep 2
bash install.sh
clear

else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
update
fi
}

#----------------------------About ----------------------------#
about() {
  aboutbanner
		  printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m Return To Main Menu\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m Exit\e[0m\n"
printf "\e[0m\n"
		read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' about

if [[ $about == 1 || $about == 01 ]]; then
banner2
menu
elif [[ $about == 2 || $about == 02 ]]; then
printf "\e[0m\n"
printf "\e[0m\n"
clear
msg_exit
else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
about
fi
}

#----------------------------Banner pmc ----------------------------#
ddos1() {
banner2
sleep 1
echo " "
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m SEDANG MENGOPERASIKAN SISTEM...... \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
echo $WT" OPEN TO DDOS V1 BY PURWOKERTO MALWARE CYBER "
echo $WT" KETIK ${CYAN}YA ${WT}BUAT MASUK KETIK ${CYAN}NO ${WT}BUAT EXIT"
echo " "
read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' pmc
if [[ $pmc == YA || $pmc == YA ]]; then
bash setup.sh
elif [[ $pmc == NO || $pmc == NO ]]; then
banner2
menuex
else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
ddos1
fi
}

menuex() {
sleep 1
printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m Return To Main Menu\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m Exit\e[0m\n"
printf "\e[0m\n"
		read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' pmc
if [[ $pmc == 1 || $pmc == 01 ]]; then
banner2
menu
elif [[ $pmc == 2 || $pmc == 02 ]]; then
printf "\e[0m\n"
printf "\e[0m\n"
clear
msg_exit
else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
ddos1
fi
}

#----------------------------Costum Banner ----------------------------#
contak() {
  banner2
  echo " "
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m SILAKAN BISA HUBUNGI AUTHOR BUAT RIQUES SCRIPT \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
echo $WT" JANGAN LUPA MAMPIR DI SOSEMD KAMI .. :)"
  printf "\e[0m\n"
  printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m Contak Admin \e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m Return To Main Menu\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m03\e[0m\e[1;91m]\e[0m\e[1;93m Exit\e[0m\n"
printf "\e[0m\n"
		read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' csb

if [[ $csb == 1 || $csb == 01 ]]; then
am start -a android.intent.action.VIEW https://wa.me/6283137560358
contak
elif [[ $csb == 2 || $csb == 02 ]]; then
banner2
menu
elif [[ $csb == 2 || $csb == 03 ]]; then
printf "\e[0m\n"
printf "\e[0m\n"
clear
msg_exit
else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
contak
fi
}

install_bahan
