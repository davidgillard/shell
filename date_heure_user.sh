#!/usr/bin/zsh

# version 1
# fichier : date_heure_user.sh
# auteur : David GILLARD

# initialisation des variables

# l'idée de ce script est d'afficher la date ainsi que l'heure courante mais également les utilisateurs connectés

DATE_HEURE=`date +%c`
echo "La date et l'heure : "$DATE_HEURE
UTILISATEURS_CONNECTES=`w -h -u -s`
echo les utilisateurs connectés sur cette machine sont : $UTILISATEURS_CONNECTES

exit 0
