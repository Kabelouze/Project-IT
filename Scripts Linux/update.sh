#!/bin/bash #Interpreteur du shell

sudo apt update # Commande de mise à jour

if [ $? != 1 ]; then # Si la commande passe = 1 sinon = 0 
	# Ecrit dans le fichier de log la date de la mise à jour de la liste des paquets
	echo "Update $(hostname) : Mise à jour de la liste des paquets faite le $(date +"%d/%m/%y %k:%M")" >> /var/log/logsscripts.log
	sudo apt-get upgrade -y # Commande de la mise à des paquets
	# Ecrit dans le fichier de log la date de la mise à jour des paquets 
	echo "Upgrade $(hostname) : Mise à jour des paquets faite le $(date +"%d/%m/%y %k:%M")" >> /var/log/logsscripts.log
else
	# Si les commande ne passe pas écrit dans le fichier de log la date de l'erreur
	echo "Erreur sur le serveur $(hostname) de la mise à jour le $(date +"%d/%m/%y %k:%M")" >> /var/log/logsscripts.log

fi # Fin du Script
