<?php
set_include_path('..'.PATH_SEPARATOR);

require_once('lib/common_service.php');
require_once('lib/session_start.php');


if ( ! isset($_SESSION['ident'])) {
  $args = new RequestParameters('POST');
  $args->defineNonEmptyString('login');
  $args->defineNonEmptyString('password');
  $args->defineNonEmptyString('nom');
  $args->defineNonEmptyString('prenom');

  if (! $args->isValid()){
   produceError('argument(s) invalide(s) --> '.implode(', ',$args->getErrorMessages()));
   return;
  }
  try{
    $data = new DataLayer();
    $userCreated = $data->createUser($args->login,$args->password,$args->nom,$args->prenom);
    if ($userCreated) {
      produceResult($args->login);
    }
    else {
      produceError("Creation Error ! please choose another login.");
    }

  }catch (PDOException $e){
    produceError($e->getMessage());
}


 
} else {
   produceError("déjà authentifié");
   return;
}
?>
