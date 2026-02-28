# <img width="474" height="569" alt="Capture du 2026-02-28 12-10-05" src="https://github.com/user-attachments/assets/61d7d396-0db4-47ef-843f-e2eb1a1a3c34" />


## 🛠️ Outils

```
┌─[m0rph3u5@parrot]─[~]
└──╼ $sudo apt install avahi-daemon avahi-utils
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
┌─[m0rph3u5@parrot]─[~]
└──╼ $./SnAff.sh
[foo.local]	[192.168.56.253]	[8080]	["version=1.0"
[foo.local]	[192.168.56.253]	[22]	["auth=publickey"]
[foo.local]	[192.168.56.253]	[80]	["version=1.0"
```
