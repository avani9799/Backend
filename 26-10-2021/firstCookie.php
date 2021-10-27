<html>
<head>
<title>PHP Cookies Example</title>
</head>
<body>

<form method="POST" action="firstCookie.php">

Enter First Name : <input type="text" name="fname"> <br/>
Enter Last Name : <input type="text" name="lname"> <br/>
<br/>
<input type="submit" name="Submit1" value="Create Cookie">
<input type="submit" name="Submit2" value="Retrive Cookie">
<input type="submit" name="Submit3" value="Delete Cookie">
</form>

<?php

if(isset($_POST["Submit1"]))
{
setcookie("fname",$_POST["fname"], time() + 3600, "/", "", 0);
setcookie("lname", $_POST["lname"], time() + 3600, "/", "", 0);
echo "Cookies Created !!";
}else if(isset($_POST['Submit2']))
{
    if(isset($_COOKIE["fname"]))
    {
    echo "Name = ". $_COOKIE["fname"]."<br/>";
    echo "Lname = ". $_COOKIE["lname"]."<br/>";
    }
    else
    {
    echo "Cookies deleted !!";
    }
}else if(isset($_POST["Submit3"]))
{
setcookie("fname","", time() - 3600, "/", "", 0);
setcookie("lname", "", time() - 3600, "/", "", 0);
} 

?>

</body>
</html>