#!/usr/bin/zsh
#===============================================================
# Fichier: test.sh
#
# USAGE: ./test.sh
#
# Description: démonstration sur les tests
#
# Options: ----
# Pré-requis: ----
# Bugs: ----
# Notes: ----
# Auteur: David Gillard
# Administration - Société: ----
# Version: 1.0
# Date de création: 27/05/2022 21:00:00 CEST
# Révision: ----
#===============================================================

initialisation des variables
VARIABLE_A=2
VARIABLE_B=1
VARIABLE_C=3

# la variable MA_VARIABLE n'est pas définit à l'étape 1
[ $MA_VARIABLE ] && echo "Etape 1: Mon test est valide"
echo "à l'étape 1 MA_VARIABLE contient aucun caractère car elle n'est pas définit"
# à l'étape 2 MA_VARIABLE contient une chaine vide 
MA_VARIABLE=""

[ $MA_VARIABLE ] && echo "Etape 2: Mon test est valide"
echo "à l'étape 2 MA_VARIABLE contient toujours aucun caractère" 

MA_VARIABLE="Contient quchose"

[ $MA_VARIABLE ] && echo "Etape 3: Mon test est valide"
echo "à l'étape 3 MA_VARIABLE contient ${#MA_VARIABLE} caractères"

echo "La valeur de retour de la dernière opération est: $? donc c'est que tout va bien"

# Voyons la partie test de condition avec if
if [ $VARIABLE_A -lt $VARIABLE_B ] # 2 est il plus petit que 1 // FAUX
then 
  echo "Cette affirmation est VRAI" 
elif [ $VARIABLE_A -lt $VARIABLE_C ] # 2 est il plus petit que 3 // VRAI
then
  echo "Cette affirmation est FAUSSE" # le message s'affichera
else
  echo "Rien n'est VRAI" # La condition précédente étant remplit du coup cette alternative ne sera pas parcourue
fi
