<?php
set_include_path('..'.PATH_SEPARATOR);
require_once('lib/common_service.php');
require_once('lib/watchdog_service.php');
// une fois que l'utilisateur aura été autentifié on pourra passer a la suite

$args = new RequestParameters('POST');
$args->defineNonEmptyString('id');


if (! $args->isValid()){
  produceError('argument(s) invalide(s) --> '.implode(', ',$args->getErrorMessages()));
  return;
}

try{
    $data = new DataLayer();
    $identifiant = $data->deletePost($args->id,$_SESSION['ident']->login);
    if ($identifiant)
        produceResult($identifiant);
    else
        produceError("the post {$args->id} that you are trying to delete doesn't exist ");
} catch (PDOException $e){
    produceError($e->getMessage());
}
?>
