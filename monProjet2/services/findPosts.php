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
    $posts = $data->getPostsOfStation($args->id);
    if ($posts)
        produceResult($posts);
    else
        produceError("<h2>Commentaires de la station :</h2><br>aucun post n'a été trouvé pour la station d'id {$args->id}");
} catch (PDOException $e){
    produceError($e->getMessage());
}

?>
