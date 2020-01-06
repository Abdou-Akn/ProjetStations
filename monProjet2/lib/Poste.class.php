<?php
class Poste { 
    public $id ;    //entier >0	identifiant
    public $auteur ; 	//chaine	identifiant (pseudo) de l'auteur
    public $station ;    	//chaine	identifiant de la station concernée
    public $titre ;    //chaîne	titre de l'évènement
    public $contenu ;     	//chaîne	contenu du post
    public $datecreation ;   	//chaîne représentant une date au format "Y-D-M h:m:s"	instant de publication
    public $nblike ;    	//nombre	nombre de likes
    public $nbnolike ; //nombre	nombre de nolikes
  public function __construct($id,$auteur,$station,$titre,$contenu,$datecreation,$nblike,$nbnolike)
  {
    $this->id = $id;
    $this->auteur = $auteur;
    $this->station = $station;
    $this->titre = $titre;
    $this->contenu = $contenu;
    $this->datecreation = $datecreation;
    $this->nblike = $nblike;
    $this->nbnolike = $nbnolike;

  }
}
?>