# <img width="576" height="792" alt="red" src="https://github.com/user-attachments/assets/500a3692-8880-45c5-90f5-fafdf09d94f2" />

Protocole Bonjour/ZeroConf: https://fr.wikipedia.org/wiki/Apple_Bonjour

Outils utilisé

🧭 - avahi-daemon
🔍 - avahi-browser

## 🛠️ Installation d'outils & emoji

```
┌─[m0rph3u5@parrot]─[~]
└──╼ $sudo apt install avahi-daemon avahi-utils fonts-noto-color-emoji
```
## ⚙️ Config

Le service avahi-daemon dois etre demarrer

Soit automatiquement a chaque demarrage de la machine

```
┌─[m0rph3u5@parrot]─[~]
└──╼ $sudo systemctl enable avahi-daemon
```

Ou a la main

```
┌─[m0rph3u5@parrot]─[~]
└──╼ $sudo systemctl start avahi-daemon
```
## 👁️ Demo

```
┌─[m0rph3u5@parrot]─[~/Desktop]
└──╼ $./SnAff.sh

MP""""""`MM          MMP"""""""MM .8888b .8888b 
M  mmmmm..M          M' .mmmm  MM 88   " 88   " 
M.      `YM 88d888b. M         `M 88aaa  88aaa  
MMMMMMM.  M 88'  `88 M  MMMMM  MM 88     88     
M. .MMM'  M 88    88 M  MMMMM  MM 88     88     
Mb.     .dM dP    dP M  MMMMM  MM dP     dP     
MMMMMMMMMMM          MMMMMMMMMMMM   

by M0rPH3U53
      
🦈 Scan...100%
 
[+] Services
 
[foo.local]	[192.168.56.253]	[8080]	["version=1.0"
[foo.local]	[192.168.56.253]	[80]	["version=1.0"
[foo.local]	[192.168.56.253]	[22]	["auth=publickey"]
 
[+] Sauvegardé --> /home/m0rph3u5/Desktop/SnAff.txt
```
