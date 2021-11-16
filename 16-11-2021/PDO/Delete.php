<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Delete</title>
</head>
<body>

</body>
</html>

<?php

include 'connection.php';

try{
$id=$_GET['s_id'];

$sql="delete from student where stud_id=$id";
$q = $pdo->query($sql);
header('Location:dashboard.php');

}
catch(PDOException $e){
echo $sql . "<br>" . $e->getMessage();
}


?>
