/**
 * @author AKENIOUENE Abderrahmane
 */


window.addEventListener("load",dessinerCarte);


/**
 * fonction qui permet d'instancier la carte sur la region nord par defaut, 
 * puis sur d'autres une fois le formulaire saisi.
 */
function dessinerCarte(){
    var map = L.map('carte').setView([50.38, 3.03], 8);
    
    L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);
    
    placerMarqueurs(map);
    // au click sur le boutton 'pour plus d'information' dans le popup
    map.on("popupopen",activerBouton);


}

/**
 * agit sur la carte passée en parametre, en y placant des marquers, à l'aide des differentes coordonnées géographiques recupérées.
 * ainsi qu'un popup apparant lors d'un click sur l'un des marqueurs.
 * @param  map la carte sur laquelle on souhaite agir
 */
function placerMarqueurs(map) {
   var l = document.querySelectorAll("table#communes>tbody>tr#fst"); // on construit la liste de toutes les ligne du tableau dont les lignes sont d'id fst
   var pointList= [];
   for (var i=0; i<l.length; i++){ 
        // on recupere les variable stoquées dans les differents 'data' de chaque lignes 
        // l'un des moyens les plus simples trouvé pour transmettre une variable de php vers Js
        var nom = l[i].dataset.nom;
        var id =  l[i].dataset.id;
        var pop =  l[i].dataset.pop;
        var ville =  l[i].dataset.ville;
        var adresse =  l[i].dataset.adresse;
        var marque =  l[i].dataset.marque;
        var automate24 =  l[i].dataset.automate24;
        var cp =  l[i].dataset.cp;

        // on construit la chaine qui sera affichée dans le popup lors d'un click
        var texte ="Nom : "+ nom+'</br>' + "Adresse : "+ adresse+'</br>' +"Ville : "+ ville+'</br>' +"Code postal : "+ cp+'</br>' +"Automate : "+ automate24+'</br>'+"Marques : "+ marque+'</br>'+"Route(R)/Auto-route(A) : "+ pop+"</br>" +" <button value=\""+id+"\"> Plus d'informations </button>";

        // recuperation de la latitude et la longitude
        var point = [l[i].dataset.lat, l[i].dataset.lon];
        // on place  un marqueur, ainsi que son popup associé
        L.marker(point).addTo(map).bindPopup(texte);
        pointList.push(point);
   }
   //  gere le positionement de la carte en fonction des differents points
    map.fitBounds(pointList);

}

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

    var identifiant =this.value;
    // on recupere les lignes du tableau associées a l'identifiant de l'élément cliqué
    var Elements = document.querySelectorAll('table#communes>tbody>tr#row'+identifiant); 
    var Elements2 = document.querySelectorAll('table#communes>tbody>tr#row2'+identifiant); 

    var chaine =' Les carburants disponibles et leurs prix associés :\n\n';
    var services = " Les services proposés par la station :\n\n";
    // on parcout et on stoque dans une chaine qu'on affichera ala fin
    for (var i=0; i<Elements.length; i++){ 
        var valeur = Elements[i].dataset.valeur;
        var libelleCarburant =Elements[i].getAttribute("class");
        var chaine =chaine+ " -\t"+libelleCarburant+" : "+valeur+" €\n ";
    }
    // pareil
    for (var index = 0; index < Elements2.length; index++) {
        var services = services +" -\t"+Elements2[index].getAttribute("class")+"\n";

    }
alert(chaine+"\n"+services);
}