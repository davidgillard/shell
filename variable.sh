#!/usr/bin/zsh
#===============================================================
# Fichier: variable.sh
#
# USAGE: ./variable.sh
#
# Description: démonstration des opérations sur les variables 
#
# Options: ----
# Pré-requis: ----
# Bugs: ----
# Notes: ----
# Auteur: David Gillard
# Administration - Société: ----
# Version: 1.0
# Date de création: 27/05/2022 20:00:00 CEST
# Révision: ----
#===============================================================

# initialisation de variables
ANNEE="2022"
MOIS="05"
INTERPRETEUR="Le ZSH c'est cool"
# affichage du contenu des variables ANNEE et MOIS
echo $ANNEE
# ou 
echo ${MOIS}
# utilisation de UNSET afin de supprimer une variable
unset ANNEE
echo "Année en cours:" ${ANNEE}
# ici on s'aperçoit que dans le echo le $ANNEE ne s'affiche plus car la variable a été supprimé juste au dessus
echo "Mois en cours:" ${MOIS}
# en revanche la variable MOIS s'affiche toujours puisqu'elle n'a pas fait l'objet d'un UNSET 

echo "La commande echo \$0 affiche quel est le script qui est lancé."
echo $0 
echo "l'identifiant du script ou encore appelé PID est: $$"
# je désire connaître le nombre de caractére de ma variable pour ce faire il existe le $#
echo "le nombre de caractére de la variable MOIS :" ${#MOIS}

echo "le contenu de la variable INTERPRETEUR: $INTERPRETEUR"
# il est possible d'avoir une extraction d'une sous chaine de la variable SHELL
echo "Ici j'affiche la sous-chaine à partir du troisième caractère: "${INTERPRETEUR:3}
# ou encore nous pouvons récupérer plus précisément une sous-chaine de 3 caractères à partir du 3ième.
echo "${INTERPRETEUR:3:3}"
# il est également possible de soustraire des éléments d'une sous-chaine 
echo "${INTERPRETEUR##c*s}"
