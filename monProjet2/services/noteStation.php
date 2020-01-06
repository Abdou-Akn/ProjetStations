<?php
set_include_path('..'.PATH_SEPARATOR);
require_once('lib/common_service.php');
require_once('lib/watchdog_service.php');
// une fois que l'utilisateur aura été autentifié on pourra passer a la suite

$args = new RequestParameters('POST');
$args->defineNonEmptyString('id');
$args->defineNonEmptyString('globale');
$args->defineNonEmptyString('accueil');
$args->defineNonEmptyString('prix');
$args->defineNonEmptyString('service');

if (! $args->isValid()){
  produceError('argument(s) invalide(s) --> '.implode(', ',$args->getErrorMessages()));
  return;
}

try{
    $data = new DataLayer();
    $data->setScoreStation($_SESSION['ident']->login,$args->id,$args->globale,$args->accueil,$args->prix,$args->service);
    $stationUpdated = $data->getStation($args->id);
    if ($stationUpdated)
        produceResult($stationUpdated);
    else
        produceError("station of id {$args->id} not found");
} catch (PDOException $e){
    produceError($e->getMessage());
}
?>
