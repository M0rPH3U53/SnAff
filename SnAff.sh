#!/bin/bash

# Cherche & filtre les service Bonjour/ZeroCOnf
sniff=$(avahi-browse -a -r -t | grep -E "(hostname|address|port|txt)" | awk '{print $3}' | paste - - - -)

# Verifie si la variable est vide, affiche & enregistre les resultats
if [[ -z ${sniff} ]]; then
   echo "❌ Aucun services trouvé"
   exit 1
else
   echo "👻 ${sniff}"
   echo "${sniff}" > SnAff.txt
fi
