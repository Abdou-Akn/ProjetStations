
          <?php
          /**
           * @author AKENIOUENE Abderrahmanes
           */
          require("myFilterProject.php");
          
            $i=0;
            $chaine3="";
            $chaine2="";
                while ($i<sizeof($tableauDeToulesElements)) {
                    $chaine2.= '<tr id="fst"  data-ville="'.$tableauDeToulesElements[$i]["ville"].'" data-id="'.$i.'" data-lon="'.$tableauDeToulesElements[$i]["longitude"].'"  data-lat="'.$tableauDeToulesElements[$i]["latitude"].'" data-adresse="'.$tableauDeToulesElements[$i]["adresse"].'"  data-nom="'.$tableauDeToulesElements[$i]["nom"].'" data-automate24="'.$tableauDeToulesElements[$i]["automate24"].'"  data-marque="'.$tableauDeToulesElements[$i]["marque"].'" data-pop="'.$tableauDeToulesElements[$i]["pop"].'"  data-cp="'.$tableauDeToulesElements[$i]["cp"].'" style="display:none;"> </tr> ';            
                             for ($carPrix=0; $carPrix <sizeof($tableauDeToulesElements[$i]["prix"]) ; $carPrix++) { 
                                    $chaine3.= '<tr id="row'.$i.'"  class="'.$tableauDeToulesElements[$i]["prix"][$carPrix]["libelleCarburant"].'" data-valeur="'.$tableauDeToulesElements[$i]["prix"][$carPrix]["valeur"].'" >  </tr>';
                             }  
                             for ($service=0; $service <sizeof($tableauDeToulesElements[$i]["services"]) ; $service++) { 
                                $chaine3.= '<tr id="row2'.$i.'" class="'.$tableauDeToulesElements[$i]["services"][$service].'" >  </tr>';
                         }  

                    $i++;
                }
                echo $chaine3;
                echo $chaine2;


                ?>