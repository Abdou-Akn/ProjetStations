<?php
 /*
  * Attend les variables globales :
  *  - $listeEquipes : liste des équipes
  *  - $listeEtapes : liste des étapes
  *  - $stats : tableau de statistiques
  * Variable optionnelle :
  *  - $personne est définie si on est dans une session identifiée
  */
  require_once(__DIR__.'/lib/fonctionsHTML.php');
  $dataPersonne ="";    // si utilisateur non authentifié, data-personne n'est pas défini
  
  // dé-commenter pour la question 3 : 
  if (isset($personne)) // l'utilisateur est authentifié
    $dataPersonne = 'data-personne="'.htmlentities(json_encode($personne)).'"'; // l'attribut data-personne contiendra l'objet personne, en JSON
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>
 <meta charset="UTF-8" />
 <title>Carbix</title>
 <link rel="stylesheet" href="style/styleEquipe.css" />

 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="lib/myProject.css">
    <link href='http://fonts.googleapis.com/css?family=Gudea' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Ubuntu+Mono&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css' />
     <link rel="stylesheet" href="https://unpkg.com/leaflet@1.0.3/dist/leaflet.css" />
    <script src="https://unpkg.com/leaflet@1.3.1/dist/leaflet.js"></script>

 <script src="js/jsProjet.js"></script>



</head>
<?php
  echo "<body $dataPersonne>";
?>
  <h1>Carbix</h1>
  <!-- boutton de menu -->
  <div class="btn" id="a">
    <span></span>
</div>

<!-- le menu en question-->
<section class='variable'  id="section_station">
  <h2>Top 10 des stations Nord</h2>
    <div class="resultat"></div>
</section>

<div class="menu nav">
        <section class="connecte">
              <img id="avatar" alt="mon avatar" src="" />
              <h2 id="titre_connecte"></h2>
        </section>
        <a id="bouton_accueil" href="#">Accueil</a>
        <a id="bouton_monProfil" href="#">Mon Profil</a>
        <a id="bouton_mesPostes" href="#">Mes posts</a>
        <a id="logout" href="#">Deconnexion</a>
</div>
<script src="js/action_etape.js"></script>



<section class='deconnecte'>
        <form method="POST" action="services/login.php"  id="form_login">
              <fieldset>
                  <legend>Connexion</legend>
                  <label for="login">Login :</label>
                  <input type="text" name="login" id="login" required="" autofocus=""/></br>
                  <label for="password">Mot de passe :</label>
                  <input type="password" name="password" id="password" required="required" /></br>
                  <button type="submit" name="valid">Se connecter</button></br>
                  <output  for="login password" name="message"></output>
              </fieldset>
        </form>  
</section>

      <section class ='connecte' >
        <div class="variable" id="profil">
        </div>
        <div class='variable' id='posts'></div>
      </section>

      <div class='variable' id='accueil' s>
                  <form action="" method="post" autocomplete="on">
                      <fieldset>
                          <p> <label for="commune"> Commune </label>
                          <input type="text" name="commune" id="commune" required placeholder="entrez une commune" /> </p>
                      
                          <p> <label for="rayon"> Rayon de recherche (Km) </label>
                          <input type="number" name="rayon" id="rayon" placeholder="entrez un rayon de recherche"/></p> 
                      </fieldset>  

                      <fieldset id="choix">
                          <p> <label for="carburant">Choix du carburant</label>
                            <input type="checkbox" name="carb0" value="All"> All 
                            <input type="checkbox" name="carb1" value="1"> Gazole 
                            <input type="checkbox" name="carb2" value="2"> SP95 
                            <input type="checkbox" name="carb3" value="3"> E85 
                            <input type="checkbox" name="carb4" value="4"> GPLc 
                            <input type="checkbox" name="carb5" value="5"> E10 
                            <input type="checkbox" name="carb6" value="6"> SP98 
                          </p>
                      </fieldset>
                      

                      <p>
                          <input name="ok" value="ok" id="ok" type="submit">
                          <input type="reset" value="Annuler" />
                      </p>

                  </form>


                  <div id ="carte0">
                      <div id="carte">
                      </div>
                  </div>     


                  <section>

                      <table id="communes"  style="display:none;">
                          <thead>
                          </thead>
                          <tbody >
                                  <?php 
                                  require("lib/manipulationDonneesProject.php");
                                  ?>
                          </tbody>
                      </table>
                  <section>
        </div>


</body>
</html>
