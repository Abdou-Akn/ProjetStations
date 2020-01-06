<?php
class Station { 
    public $id;	            //chaîne	identifiant de la station
    public $nom;	        //chaîne	le nom de la station, PAS toujours défini
    public $marque;	        //chaîne	la marque, toujours définie
    public $latitude;	    //numérique	Latitude (coordonnée géographique)
    public $longitude;	    //numérique	Longitude (coordonnée géographique)
    public $adresse	;	    //chaîne ladresse de la station, toujours définie
    public $cp;             //chaîne	code postal, toujours défini
    public $ville;          //chaîne	commune, toujours définie
    public $nbnotes;	    //entier	le nombre d'utilisateurs qui l'ont notée
    public $noteglobale;	//entier	le nombre total de points pour la note globale
    public $noteaccueil	;   //entier	le nombre total de points pour la note accueil
    public $noteprix ;      //entier	le nombre total de points pour la note prix
    public $noteservice ;   //entier	le nombre total de points pour la note service
  public function __construct($id,$nom='',$marque,$latitude,$longitude,$adresse,$cp,$ville,$nbnotes,$noteglobale,$noteaccueil,$noteprix,$noteservice)
  {
    $this->id = $id;
    $this->nom = $nom;
    $this->marque = $marque;
    $this->latitude = $latitude;
    $this->longitude = $longitude;
    $this->adresse = $adresse;
    $this->cp = $cp;
    $this->ville = $ville;
    $this->nbnotes = $nbnotes;
    $this->noteglobale = $noteglobale;
    $this->noteaccueil = $noteaccueil;
    $this->noteprix = $noteprix;
    $this->noteservice = $noteservice;
  }
}
?>