<?php
require_once("lib/db_parms.php");
   
Class DataLayer{
    private $connexion;
    public function __construct(){

            $this->connexion = new PDO(
                       DB_DSN, DB_USER, DB_PASSWORD,
                       [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
                       ]
                     );


    }
    

   function authentifier($login, $password){ 
        $sql = <<<EOD
        select
        *
        from utilisateursp2
        where login = :login
EOD;
        $stmt = $this->connexion->prepare($sql);
        $stmt->bindValue(':login', $login);
        $stmt->execute();
        $res = $stmt->fetch();
        if ($res && crypt($password, $res['password']) == $res['password'])
              return new Utilisateur($res['login'],$res['nom'],$res['prenom'],$res['mail'],$res['ville'],$res['description'],$res['nbavis'],$res['total'],$res['nbposts'],$res['nblike'],$res['nbnolike']);
        else
          return NULL;
    }
 
   function getAvatar($login,$size){
     // on pourrait stocker la valeur de $size puis lancer la requette en consequence, mais ca ne serait pas trés sur 
     // je prefere treter les deux cas un  par un, ce n'est pas ce qu'il y'a de plus propre mais bon.
     if ($size=='large') {
      $sql = <<<EOD
      select mimetype, avatar256x256
      from utilisateursp2
      where login=:login
EOD;
     }
     else {
      $sql = <<<EOD
      select mimetype, avatar48x48
      from utilisateursp2
      where login=:login
EOD;
     }
      $stmt = $this->connexion->prepare($sql);
      $stmt->bindValue(':login', $login);
      $stmt->bindColumn('mimetype', $mimeType);
      if($size == 'large')
          $stmt->bindColumn('avatar256x256', $flow, PDO::PARAM_LOB);
      else
          $stmt->bindColumn('avatar48x48', $flow, PDO::PARAM_LOB);
      $stmt->execute();
      $res = $stmt->fetch();
      if ($res)
         return ['mimetype'=>$mimeType,'data'=>$flow];
      else
         return false;
    }
    
    function getInfoUtilisateur($login){
      $sql = <<<EOD
      select * from utilisateursp2
      where login=:login
EOD;
      $stmt = $this->connexion->prepare($sql);
      $stmt->bindValue(':login', $login);
      $stmt->execute();
      $res = $stmt->fetch();
      if ($res)
         return new Utilisateur($res['login'],$res['nom'],$res['prenom'],$res['mail'],$res['ville'],$res['description'],$res['nbavis'],$res['total'],$res['nbposts'],$res['nblike'],$res['nbnolike']);
      else
         return false;
    }

    function getBestTen(){
      $sql = <<<EOD
      select *
      from stationsp2
      order by noteglobale desc
      fetch first 10 rows only
EOD;
      $stmt = $this->connexion->prepare($sql);
      $stmt->execute();
      $res = $stmt->fetchAll();
      if ($res) {
        $tab = array();
        for ($i=0; $i < count($res) ; $i++) { 
          $tab[] = new Station($res[$i]['id'],$res[$i]['nom'],$res[$i]['marque'],$res[$i]['latitude'],$res[$i]['longitude'],$res[$i]['adresse'],$res[$i]['cp'],$res[$i]['ville'],$res[$i]['nbnotes'],$res[$i]['noteglobale'],$res[$i]['noteaccueil'],$res[$i]['noteprix'],$res[$i]['noteservice']);
        }
        return $tab;
            }
      else
      return  false;
    }

    function getStation($id){
      $sql = <<<EOD
      select *
      from stationsp2
      where id =:id

EOD;
      $stmt = $this->connexion->prepare($sql);
      $stmt->bindValue(':id', $id);
      $stmt->execute();
      $res = $stmt->fetch();
      if ($res) {
         return  new Station($res['id'],$res['nom'],$res['marque'],$res['latitude'],$res['longitude'],$res['adresse'],$res['cp'],$res['ville'],$res['nbnotes'],$res['noteglobale'],$res['noteaccueil'],$res['noteprix'],$res['noteservice']);
       } 
      else
      return  false;
    }


    function getPostsOfStation($id){
      $sql = <<<EOD
      select *
      from postsp2
      where station =:id

EOD;
      $stmt = $this->connexion->prepare($sql);
      $stmt->bindValue(':id', $id);
      $stmt->execute();
      $res = $stmt->fetchAll();
      if ($res) {
        $tab = array();
        for ($i=0; $i < count($res) ; $i++) { 
          $tab[] = new Poste($res[$i]['id'],$res[$i]['auteur'],$res[$i]['station'],$res[$i]['titre'],$res[$i]['contenu'],$res[$i]['datecreation'],$res[$i]['nblike'],$res[$i]['nbnolike']);
        }
        return $tab;
            }
      else
      return  false;
    }


function getMyPosts($id){
  $sql = <<<EOD
  select *
  from postsp2
  where auteur =:id
  order by datecreation desc

EOD;
  $stmt = $this->connexion->prepare($sql);
  $stmt->bindValue(':id', $id);
  $stmt->execute();
  $res = $stmt->fetchAll();
  if ($res) {
    $tab = array();
    for ($i=0; $i < count($res) ; $i++) { 
      $tab[] = new Poste($res[$i]['id'],$res[$i]['auteur'],$res[$i]['station'],$res[$i]['titre'],$res[$i]['contenu'],$res[$i]['datecreation'],$res[$i]['nblike'],$res[$i]['nbnolike']);
    }
    return $tab;
        }
  else
  return  false;
}


function incrementNbAvis($login){
  $sql = <<<EOD
  update utilisateursp2
  set nbavis = nbavis+1 
  WHERE login = :login

EOD;
$stmt = $this->connexion->prepare($sql);
$stmt->bindValue(':login', $login);
$stmt->execute();

}

function setScoreStation($login,$id,$globale,$accueil,$prix,$service){
  $sql = <<<EOD
  update stationsp2
  set noteglobale =noteglobale+ :globale  , noteaccueil =noteaccueil+ :accueil, noteprix =noteprix + :prix , noteservice=noteservice+  :service , nbnotes = nbnotes+1
  WHERE id = :id 

EOD;
  $stmt = $this->connexion->prepare($sql);
  $stmt->bindValue(':id', $id);
  $stmt->bindValue(':globale', $globale);
  $stmt->bindValue(':accueil', $accueil);
  $stmt->bindValue(':prix', $prix);
  $stmt->bindValue(':service', $service);
  $stmt->execute();
  if($stmt->rowCount() == 1){
    $this->incrementNbAvis($login);
  }
  else
    return false;
}



function incrementNbPosts($login){
  $sql = <<<EOD
  update utilisateursp2
  set nbposts = nbposts+1 
  WHERE login = :login

EOD;
$stmt = $this->connexion->prepare($sql);
$stmt->bindValue(':login', $login);
$stmt->execute();

}

function decrementNbPosts($login){
  $sql = <<<EOD
  update utilisateursp2
  set nbposts = nbposts-1
  WHERE login = :login

EOD;
$stmt = $this->connexion->prepare($sql);
$stmt->bindValue(':login', $login);
$stmt->execute();

}

function nbLikes($login,$avis){
  if ($avis=='like') {
    $sql = <<<EOD
    update utilisateursp2
    set nblike = nblike+1
    WHERE login = :login
  
EOD;
  }
    else{
      $sql = <<<EOD
      update utilisateursp2
      set nbnolike = nbnolike+1
      WHERE login = :login
    
EOD;
    }

$stmt = $this->connexion->prepare($sql);
$stmt->bindValue(':login', $login);
$stmt->execute();

}


function creatPost($auteur,$station,$titre,$contenu){
  $sql = <<<EOD
  insert into postsp2(auteur,station,titre,contenu,datecreation) 
  values (:auteur,:station,:titre,:contenu,:datecreation) 
  returning id
  
EOD;
  $stmt = $this->connexion->prepare($sql);
  $stmt->bindValue(':station', $station);
  $stmt->bindValue(':auteur', $auteur);
  $stmt->bindValue(':titre', $titre);
  $stmt->bindValue(':contenu', $contenu);
  $stmt->bindValue(':datecreation', date('d/m/Y H:i:s'));

  $stmt->execute();
  if($stmt->rowCount() == 1){
    $this->incrementNbPosts($auteur);
    return  $stmt->fetch()['id'];
  }
  else
    return false;
}

function deletePost($id,$auteur){
  $sql = <<<EOD
  delete from postsp2
  where auteur=:auteur and id=:id returning id
  
EOD;
  $stmt = $this->connexion->prepare($sql);
  $stmt->bindValue(':id', $id);
  $stmt->bindValue(':auteur', $auteur);
  $stmt->execute();
  if($stmt->rowCount() == 1){
    $this->decrementNbPosts($auteur);
    return $stmt->fetch();
  }
  else
    return false;
}


function getPost($id){
  $sql = <<<EOD
  select *
  from postsp2
  where id =:id

EOD;
  $stmt = $this->connexion->prepare($sql);
  $stmt->bindValue(':id', $id);
  $stmt->execute();
  $res = $stmt->fetch();
  if ($res) {
     return  new Poste($res['id'],$res['auteur'],$res['station'],$res['titre'],$res['contenu'],$res['datecreation'],$res['nblike'],$res['nbnolike']);
   } 
  else
  return  false;
}

function likeOrNoLike($id,$avis,$login){
  if ($avis == 'like') {
    $sql = <<<EOD
    update postsp2
    set nblike = nblike+1
    WHERE id =:id and auteur !=:login

EOD;
}
elseif ($avis == 'nolike') {
  $sql = <<<EOD
  update postsp2
  set nbnolike = nbnolike+1
  WHERE id =:id and auteur !=:login
EOD;
}
else {
  return false;
}
  $stmt = $this->connexion->prepare($sql);
  $stmt->bindValue(':id', $id);
  $stmt->bindValue(':login', $login);
  $stmt->execute();
  $this->nbLikes($login,$avis);
  return $stmt->rowCount()==1;
}

 function createUser($login,$password,$nom,$prenom){
  $sql = <<<EOD
  INSERT INTO
  utilisateursp2(login,password,nom,prenom)
  values (:login,:password,:nom,:prenom);
EOD;
  $stmt = $this->connexion->prepare($sql);
  $stmt->bindValue(':login',$login);
  $stmt->bindValue(':nom',$nom);
  $stmt->bindValue(':prenom',$prenom);

  $empreinte = password_hash($password,CRYPT_BLOWFISH);
  $stmt->bindValue(':password',$empreinte);

  try{
    $stmt->execute();
    return $stmt->rowCount() == 1;
  }
  catch (PDOException $e){
    return false;
  }
}
// j'ai essayé de concatener $sql celon qu'une variable soit Set ou pas ...mais ca ne marchait pas
 function updateProfil($login,$mail,$description,$ville,$password,$prenom,$nom){
  if (isset($mail) && $mail!='') {
    $sql ="update utilisateursp2
          set mail = :mail
          WHERE login =:login";
          $stmt = $this->connexion->prepare($sql);
          $stmt->bindValue(':login',$login);
          $stmt->bindValue(':mail',$mail);
          $stmt->execute();
  }
  if (isset($description) && $description!='') {
    $sql ="update utilisateursp2 set description = :description WHERE login =:login";
          $stmt = $this->connexion->prepare($sql);
          $stmt->bindValue(':login',$login);
          $stmt->bindValue(':description',$description);
          $stmt->execute();
  }
  if (isset($ville) && $ville!='') {
    $sql ="update utilisateursp2 set ville = :ville WHERE login =:login";
          $stmt = $this->connexion->prepare($sql);
          $stmt->bindValue(':login',$login);
          $stmt->bindValue(':ville',$ville);
          $stmt->execute();
  }
  if (isset($password) && $password!='') {
    $sql ="update utilisateursp2 set password = :password WHERE login =:login";
          $stmt = $this->connexion->prepare($sql);
          $stmt->bindValue(':login',$login);
          $empreinte = password_hash($password,CRYPT_BLOWFISH);
          $stmt->bindValue(':password',$empreinte);          
          $stmt->execute();
  }
  if (isset($nom) && $nom!='') {
    $sql ="update utilisateursp2
          set nom = :nom
          WHERE login =:login";
          $stmt = $this->connexion->prepare($sql);
          $stmt->bindValue(':login',$login);
          $stmt->bindValue(':nom',$nom);
          $stmt->execute();
  }
  if (isset($prenom) && $prenom!='') {
    $sql ="update utilisateursp2
          set prenom = :prenom
          WHERE login =:login";
          $stmt = $this->connexion->prepare($sql);
          $stmt->bindValue(':login',$login);
          $stmt->bindValue(':prenom',$prenom);
          $stmt->execute();
  }
      $res =$this->getInfoUtilisateur($login) ;
      if ($res) {
        return $res;
      }
      else{
        return false;
      }
  
}

 function storeAvatar($image, $login){
  $SQL = <<<EOD
  UPDATE
  utilisateursp2  SET
  mimetype = :mimetype,
  avatar48x48 = :avatar
  WHERE login = :login;
EOD;
  $stmt = $this->connexion->prepare($SQL);
  $stmt->bindValue(':mimetype',$image['mimetype']);
  $stmt->bindValue(':avatar',$image['data'], PDO::PARAM_LOB);
  $stmt->bindValue(':login',$login);

  try{
    $stmt->execute();
    return $stmt->rowCount() == 1;
  }
  catch (PDOException $e){
    return false;
  }
}


}