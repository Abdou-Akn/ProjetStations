
window.addEventListener('load',sendStation10Request);


function sendStation10Request() {
  let url = 'services/findBestStations.php';
  fetchFromJson(url)
  .then(processAnswer)
  .then(stationsToTable,displayErrorStations);
}


function stationsToTable(stations){
  let table = document.createElement('table');
  table.createTHead().insertRow().innerHTML="<td>nom</td><td>marque</td><td>adresse</td><td>nombre d\'avis recus</td><td>Note globale</td><td>note Accueil</td><td>note services</td><td>note prix</td>";
   let body = table.createTBody();
  for (let station of stations){
    body.insertRow().innerHTML = `<td>${station.nom}</td><td><a href='#bouttonMarque${station.id}' id='bouttonMarque${station.id}'>${station.marque}</a></td><td>${station.adresse}</td><td>${station.nbnotes}</td><td>${station.noteglobale}</td><td>${station.noteaccueil}</td><td>${station.noteservice}</td><td>${station.noteprix}</td>`;
  }

  let cibl1 = document.querySelector('section#section_station>div.resultat');
  cibl1.appendChild(table);

  for (let station of stations){
    let id =station.id;
    let cible = document.getElementById(`bouttonMarque${id}`);
    cible.addEventListener('click',function(){
                      let url = 'services/findStation.php?id='+id;
                      fetchFromJson(url)
                      .then(processAnswert)
                      .then(function(ville){
                        let url = 'services/requetesHTTP.php?commune='+ville;
                        fetchFromJson(url) //on recupere un tableau json
                        .then(processAnswer2) // on recupere le tableau d'objets, 'data'
                        .then(placerMarqueurs,errorsearch); // on les place sur la carte
                      },displayErrorInfo2);
                   })
  }

}


function processAnswert(answer){
  if (answer.status == "ok"){
    document.querySelector('.menu>a#bouton_accueil').click();    
    document.querySelector('.menu>a#bouton_accueil').click();

    return answer.result.ville;
  }
  else
    throw new Error(answer.message);
}


function displayErrorStations(error){
  let p = document.createElement('p');
  p.innerHTML = error.message;
  let cible  = document.querySelector('section#section_station>div.resultat');
  cible.textContent=''; // effacement
  cible.appendChild(p); 
}






