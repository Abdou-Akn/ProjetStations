/*
* @author AKENIOUENE ABDERRAHMENE
* PROJET 2 TW2
* DATE DE COMMANCEMENT : 12/05/2019
* DATE DE FIN : 20/05/2019
*  --------> http://webtp.fil.univ-lille1.fr/~akeniouene/MonProjet2/complet.php#
*/

ETAT DU PROJET:
Tous les points du projet ont étés reéalisés, à une instrustions pret.
- la partie photo de profil n'a pas été traité par manque de temps,donc le redimensionement a été fait avec du css pour les photos de profil normales et en miniature.
parcontre la logique y était, deux colonnes dans ma table ont étés crées pour un avatar 48x48 ainsi qu'un autre 256x256. 


PROBLEMS RECONTRES:
- les plus gros problems que j'ai eu a faire face,ont étés en JS,du au fait que le DOM n'était pas pret, ou pas encore arrivé au stade ou je declarais un EventListener oubien un getElementById ou autre,mais des solutions ont vite étées trouvées dès que l'erreur fut comprise.
- Au niveau de la map de google, le positionement n'etait pas optimal,meme tres mauvais, mais se retablissait dès que la touche F12 est pressée,
et cela est du au fait que la div ou été placée la carte était mise en hidden.une autre approche a du s'imposer via JS.

AJOUTS :
- des attributs nom et prenom ont étés ajoutés dans la class Utilisateur.
- des checkboxs auraient pu etre ajouté pour pouvoir supprimer plusieurs commentaire a la foi, ou meme la totalité.
- Un service a été ajouté pour le formulaire de la recherche de stations,suivant la meme logique 