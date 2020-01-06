// gerer le menu

window.addEventListener('load',b);

   function a(){
    let nav = document.querySelector('.nav');
    nav.classList.toggle('nav_opened');
  }
  
  function b(){
    let btnmenu = document.querySelector('div.btn');
    let btnaccueil = document.querySelector('.menu>a#bouton_accueil');
    let btnposts = document.querySelector('.menu>a#bouton_mesPostes');
    let btnprofil = document.querySelector('.menu>a#bouton_monProfil');

    btnmenu.addEventListener('click',a);
    btnaccueil.addEventListener('click',a);
    btnposts.addEventListener('click',a);
    btnprofil.addEventListener('click',a);

  }  //----
  


