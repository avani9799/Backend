<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="Bootstrap/css/bootstrap.css">
<style>
form {
margin: auto;
border: 1px solid transparent;
padding: 30px;
border-radius: 0px;
box-shadow: 0 0 20px black;
}
a{
font-size:14px;
color:black;

}

h2 {
background-color: #17406c;
padding: 5px;
color: #fff;
border-radius: 0px;
}


.btn {
            width: 100%;
            display: block;
            background-color: #17406c;
            color: #fff;
            font-weight:bold;
        }

</style>
<title>Login </title>
</head>
<body>
<form class="w-50 mt-5" action="Login.php" method="POST">
<h2 class="text-center">Login Form</h2>
<div class="form-group mt-5">

<div class="form-group mt-3">
<input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp"
placeholder="Enter email" required>
</div>

<div class="form-group mt-3">
<input type="password" class="form-control" name="pwd" id="pwd" placeholder="Enter Password" required>
</div>
<div class="field-group">
<div class = "mt-3"><input type="checkbox" name="remember" id="remember" >
<label for="remember-me">Remember me</label>
</div>


</div>
<input type="submit" class="btn btn-primary mt-5" name="submit" value="LOGIN">
<div class = "text-center">
<h6 class="mt-3"><span>Don't have an Account?</span>
<a class = "reg"href="SignUp.php"> Register here</a>
</h6>

</div>
</form>

</form>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src=" Bootstrap/js/jquery.js"></script>
<script src="Bootstrap/js/bootstrap.min.js"></script>
</body>
</html>

<?php


include 'connection.php';
session_start();

if(isset($_POST['submit']))
{
$email=$_POST['email'];
$password=$_POST['pwd'];

try{
$sql="select * from student where stud_email='$email' and stud_password='$password'" or die("error in query");
echo $sql;
$q = $pdo->query($sql);
$q->setFetchMode(PDO::FETCH_ASSOC);
while($row=$q->fetch())
{
if(isset($_POST["remember"]))
{
setcookie ("email",$email);
setcookie ("password",$password);
$_SESSION['email']=$email;
}
header("Location:dashboard.php");

}
}
catch(PDOException $e){
echo $sql . "<br>" . $e->getMessage();
}

}

?>