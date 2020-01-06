window.addEventListener('load',activerBouttonAccueil);


function activerBouttonAccueil(){
  document.querySelector('.menu>a#bouton_accueil').addEventListener('click',afficheAccueil);

}
function afficheAccueil(ev) {
  for (let cible1 of  document.querySelectorAll('.variable')){
      cible1.hidden=true;}

  let cible  = document.querySelector('div#accueil');
  cible.hidden=false;


  }
