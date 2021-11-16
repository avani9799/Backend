<?php

try{

    $pdo=new PDO('mysql:host=localhost;dbname=Admin_Panel','root','');
    //echo "connected successfully.";
}
catch(PDOException $e){
    echo "connection failed.".$e->getMessage();
}



?>