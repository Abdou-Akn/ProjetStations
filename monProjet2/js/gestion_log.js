window.addEventListener('load',initState);
window.addEventListener('load',initLog);
window.addEventListener('load',initRegister);


var currentUser = null; 

function initState(){
      if (typeof(document.body.dataset.personne) != "undefined" || document.body.dataset.personne != null) {
            let person = document.body.dataset.personne;
            let obj = JSON.parse(person);
            etatConnecte(obj);
      }
      else
            etatDeconnecte();
}



function etatDeconnecte() { 
    for (let elt of document.querySelectorAll('.connecte'))
       elt.hidden=true;
    for (let elt of document.querySelectorAll('.deconnecte'))
       elt.hidden=false;
    currentUser = null; 
    delete(document.body.dataset.personne);
    document.querySelector('#titre_connecte').textContent='';
    document.querySelector('#avatar').src='';
}

function etatConnecte(personne) { 
    currentUser = personne;
    for (let elt of document.querySelectorAll('.deconnecte'))
       elt.hidden=true;
    for (let elt of document.querySelectorAll('.connecte'))
       elt.hidden=false;
       
    document.querySelector('#titre_connecte').innerHTML = `${currentUser.prenom} ${currentUser.nom}`;
    updateAvatar();
    
}

function initLog(){ 
  document.forms.form_login.addEventListener('submit',sendLogin); 
  document.forms.form_login.addEventListener('input',function(){this.message.value='';});   document.querySelector('#logout').addEventListener('click',sendLogout);
}

function updateAvatar() {
    let changeAvatar = function(blob) {
      if (blob.type.startsWith('image/')){ 
        let img = document.getElementById('avatar');
        img.src = URL.createObjectURL(blob);
      }
    };
  fetchBlob('services/getAvatar.php?login='+currentUser.login)
    .then(changeAvatar);
}


function sendLogin(ev){
  ev.preventDefault();
  let args = new FormData(this);
  let url = 'services/login.php';
  fetchFromJson(url,{method: 'post', body : args, credentials: 'same-origin'})
  .then(processAnswer)
  .then(etatConnecte,errorLogin);
}

function sendLogout(ev){ 
  ev.preventDefault();
  let url = 'services/logout.php';
  fetchFromJson(url,{credentials: 'same-origin'})
  .then(processAnswer)
  .then(etatDeconnecte,errorLogin);
}

function processAnswer(answer){
  if(answer.status == 'ok')
    return answer.result;
  else
    throw new Error(answer.message);
}

function errorLogin(error) {
  document.forms.form_login.message.value = 'échec : ' + error.message;
}



// creation de compte
function initRegister() {
    document.getElementById('register').addEventListener('click',Register);
}


function Register() {
   cible = document.getElementById('zoneCreation');
  cible.hidden=false;
  document.forms.inscription.addEventListener('submit',sendSubscribe); 
}

function sendSubscribe(ev) {
  ev.preventDefault();
  let args = new FormData(this);
  let url = 'services/createUtilisateur.php';
  fetchFromJson(url,{method: 'post', body : args, credentials: 'same-origin'})
  .then(processAnswer)
  .then(utilisateurCree,errorInscription);
  cible.hidden=true;
}

function utilisateurCree(login){
  alert(`${login} created, you can get connected from now !!` );
}

function errorInscription(error){
  document.forms.inscription.message.value = 'échec : ' + error.message;
}
