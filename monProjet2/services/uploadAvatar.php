<?php
set_include_path('..'.PATH_SEPARATOR);
require_once('lib/common_service.php');
require_once('lib/watchdog_service.php');
// une fois que l'utilisateur aura été autentifié on pourra passer a la suite


//création des différents attribut nécessaire à l'upload
$login = $_SESSION['ident']->login;
$imageSpec = array();
$imageSpec['mimetype'] = $_FILES['image']['type'];
$imageSpec['data'] = fopen($_FILES['image']['tmp_name'],'r');
$imageSpec['size'] = $_FILES['image']['size'];
$imageSpec['name'] = $_FILES['image']['name'];

//upload
$data= new DataLayer();
$success = $data->storeAvatar($imageSpec,$login);
try{
if($success){
  echo json_encode(['status'=>'ok','result'=>true]);
}
else{
  echo json_encode(['status'=>'error', 'message'=>'Échec de l\'upload']);
}
}catch (PDOException $e){
  produceError($e->getMessage());
}


?>
