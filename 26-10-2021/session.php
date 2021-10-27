<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form method="POST" action="session.php">

Enter First Name : <input type="text" name="fname"> <br/>
Enter Last Name : <input type="text" name="lname"> <br/>
<br/>
<input type="submit" name="Submit1" value="Create Session">
<input type="submit" name="Submit2" value="Retrive Session">
<input type="submit" name="Submit3" value="Destroy Session">
</form>

<?php

session_start();

if(isset($_POST['Submit1'])){

    $_SESSION["fname"]=$_POST['fname'];
    $_SESSION["lname"]=$_POST['lname'];
   echo "Session Created.";
}

else if(isset($_POST['Submit2'])){
    if(isset($_SESSION["fname"]))
        {
        echo  "First Name :- ".$_SESSION["fname"]."<br>";
        echo  "Last Name:-".$_SESSION["lname"]."<br>";
        echo "Session variables are retrived.";
        }
}else if(isset($_POST['Submit3'])){
    session_destroy();
    echo "Session Destroyed!!";
}
?>
</body>
</html>