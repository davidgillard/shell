#!/bin/bash
# Nettoyage, version 1
# fichier : nettoyage.sh
# auteur : David GILLARD

REP_TRACES=/var/log

cat /dev/null > messages
cat /dev/null > wtmp

echo "Journaux nettoyés."

exit
