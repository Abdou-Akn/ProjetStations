<?php
set_include_path('..'.PATH_SEPARATOR);
require_once('lib/common_service.php');


try{
  $data = new DataLayer();
  $res = $data->getBestTen();
  if ($res){ 
    produceResult($res);
  }
  else
    produceError('Pas assez de stations');
}
catch (PDOException $e){
  produceError($e->getMessage());
}

?>
