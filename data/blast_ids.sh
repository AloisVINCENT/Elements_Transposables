#!/bin/zsh

# $1 = premier argument = fichier d'ids 

# On supprime le '>' de chaque ligne
# On envoie le résultat à la boucle while
# On fait un blast en prenant chacune des lignes en -entry 
sed 's/>//' $1 | while IFS= read -r line; do
	blastdbcmd -db repbase.fasta -entry "$line" 
done
