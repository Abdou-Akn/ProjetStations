
window.addEventListener("load",preInit);
window.addEventListener("load",initPost);
//window.addEventListener('load',initMarksPost);


function preInit() {
    document.querySelector('.menu>a#bouton_accueil').addEventListener('click',initsearch);
}


// gerer le formulaire
function initsearch(){ // mise en place des gestionnaires sur le formulaire de login et le bouton logout
    // on declare map comme variable globale

    let formulaireEtCarte=`
                  <form action="" method="get" autocomplete="on" id="recherche">
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
                      <input type="reset" value="Annuler" id="annuler"/><br>
                      <output  for="recherche" name="message"></output>

                  </p>

              </form> 
              
              <div id ="carte0">
                    <div id="carte">
                    </div>
              </div>     
              `;

    let cible = document.getElementById('accueil');
    cible.innerHTML=formulaireEtCarte;

    map = L.map('carte').setView([50.38, 3.03], 8);
    
    L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    document.forms.recherche.addEventListener('submit',sendSearch); // envoi
    map.on("popupopen",activerBouton);

  }
  

function sendSearch(ev){ 
  ev.preventDefault();
  let args = new FormData(this);
  let clesVal = args.entries();
  let chaine='?';
  for(let pair of clesVal){
    chaine+=pair[0]+'='+pair[1]+'&';
  }
  
  let url = 'services/requetesHTTP.php'+chaine;
  fetchFromJson(url) //on recupere un tableau json
  .then(processAnswer2) // on recupere le tableau d'objets, 'data'
  .then(placerMarqueurs,errorsearch); // on les place sur la carte
}


function processAnswer2(answer){
    if(answer.status == 'ok')
      return answer.data;
    else
      throw new Error(answer.message);
  }

  function displayErrorInfo2(error){
    let p = document.createElement('p');
    p.innerHTML = error.message;
    let cible  = document.querySelector('div#infosStations');
    cible.textContent=''; // effacement
    cible.appendChild(p); 
  }
  
  

  function errorsearch(error) {
    // affiche error.message dans l'élément OUTPUT.
   document.forms.recherche.message.value = 'échec : ' + error.message;
 }
 


/**
 * agit sur la carte passée en parametre, en y placant des marquers, à l'aide des differentes coordonnées géographiques recupérées.
 * ainsi qu'un popup apparant lors d'un click sur l'un des marqueurs.
 * @param  map la carte sur laquelle on souhaite agir
 */
function placerMarqueurs(infos) {
   var pointList= [];
   for(var obj of infos){
       var id = obj.id;
       var distance = obj.distance;
       var latitude = obj.latitude;
       var longitude = obj.longitude;
       var texte ="identifiant : "+ id+'</br>' + "distance la separant de votre recherche : "+ distance+'</br>'+"<button value=\""+id+"\"> Plus d'informations </button>";
  
       var point = [latitude,longitude];
       // on place  un marqueur, ainsi que son popup associé
       L.marker(point).addTo(map).bindPopup(texte);
       pointList.push(point);
  }
  //  gere le positionement de la carte en fonction des differents points
   map.fitBounds(pointList);

}




// partie a modiffier pour afficher les informations correspendantes aux stations cliquées

/**
 * gere l'activation du bouttonet ajoute un evenement au click
 * @param  ev 
 */
function activerBouton(ev) {
    var noeudPopup = ev.popup._contentNode; 
    var bouton = noeudPopup.querySelector("button"); 
    bouton.addEventListener("click",afficherInformations); 
}
/**
 * 
 * @param ev 
 */
function afficherInformations(ev) {
    // on recupere l'identifiant de la station cliquée
    identifiant =this.value;
    // puis on feth pour recuperer les informations de la station en question
    // ensuite en utilisant l'url donnée, on fetch une seconde fois pour recuperer les services.

    let url = 'services/findStation.php?id='+identifiant;
    fetchFromJson(url)
    .then(processAnswer)
    .then(displayInfoStation,displayErrorInfo2);
}

// fetch les comments a l'aide de l'id de la station
function disayCommentsOfStation(station){
  let url = `services/findPosts.php?id=${station.id}`;
  fetchFromJson(url)
  .then(processAnswer)
  .then(commentsOfStation,displayErrorInfo3);
}

