<?php
set_include_path('..'.PATH_SEPARATOR);
require_once('lib/common_service.php');
require_once('lib/watchdog_service.php');
// une fois que l'utilisateur aura été autentifié on pourra passer a la suite

$args = new RequestParameters('POST');
$args->defineNonEmptyString('station');
$args->defineString('titre');
$args->defineNonEmptyString('contenu');


if (! $args->isValid()){
  produceError('argument(s) invalide(s) --> '.implode(', ',$args->getErrorMessages()));
  return;
}

try{
    $data = new DataLayer();
    $identifiant = $data->creatPost($_SESSION['ident']->login,$args->station,$args->titre,$args->contenu);
    if ($identifiant)
        produceResult($identifiant);
    else
        produceError("maximum posts reached for the station {$args->id}");
} catch (PDOException $e){
    produceError($e->getMessage());
}
?>
