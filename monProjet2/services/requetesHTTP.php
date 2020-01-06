<?php
set_include_path('..'.PATH_SEPARATOR);

require_once('lib/common_service.php');


  $args = new RequestParameters('GET');
  $args->defineNonEmptyString('commune');
  $args->defineString('rayon');
  $args->defineString('carb0');
  $args->defineString('carb1');
  $args->defineString('carb2');
  $args->defineString('carb3');
  $args->defineString('carb4');
  $args->defineString('carb5');
  $args->defineString('carb6');


  if (! $args->isValid()){
   produceError('argument(s) invalide(s) --> '.implode(', ',$args->getErrorMessages()));
   return;
  }

  // on verifie si le rayon existe 
  if ($args->rayon == NULL ||  $args->rayon=='') {
      $args->rayon=1;
  }

  // on traite les carburants
  $carbs=array();
  if ($args->carb1 !=NULL) {
    $carbs[]= $args->carb1;
  }
  if ($args->carb2 !=NULL) {
    $carbs[]= $args->carb2;
  }
  if ($args->carb3 !=NULL) {
    $carbs[]= $args->carb3;
  }
  if ($args->carb4 !=NULL) {
    $carbs[]= $args->carb4;
  }
  if ($args->carb5 !=NULL) {
    $carbs[]= $args->carb5;
  }
  if ($args->carb6 !=NULL) {
    $carbs[]= $args->carb6;
  }


  if (sizeof($carbs)==0 || $args->carb0 != NULL) 
      $s="1,2,3,4,5,6";    
  else   
      $s=implode(",", $carbs);

$chaine =  file_get_contents ("http://webtp.fil.univ-lille1.fr/~clerbout/carburant/recherche.php?commune=".$args->commune."&carburants=".$s."&rayon=".$args->rayon); 
return $chaine;



 

?>
