#!/bin/bash

# Banniere
cat <<"EOF"

MP""""""`MM          MMP"""""""MM .8888b .8888b 
M  mmmmm..M          M' .mmmm  MM 88   " 88   " 
M.      `YM 88d888b. M         `M 88aaa  88aaa  
MMMMMMM.  M 88'  `88 M  MMMMM  MM 88     88     
M. .MMM'  M 88    88 M  MMMMM  MM 88     88     
Mb.     .dM dP    dP M  MMMMM  MM dP     dP     
MMMMMMMMMMM          MMMMMMMMMMMM   

by M0rPH3U53
      
EOF

# Couleur ASCII
BLEU='\033[34m'
ROUGE='\033[0;31m'
VERT='\033[0;32m'
GRIS='\033[0;90m'
RESET='\033[0m'
BLANC='\033[1;37m'
JAUNE='\033[0;33m'

# Cherche & filtre les services
echo -ne "🦈 ${VERT}Scan${RESET}..."
sniff=$(avahi-browse -a -r -t > /dev/null 2>&1 | grep -E "(hostname|address|port|txt)" | awk '{print $3}' | paste - - - -)
echo -e "${JAUNE}100%${RESET}"

echo -e " " 

# Verifie si la varibale est vide sinon affiche les services
if [[ -z ${sniff} ]]; then
   echo "❌ Aucun services trouvé"
   exit 1
else
   echo -e "${VERT}[+]${RESET} ${BLANC}Services${RESET}"
   echo " "
   echo "${sniff}"
   echo "${sniff}" > SnAff.txt
   echo " "
   echo -e "${VERT}[+]${RESET} Sauvegardé --> "${PWD}"/SnAff.txt"
fi
