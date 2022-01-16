import shutil,os
from colorama import Fore
def copy_dir():
    hostname = os.getlogin()
    src = os.getcwd()
    cmd = lambda x : os.system(x)
    try:
        if os.path.isdir("/home/{hostname}/.config/plague-shell") == True:
            print(f"{Fore.WHITE}[{Fore.GREEN}+{Fore.WHITE}]Plague-shell directory is already present in ~/.config")
            cmd("ls ~/.config | grep 'plague-shell'")
        elif os.path.isdir("/home{hostname}/.config/plague-shell") == False:
            destination = shutil.copytree(src,f"/home/{hostname}/.config/plague-shell")
            if os.path.isdir("/home/{hostname}/.config/plague-shell") == True:
                print(f"{Fore.WHITE}[{Fore.GREEN}+{Fore.WHITE}]Successfully copied plague-shell directory to ~/.config")
                cmd("ls ~/.config | grep 'plague-shell'")
        else:
            print(f"{Fore.WHITE}[{Fore.RED}-{Fore.WHITE}]Copying plague-shell directory failed.")
    except Exception as Err:
            print(f"{Fore.WHITE}[{Fore.GREEN}+{Fore.WHITE}]Plague-shell directory is already present in ~/.config")

copy_dir()
