<?php
/**
 *@author AKENIOUENE Abderrahmane
 * filtre d'information récupérées à travers le formulaire
 */
if(isset($_POST["ok"]) && $_POST["ok"])
    {
            $resultat = filter_input(INPUT_POST, 'rayon', FILTER_VALIDATE_INT);

            if($resultat === NULL || $resultat === false) { 
                $rayon = 10;
            }
            elseif($resultat !== false) {
                $rayon= $resultat;
            }

            
            $resultat2 = filter_input(INPUT_POST, 'commune', FILTER_SANITIZE_ENCODED);

            if ($resultat2 === NULL || $resultat2 === "" )  {
                require("pageErreur.html");
                }

            else 
                {
                $commune = $resultat2;
                }



            $s="";
            $cart = array();


            for ($i = 0; $i <= 6; $i++) 
                {
                    if(isset($_POST["carb".$i]))
                        {
                            $cart[]=$_POST["carb".$i];
                        }
                }

            if (sizeof($cart)==0 || isset($_POST["carb0"])) 
                {
                    $s="1,2,3,4,5,6";
                }      
            else   
                    $s=implode(",", $cart);
    
// on lance la requete pour recuperer les information selon les données saisies
$chaine =  file_get_contents ("http://webtp.fil.univ-lille1.fr/~clerbout/carburant/stations.php?commune=".$commune."&carburants=".$s."&rayon=".$rayon); 
$tab= json_decode($chaine,true);
// dans le cas ou la recuperation aurait échoué on affiche un message d'erreur
if ($tab["message"]) {
    echo "<p id='error'> La commune rechérchée n'a pas été trouvée, veuillez réessayer !! </p>";
}
else {
    echo "<p id='noerror'>".sizeof($tab["data"])." stations ont étés trouvées !  </p>";
    $tableauDeToulesElements=$tab["data"];
}
}




?>