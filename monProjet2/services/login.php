<?php
set_include_path('..'.PATH_SEPARATOR);

require_once('lib/common_service.php');
require_once('lib/session_start.php');


if ( ! isset($_SESSION['ident'])) {
  $args = new RequestParameters('POST');
  $args->defineNonEmptyString('login');
  $args->defineNonEmptyString('password');

  if (! $args->isValid()){
   produceError('argument(s) invalide(s) --> '.implode(', ',$args->getErrorMessages()));
   return;
  }
  try{
    $data = new DataLayer();
    $personne = $data->authentifier($args->login,$args->password);
    if ($personne) {
      $_SESSION['ident']=$personne;  
      unset($_SESSION['echec']);
      produceResult($personne);
    }
    else {
      produceError("Mot de passe ou nom d'utilisateur incorrect");
    }

  }catch (PDOException $e){
    produceError($e->getMessage());
}


 
} else {
   produceError("déjà authentifié");
   return;
}
?>