// creer un element div et y met nos informations fetchées
function commentsOfStation(posts){
  let div = document.createElement('div');
  div.setAttribute('id','comments');
  div.innerHTML='<h2>Commentaires de la station :</h2>';
  for(let post of posts){
    div.innerHTML+=
    ` <div id='Com${post.id}'>
              <p id=\'auteur\'> <a href='' id='profilPopup'>  <img id="miniature" src="services/getAvatar.php?login=${post.auteur}" alt="photo de profil"/></a> ${post.auteur}  <span id=\'dateCreationPost\'>${post.datecreation}</spanp></p>
              <header id=\'titrePost\'>${post.titre}</header> 
              <p id=\'contenuPost${post.id}'>${post.contenu}</p>
              <p id=\'notes\'><a  id='boutonLike${post.id}' href='#contenuPost${post.id}'> <img  id=\'boutonLike\' src=\'images/blike.png\'>  ${post.nblike}</a> 
              <a id=\'boutonNoLike${post.id}\' href='#contenuPost${post.id}'> <img id=\'boutonNoLike\' src=\'images/bnolike.png\' >  ${post.nbnolike}</a> </p>
              <br> 
     </div> `;
  }
  let cible  = document.querySelector('div#PostsStations');
  cible.textContent=''; // effacement
  cible.appendChild(div); 
  cible.hidden=false;
  for(let post of posts){
      document.getElementById(`boutonLike${post.id}`).addEventListener('click',function(ev){
          ev.preventDefault();
          let url = `services/notePost.php?id=${post.id}&avis=like`;
          fetchFromJson(url)
          .then(processAnswer)
          .then(Like,err);}); 

          document.getElementById(`boutonNoLike${post.id}`).addEventListener('click',function(ev){
            ev.preventDefault();
            let url = `services/notePost.php?id=${post.id}&avis=nolike`;
            fetchFromJson(url)
            .then(processAnswer)
            .then(noLike,err);}); 
  }


}




//erruer pour les commentaires
function displayErrorInfo3(error){
  let p = document.createElement('p');
  p.innerHTML = error.message;
  let cible  = document.querySelector('div#PostsStations');
  cible.textContent=''; // effacement
  cible.appendChild(p); 
  cible.hidden=false;

}

  
function processAnswer(answer){
  if (answer.status == "ok"){
      return answer.result;
  }
  else
    throw new Error(answer.message);
}

function displayInfoStation(station){
    let p = document.createElement('div');
    let p1 = document.createElement('div');

    p.setAttribute('id','InfoStation1');
    p1.setAttribute('id','InfoStation2');

    p.innerHTML =
      `<h2>Information sur la station ${station.id} :</h2>
      <p>nom : ${station.nom}</p>
       <p>marque : ${station.marque}</p>
       <p>Ville : ${station.ville}</p>
       <p>adresse : ${station.adresse}</p>
       <p>code postal : ${station.cp}</p> <br><br>
      `;

      p1.innerHTML =
      `<p>${station.nbnotes}  personnes ont donné leur avis sur cette station.</p>
       <p>Note globale : ${station.noteglobale}</p>
       <p>Note de l'accueil : ${station.noteaccueil}</p>
       <p>Note des prix : ${station.noteprix}</p>
       <p>Note des services : ${station.noteservice}</p>
      `;

    let cible  = document.querySelector('div#infosStations');

    cible.textContent=''; 
    cible.appendChild(p); 
    cible.appendChild(p1); 
    cible.hidden=false;
    donnerMonAvis(station);
    disayCommentsOfStation(station);

}

function donnerMonAvis(station){
  let cible = document.querySelector('#donnerMonAvis');
  cible.hidden=false;
}


//--------------
//faire un commentaire sur une station



function initPost(){ 
  document.forms.commentaire.addEventListener('submit',sendPost); 
}

function sendPost(ev) {
  ev.preventDefault();
  let args = new FormData(this);
  let url = 'services/createPost.php';
  fetchFromJson(url,{method: 'post', body : args, credentials: 'same-origin'})
  .then(processAnswer)
  .then(success,errorPost);
}

function success(res) {
  document.forms.commentaire.errormsg.value = 'le commentaire a bien été ajouté à '+res.id;

}

function errorPost(error) {
 document.forms.commentaire.errormsg.value = 'échec : ' + error.message;
}


// liker un post
function err(error){
alert(error.message);
}

function Like(post) {
  let contenu = document.getElementById(`Com${post.id}`);
  contenu.style.background = '#c8d6e5';
  window.setTimeout(function(){
    contenu.style.background = '';
  }, 500);
}
function noLike(post){
  let contenu = document.getElementById(`Com${post.id}`);
  contenu.style.background = '#fab1a0';
  window.setTimeout(function(){
    contenu.style.background = '';
  }, 500);
}