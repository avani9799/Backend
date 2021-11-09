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
            border-radius: 10px;
            box-shadow: 0 0 20px #17406c;
        }

        h2 {
            background-color: #17406c;
            padding: 5px;
            color: #fff;
            border-radius: 10px;
        }

        .btn {
            width: 100%;
            display: block;
            background-color: #17406c;
            color: #fff;
            font-weight:bold;
        }
        a{
            text-decoration:none;
        }

    </style>
    <title>Login </title>
</head>
<body>
<form class="w-50 mt-5" method="POST">
        <h2 class="text-center">Login Form</h2>
        <div class="form-group mt-5">
            
            <div class="form-group mt-3">
            <input type="email" class="form-control" name="email" value="<?php if(isset($_COOKIE["email"])) { echo $_COOKIE["email"]; } ?>" id="email" aria-describedby="emailHelp"
                placeholder="Enter email" required>
            </div>

            <div class="form-group  mt-3">
                <input type="password" class="form-control" name="pwd" value="<?php if(isset($_COOKIE["pwd"])) { echo $_COOKIE["pwd"]; } ?>" id="pwd" placeholder="Enter Password" required>
                <!-- <a href="#">Forget Password?</a> -->
            </div>

            <div class="form-check mt-3">
                <input class="form-check-input" type="checkbox" value="" name="remember" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">
                    Remember me
                </label>
            </div>

        </div>
        <button type="submit" class="btn btn-primary mt-5" name="submit" >Submit</button>
        <div class="d-flex justify-content-center mt-3">
            <h6>Don't have account? <span> <a href="SignUp.php">Sign Up</a> </span> </h6>
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

 if(isset($_POST['submit'])){


    // if(!empty($_POST["remember"])) {
    //     setcookie ("email",$_POST["email"],time()+ 3600);
    //     setcookie ("pwd",$_POST["pwd"],time()+ 3600);
    //     echo "Cookies Set Successfuly";
    // } else {
    //     setcookie("email","");
    //     setcookie("pwd","");
    //     echo "Cookies Not Set";
    // }
    $email=$_POST['email'];
    $password=$_POST['pwd'];

    $sql="select * from student where stud_email='$email' and stud_password='$password'";

    $query=mysqli_query($con,$sql) or die("Error in Query");
        $rows=mysqli_num_rows($query);

        if($rows>0){
            session_start();
            $_SESSION['email']=$email;
            header('Location:dashboard.php');
            // echo "Login successfully";
        }else{
            echo "Incorrect User Or Password";
        }
        
        mysqli_close($con);
    }

   

?>