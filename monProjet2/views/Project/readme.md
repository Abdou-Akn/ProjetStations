Auteur : AKENIOUENE Abderrahmane

L'URL du projet :
http://webtp.fil.univ-lille1.fr/~akeniouene/Project/index.php

Déscription du projet :
Ce projet consiste a créer une application, qui permet à l'utilisateur de pouvoir faire des recherche
de stations de carburant dans tout le nord de la france.
Cette application possède un formulaire permettant à l'utilisateur de saisir les critàres de sa rechèrche, qui est défini par : 
                                - le nom de la commune (champ obligatoire).
                                - le rayon de recherche (pas obligatoire, mis a 10 km lorsqu'il n'es pas rensegné)
                                - le genre de carburant rechérché, si rien n'est coché, la recherche se fera avec tout les carburants comme requète.
                                - on finit par un click sur 'OK' (submit), ou annuler.

le nombre de stations trouvées sera affiché, et sera modélisé sur la carte sous forme de marqueurs, chaque marqueur pointe sur une station donnée(si la recherche a abouti a un résultat, rien sinon), un click sur ces pointeurs affichera un popup contanant les informations relatives à cette station.(et tout cela apès traitement de données).

Les difficultées:
la pricipale difficulté était de transmettre les données du fichier .php vers .js.
je cherchais un moyen plus élégant pour le faire, mais la seul solution "simple" était de stoquer les variable dans les lignes d'un tableau mis en 'hidden' , puis les récupèrer de .js avec 'document.getElemenBy...' puis  'dataset.xxx' ou autre..
