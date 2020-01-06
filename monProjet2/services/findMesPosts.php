<?php
set_include_path('..'.PATH_SEPARATOR);
require_once('lib/common_service.php');
require_once('lib/watchdog_service.php');
// une fois que l'utilisateur aura été autentifié on pourra passer a la suite

try{
    $data = new DataLayer();
    $myPosts = $data->getMyPosts($_SESSION['ident']->login);
    if ($myPosts)
        produceResult($myPosts);
    else
        produceError("post's not found");
} catch (PDOException $e){
    produceError($e->getMessage());
}

?>
