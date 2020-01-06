<?php

  $dataPersonne ="";  
  if (isset($personne)) 
    $dataPersonne = 'data-personne="'.htmlentities(json_encode($personne)).'"'; 
    ?>
<!DOCTYPE html>
<html>
<head>

 <meta charset="UTF-8" />
 <title>Carbix</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" type="text/css" media="screen" href="style/styleCarbAdvisor.css" />
    <link href='http://fonts.googleapis.com/css?family=Gudea' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Ubuntu+Mono&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css' />
     <link rel="stylesheet" href="https://unpkg.com/leaflet@1.0.3/dist/leaflet.css" />
    <script src="https://unpkg.com/leaflet@1.3.1/dist/leaflet.js"></script>
    
    
 <script src="js/fetchUtils.js"></script>
 <script src="js/gestion_log.js"></script>
 <script src="js/Stations_carte.js"></script>
 <script src="js/displayBest10.js"></script>
 <script src="js/Menu.js"></script>
 <script src="js/profil.js"></script>
 <script src="js/mesPosts.js"></script>
 <script src="js/Accueil.js"></script>
 <script src='js/marksAndComments.js'></script>

</head>
<?php
  // comme vu en tp on gere le fait qu'un utilisateur est connecté ou non
  echo "<body $dataPersonne>";
?>
  <h1>CarbAdvisor</h1>
  <!-- boutton homburger du menu -->
  <div class="btn" id="a">
    <span></span>
</div>

<!-- le menu en question-->
<section class='variable'  id="section_station">
  <h2>Top 10 des stations Nord</h2>
    <div class="resultat"></div>
</section>

<div class="menu nav">
<!-- la photo de profil ainsi que le nom prenom se trouvant dans le menu-->
        <section class="connecte">
              <img id="avatar" alt="mon avatar" src="" />
              <h2 id="titre_connecte"></h2>
        </section>
        <!-- les 3 bouttons pour se deplacer dans l'pplication ainsi que le boutton de deconnexion(quand cela est possible)-->
        <a id="bouton_accueil" href="#">Accueil</a>
        <a id="bouton_monProfil" href="#">Mon Profil</a>
        <a id="bouton_mesPostes" href="#">Mes posts</a>
        <a id="logout" href="#">Deconnexion</a>
</div>

<!-- la partie accueil ou seront dessinés le formulaire et la map a chque qlique sur le boutton accueil et qui sera supprimé des que l'espace de recherche est quitté-->
<div id='accueil'>
   </div>


<!-- en mode connecté ou non les information de la station cliqué s'affichent-->

<div class='variable' id='infosStations'>
        </div>

 <!-- la classe connecte qui ne saffiche(partielement selon le besoin) que quand l'utilisateur est authentidié-->

<div class ='connecte' >
        <div class="variable" id="profil">

        </div>
        <div class='variable' id='posts'></div>
       
        <div class='variable' id='donnerMonAvis' hidden=true>
                <h2>Donner mon avis :</h2>
                <form action="" id='form_notes' method='post'> 

                <label for="id">Identifiant de la station :</label>
                <input type="text" id="identifiantStationNote" name="id" min="0" max="5">

                <label for="noteglobale">Note globale (0-5):</label>
                <input type="number" id="noteglobale" name="globale" min="0" max="5">
               
                <label for="noteaccueil">Note accueil (0-5):</label>
                <input type="number" id="noteaccueil" name="accueil"  min="0" max="5">
               
                <label for="noteprix">Note prix (0-5):</label>
                <input type="number" id="noteprix" name="prix"  min="0" max="5">
               
                <label for="noteservices">Note services (0-5):</label>
                <input type="number" id="noteservices" name="service"  min="0" max="5">
                
                <input name="validerNotes" value="ok" id="validerNotes" type="submit"><br>
                <output  for="commeform_notesntaire" name="errormsgnotes" id='errormsgnotes'></output>

                </form>
                

                <h3>Commenter la station</h3>
                <form action="" id="commentaire" method="post">
                      <label for="stationId">Identifiant de la station :</label>
                      <input type="text" id='stationId' name='station'>
                      <label for="titreCommentaire">titre :</label>
                      <input type="text" id='titreCommentaire' name='titre'>
                      <label for="contenu">contenu :</label>
                      <input type="text" id='contenu' name='contenu'>
                      <input name="validerCommentaire" value="ok" id="validerCommentaire" type="submit"><br>
                      <output  for="commentaire" name="errormsg" id='errormsg'></output>

                </form>
         </div>

         <div class='variable' id='PostsStations' hidden=true>
         </div>


</div>
   
<!-- l'invers de la classe connecte-->

<section class='deconnecte'>
  <form method="POST" action="services/login.php"  id="form_login" >
              <fieldset>
                  <legend>Connexion</legend>
                  <label for="login">Login :</label>
                  <input type="text" name="login" id="login" required="" autofocus=""/><br>
                  <label for="password">Mot de passe :</label>
                  <input type="password" name="password" id="password" required="required" /><br>
                  <button type="submit" name="valid" id="submitLogin">Se connecter</button><br>
                  <output  for="login password" name="message"></output>
              </fieldset>
            
              <a href="#submitLogin" id="register">Créer un compte</a> 
        </form> 
        <div id='zoneCreation' hidden=true>
            <form method="POST" action="" id='inscription'>
            <fieldset>
                  <label for="nom">Nom :</label>
                  <input type="text" name="nom" id="nomInscription" required="required" autofocus/>
                  <label for="prenom">Prénom :</label>
                  <input type="text" name="prenom" id="prenomInscription" required="required" autofocus/>
                  <label for="login">Login :</label>
                  <input type="text" name="login" id="loginInscription" required="required" autofocus/>
                  <label for="password">Mot de passe :</label>
                  <input type="password" name="password" id="passwordInscription" required="required" /><br>
                  <button type="submit" name="submit">Creer</button>
                  <output  for="subscribe" name="message"></output>
            </fieldset>
            </form>
            
        </div>
        <br>
       
</section>

        


</body>
</html>
