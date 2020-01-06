
window.addEventListener('load',buttonMesPosts);


function buttonMesPosts(){
  document.querySelector('.menu>a#bouton_mesPostes').addEventListener('click',sendUserInfosPosts);
}
function sendUserInfosPosts(ev) {
  for (let cible of  document.querySelectorAll('.variable'))
      cible.hidden=true;
  document.getElementById('accueil').textContent='';
  let url = 'services/findMesPosts.php';
    fetchFromJson(url)
    .then(processAnswer1)
    .then(displayPosts,displayErrorPosts);
  }

  
  function displayPosts(posts){    
    let table = document.createElement('table');
    table.setAttribute('id','padrePosts');
    table.createTHead().insertRow().innerHTML="<td>id</td><td>id of Station</td><td>Date of creation </td><td>Titre</td><td>Contenu</td>";
    let body = table.createTBody();
    for (let post of  posts){
      body.insertRow().innerHTML += `
                                    <td> ${post.id} </td>
                                    <td>${post.station}</td>
                                    <td>${post.datecreation}</td>
                                    <td>${post.titre}</td>
                                    <td>${post.contenu}</td>`;
    }


    let cible  = document.querySelector('div#posts');
    cible.textContent=''; 
    cible.appendChild(table);
    cible.innerHTML+=`<form id='formDeletePost'>
                            <label for="id">Supprimer le post d'id </label>
                            <input type='text' name='id' >
                            <input type='submit' name='submit'><br>
                            <output  for="formDeletePost" name="message"></output>
                      </form>`; 
    cible.hidden=false;
    document.forms.formDeletePost.addEventListener('submit',sendDeletion);
     }
  
  function processAnswer1(answer){
    if (answer.status == "ok"){
        return answer.result;
    }
    else
      throw new Error(answer.message);
  }
  function displayErrorPosts(error){
    let p = document.createElement('p');
    p.innerHTML = error.message;
    let cible  = document.querySelector('div.resultat');
    cible.textContent=''; // effacement
    cible.appendChild(p); 
  }
  

  function sendDeletion(ev) {
    ev.preventDefault();
    let args = new FormData(this);
    let url = 'services/deletePost.php';
    fetchFromJson(url,{method: 'post', body : args, credentials: 'same-origin'})
    .then(processAnswer)
    .then(postDeleted,errorDeletion);
  }

function postDeleted(id) {
  document.forms.formDeletePost.message.value = 'success : Post of id '+id+' deleted !';
}


function errorDeletion(error) {
  document.forms.formDeletePost.message.value = 'échec : ' + error.message;
}