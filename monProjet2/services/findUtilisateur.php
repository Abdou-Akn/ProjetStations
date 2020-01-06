<?php
set_include_path('..'.PATH_SEPARATOR);
require_once('lib/common_service.php');

$args = new RequestParameters();
$args->defineNonEmptyString('login');

if (! $args->isValid()){
  produceError('argument(s) invalide(s) --> '.implode(', ',$args->getErrorMessages()));
  return;
}

try{
    $data = new DataLayer();
    $infoUtilisateur = $data->getInfoUtilisateur($args->login);
    if ($infoUtilisateur)
        produceResult($infoUtilisateur);
    else
        produceError("login {$args->login} not found");
} catch (PDOException $e){
    produceError($e->getMessage());
}

?>
