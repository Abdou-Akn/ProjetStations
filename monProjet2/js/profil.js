
window.addEventListener('load',buttonMonProfil);


function buttonMonProfil(){
  document.querySelector('.menu>a#bouton_monProfil').addEventListener('click',sendUserInfos);
}
function sendUserInfos() {
  for (let cible of  document.querySelectorAll('.variable'))
      cible.hidden=true;
  document.getElementById('accueil').textContent='';
  if (currentUser) {

  let url = 'services/findUtilisateur.php?login='+currentUser.login;
    fetchFromJson(url)
    .then(processAnswer)
    .then(displayProfil,displayErrorInfo);

  }

}

  
  function displayProfil(profil){
    let p = document.createElement('p');
    p.setAttribute('id','padre');
    
    p.innerHTML =
      `<div id="figure">
      <div class='description'><img id='profilPhoto' src='services/getAvatar.php?login=${profil.login}'><br>${profil.description}<br><span id='nom'>${profil.nom}  ${profil.prenom} </span></div>
      </div>
      <br>
      <br>
      <button id='changePhoto'> changer ma photo de profil </button>
      <form id='upAvatar' name="upload_image" action="" method = "post" enctype="multipart/form-data"  hidden=true>
            <fieldset>
                  <input type='file' id='changeAvatar' name='image' value=' changer mon Avatar'> 
                  <button type="submit" name="submit" value="submit">Envoyer</button>
            </fieldset>
      </form>
      <button id='changeInformations'> changer mes Informations </button>
      <form id='upInfo' name="upload_infosProfil" action="" method = "post" hidden=true>
            <legend>Update Profil</legend>
            <fieldset>
            <label for="nom">Nom :</label>
            <input type="text" name="nom" id="updateNom"/></br>
            
            <label for="nom">Prenom :</label>
            <input type="text" name="prenom" id="updatePrenom"/></br>

            <label for="nom">Ville :</label>
            <input type="text" name="ville" id="updateVille"/></br>

            <label for="nom">E-mail :</label>
            <input type="text" name="mail" id="updateMail"/></br>

            <label for="nom">Description :</label>
            <input type="text" name="description" id="updateDescription"/></br>
            
            <label for="password">Mot de passe :</label>
            <input type="password" name="password" id="updatePassword"/></br>
            
            <button type="submit" value="submit"name="submit" id="submitUpdate">Mettre à jour </button><br>
          </fieldset>
      </form>

      <h3>Mes informations :</h3>
       <p>Login : ${profil.login}</p>
       <p>Ville : ${profil.ville}</p>
       <p>E-mail :${profil.mail}</p>
        <br>
      <h3>Mon activité :</h3>
       <p>Nombre d'avis : ${profil.nbavis}</p>
       <p>Nombre de posts : ${profil.nbposts}</p>
       <p>Nombre de likes distribués : ${profil.nblike}</p>
       <p>Nombre de nolikes distribués  : ${profil.nbnolike}</p>
      `;

    let cible  = document.querySelector('div#profil');
    cible.textContent=''; 
    cible.appendChild(p); 
    cible.hidden=false;
    updateInformations();
     }

   function updateInformations(){
     document.getElementById('changePhoto').addEventListener('click',function(){
      document.forms.upload_image.hidden = false;
              document.forms.upload_image.addEventListener('submit',function(ev){
                ev.preventDefault(); 
                let formData = new FormData(this); 
                let url ="services/uploadAvatar.php";
                fetchFromJson(url, {method : 'post', body : formData, 'credentials': 'same-origin'})
                .then(processAnswerz);
        });
                 updateAvatarProfil();

     });

     document.getElementById('changeInformations').addEventListener('click',function(){
                document.forms.upload_infosProfil.hidden=false;
                document.forms.upload_infosProfil.addEventListener('submit',function(ev){
                  ev.preventDefault(); 
                    let args = new FormData(this); 
                    let url1 ="services/updateProfil.php";
                    fetchFromJson(url1, {method : 'post', body : args, 'credentials': 'same-origin'})
                    .then(processAnswerz);
                });

     } );
     document.forms.upload_infosProfil.hidden=true;
     document.forms.upload_image.hidden = true;

   }

  function processAnswerz(answer){
    if (answer.status == "ok")
      return alert("the update was done successfully for"+answer.result.nom);
    else
      alert(answer.message);
  }


  function updateAvatarProfil() {
    let changeAvatar = function(blob) {
      if (blob.type.startsWith('image/')){ 
        let img = document.getElementById('profilPhoto');
        img.src = URL.createObjectURL(blob);
      }
    };
  fetchBlob('services/getAvatar.php?login='+currentUser.login)
    .then(changeAvatar);
}

  function displayErrorInfo(error){
    let p = document.createElement('p');
    p.innerHTML = error.message;
    let cible  = document.querySelector('div#bouton_accueil');
    cible.textContent=''; 
    cible.appendChild(p); 
  }
  