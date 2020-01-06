<?php
set_include_path('..'.PATH_SEPARATOR);
require_once('lib/common_service.php');
require_once('lib/watchdog_service.php');
// une fois que l'utilisateur aura été autentifié on pourra passer a la suite

$args = new RequestParameters();
$args->defineNonEmptyString('id');
$args->defineNonEmptyString('avis');


if (! $args->isValid()){
  produceError('argument(s) invalide(s) --> '.implode(', ',$args->getErrorMessages()));
  return;
}

try{
    $data = new DataLayer();
    $postUpdated= $data->likeOrNoLike($args->id,$args->avis,$_SESSION['ident']->login);
    if ($postUpdated)
        produceResult( $data->getPost($args->id));
    else
        produceError("You can not like or nolike your comments !");
} catch (PDOException $e){
    produceError($e->getMessage());
}
?>
