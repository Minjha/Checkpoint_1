#!/bin/bash

# Je vérifie qu'il y a au moins 1 argument au lancement du script sinon je stoppe le script avec un exit 1
if [[ $# -eq 0 ]]
# Message
"Il manque les noms d'utilisateurs en argument - Fin du script"

# Vérification dans l'annuaire /etc/passwd du user à créer, s'il existe déjà, aucun action.
# Message 
"L'utilisateur <nom_utilisateur> existe déjà"

# S'il n'existe pas je le créer
useradd -m "$newUser"

# Vérification que le user a bien été créé sans message d'erreur
if [[ $? -eq 0 ]]
# Message
"L'utilisateur <nom_utilisateur> a été crée"

# Le cas échant, échec de création "$newUser" 
# Message
"Erreur à la création de l'utilisateur <nom_utilisateur>"
