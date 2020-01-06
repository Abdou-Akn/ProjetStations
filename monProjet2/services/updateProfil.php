<?php
set_include_path('..'.PATH_SEPARATOR);
require_once('lib/common_service.php');
require_once('lib/watchdog_service.php');
// une fois que l'utilisateur aura été autentifié on pourra passer a la suite

$args = new RequestParameters('POST');
$args->defineString('mail');
$args->defineString('description');
$args->defineString('ville');
$args->defineString('password');
$args->defineString('prenom');
$args->defineString('nom');


if (! $args->isValid()){
  produceError('argument(s) invalide(s) --> '.implode(', ',$args->getErrorMessages()));
  return;
}

try{
    $data = new DataLayer();
    $utilisateur = $data->updateProfil($_SESSION['ident']->login,$args->mail,$args->description,$args->ville,$args->password,$args->prenom,$args->nom);
    if ($utilisateur){
        
        produceResult($utilisateur);
    }
        else{
        produceError(`No changes on the profil of login ${$_SESSION['ident']->login}`);
    }
} catch (PDOException $e){
    produceError($e->getMessage());
}
?>
