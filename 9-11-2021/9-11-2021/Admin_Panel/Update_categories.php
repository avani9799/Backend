<?php

session_start();
include 'connection.php';

if($_SESSION['email']==''){
    header('Location:Login.php');
}
else{

    $id=$_GET['sid'];
    $email=$_SESSION['email'];
    
    $query1=mysqli_query($con,"select admin_name from admin where admin_email='$email'") or die('Error in query');

    $row1=mysqli_fetch_array($query1);
    // echo "Hello ".$row1['stud_name'];

    $query2=mysqli_query($con," select * from categories where c_id='$id' ") or die("Error in query");
    $row2=mysqli_fetch_array($query2);

    $name=$row2['c_name'];
}
?>
  
  <!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="Bootstrap/css/bootstrap.css">
      <title>Update Categories</title>
      <style>
        form {
            margin: auto;
            border: 1px solid transparent;
            box-shadow: 0 0 20px #17406c;
            padding: 30px;
            border-radius: 10px;
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

    </style>
  </head>
  <body>
  <div class="container d-flex justify-content-start mb-4 w-50 mt-5">
            <?php
                echo "Hello ".$row1['admin_name'];
            ?>
    </div>
  <form class="w-50 mt-5" method="POST">
        <h2 class="text-center">Update Details</h2>
        <div class="form-group mt-5">
            <div class="form-group mt-3">
                <input type="text" class="form-control" name="name" value="<?php echo $name ?>" id="name" placeholder="Enter Name" required>
            </div>
            
        </div>
        <button type="submit" class="btn btn-primary mt-5" name="update" >Submit</button>
    </form>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src=" Bootstrap/js/jquery.js"></script>
        <script src="Bootstrap/js/bootstrap.min.js"></script>
  </body>
  </html>

<?php

if(isset($_POST['update'])){
        
    $name=$_POST['name'];
    
    include 'connection.php';

    $sql="update categories set c_name='$name' where c_id=$id";

    $query=mysqli_query($con,$sql) or die("Error in Query");
        
        if($query){
            // echo "data update";
            header('Location:sidebars/dashboard.php');
        }else{
            echo "Error in update";
        }
        
        mysqli_close($con);
    }

?>