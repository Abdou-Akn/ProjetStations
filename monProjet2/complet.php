<?php
spl_autoload_register(function ($className) {
    include ("lib/{$className}.class.php");
});
session_name('akeniouene');
session_start();
if (isset($_SESSION['ident'])){
    $personne = $_SESSION['ident'];
}

date_default_timezone_set ('Europe/Paris');
try{
    $data = new DataLayer();
    $listBestTen = $data->getBestTen();
    require ('views/pageComplet.php');
} catch (PDOException $e){
    $errorMessage = $e->getMessage();
    require("views/pageErreur.php");
}

?>
