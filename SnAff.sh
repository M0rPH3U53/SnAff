#!/bin/bash

# Cherche les service du protocole Bonjour/ZeroCOnf & filtre le hostanme, les IP , ports & des info supplumentaire
sniff=$(avahi-browse -a -r -t | grep -E "(hostname|address|port|txt)" | awk '{print $3}' | paste - - - -)

# Verifie si la variable est vide & affiche & enregsitre le resultat
if [[ -z ${sniff} ]]; then
   echo "❌ Aucun services trouvé"
   exit 1
else
   echo "${sniff}"
   echo "${sniff}" > SnAff.txt
fi
