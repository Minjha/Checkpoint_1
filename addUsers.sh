#!/bin/bash

if [[ $# -eq 0 ]]
        then
                echo "Il manque les noms d'utilisateurs en argument - Fin du scriptt"
        exit 1
fi 

# Boucle récupérant les arguments du script en tant que $nom_user
for nom_user in "$@"
do 
        echo $nom_user

        # Vérification de la présence de l'utilisateur à créer
        if grep -q "^$nom_user:" < /etc/passwd
then          
                echo "L'utilisateur $nom_user existe déjà"
else        
                # Création de l'utilisateur
                useradd -m "$nom_user"
                # Vérification de la réussite de la commande précédente
                if [ $? -eq 0 ]
                then
                    echo "L'utilisateur $nom_user a été créé"
                else
                    echo "Erreur à la création de l'utilisateur $nom_user"
                fi
         fi
done
