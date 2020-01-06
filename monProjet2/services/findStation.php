<?php
set_include_path('..'.PATH_SEPARATOR);
require_once('lib/common_service.php');

$args = new RequestParameters();
$args->defineNonEmptyString('id');

if (! $args->isValid()){
  produceError('argument(s) invalide(s) --> '.implode(', ',$args->getErrorMessages()));
  return;
}

try{
    $data = new DataLayer();
    $station = $data->getStation($args->id);
    if ($station)
        produceResult($station);
    else
        produceError("station of id {$args->id} not found");
} catch (PDOException $e){
    produceError($e->getMessage());
}

?>
