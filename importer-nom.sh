#!/bin/bash

FICHIER_SOURCE=./noms.txt

while read -r LIGNE
do
  F="$(echo $LIGNE | cut -d' ' -f1)"
  L="$(echo $LIGNE | cut -d' ' -f2)"
  R="  {
    \"prenom\": \"$F\",
    \"nom\": \"$L\"
  },"
  printf "%s\n" "$R"
done < "$FICHIER_SOURCE"
