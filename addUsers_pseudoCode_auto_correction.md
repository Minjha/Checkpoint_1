# Tâches du script :

Il doit y avoir une vérification de la présence d'arguments. 
Sans argument, le script affiche **"Il manque les noms d'utilisateurs en argument - Fin du script"** et il s’arrête.
Pour chaque utilisateur à créer, il doit y avoir une vérification de l'existence dans le système.
S'il existe déjà, un message indiquera **"L'utilisateur <nom_utilisateur> existe déjà"** et le script continue.
Pour chaque utilisateur crée, il doit y avoir une vérification de cette création.
Si la création s'est bien effectuée, un message affiche **"L'utilisateur <nom_utilisateur> a été crée"**.
Sinon, un message affiche **"Erreur à la création de l'utilisateur <nom_utilisateur>"**.
Dans tous les cas, le script continue.

# Pseudo-code :

1. Vérification de la présence d'arguments
SI le nombre d'arguments est égal à 0 
    ALORS
          AFFICHER : "Il manque les noms d'utilisateurs en argument - Fin du script"
          STOP (Quitter le script)
FIN SI

2. Boucle pour automatiser le script à chaque argument (nom) donné
POUR CHAQUE nom_utilisateur DANS les arguments du script FAIRE

    3. Vérification de l'existence de l'utilisateur
    SI l'utilisateur existe déjà dans l'annuaire
    ALORS
          AFFICHER : "L'utilisateur <nom_utilisateur> existe déjà"
          Aucune action éxécutée..
    SINON 
          4. Création de l'utilisateur
          LANCER la commande pour créer un utilisateur

          5. Vérification du succès de la création
          SI la commande pour créer l'utilisateur a réussi
          ALORS
                AFFICHER : "L'utilisateur <nom_utilisateur> a été crée"
          SINON  
                AFFICHER : "Erreur à la création de l'utilisateur <nom_utilisateur>"
          FIN SI
      FIN SI
  FIN POUR
FIN
