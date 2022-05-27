#!/usr/bin/zsh
#===============================================================
# Fichier: nettoyage.sh
#
# USAGE: ./nettoyage.sh
#
# Description: 
#
# Options: ----
# Pré-requis: ----
# Bugs: ----
# Notes: ----
# Auteur: David Gillard
# Administration - Société: ----
# Version: 1.0
# Date de création: 27/05/2022 15:00:00 CEST
# Révision: ----
#===============================================================

#initialisation des variables
REP_TRACES=/var/log
UID_ROOT=0
LIGNES=50
E_XCD=66
E_NONROOT=67

# a executer uniquement en root
if [ "$UID" -ne "$UID_ROOT" ]
then
	echo "Vous devez être root pour utiliser ce script."
	exit $E_NONROOT
fi

if [ -n "$1" ] # Teste la présence d'un argument (non vide) sur la ligne de commande.
then 
  lignes=$1
else 
  lignes=$LIGNES
fi

cd $REP_TRACES

if [ `pwd` != "$REP_TRACES" ]
  then
    echo "impossible d'aller dans $REP_TRACES"
    exit $E_XCD
fi

tail -n $lignes messages > mesg.tmp
mv mesg.tmp messages

#cat /dev/null > messages
cat /dev/null > wtmp



echo "Journaux nettoyés."

exit 0
