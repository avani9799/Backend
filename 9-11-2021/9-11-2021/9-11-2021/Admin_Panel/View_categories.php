<?php

session_start();
include 'connection.php';

if($_SESSION['email']==''){
    header('Location:Login.php');
}
else{
    $email=$_SESSION['email'];
    $query1=mysqli_query($con,"select admin_name from admin where admin_email='$email'") or die('Error in query');

    $row1=mysqli_fetch_array($query1);
    // echo "Hello ".$row1['stud_name'];

?>
    
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>View Categories Detail</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="Bootstrap/css/bootstrap.css">
        <style>
        .table {
            margin: auto;
            border: 1px solid transparent;
            border-radius: 10px;
            box-shadow: 0 0 20px #17406c;
        }
        table td, table th {
            padding: 10px;
        }
        a{
            text-decoration:none;
            border:1px solid #000000;
            padding:5px 15px 5px 15px;
            color:#ffffff;
            background-color: #17406c;
            border-radius: 5px;
            font-weight:bold;
        }
        a:hover{
            box-shadow: 0 0 15px orange;
            color:#ffffff;
        }
        </style>
    </head>
    <body>
        
    <table class="table w-50">
    <thead>
        <tr>
            <div class="container text-end mt-5">
                <a href="Logout.php">LOGOUT</a>
            </div>
            <div class="text-center my-5"><h2>All Categories</h2></div>
            <div class="container d-flex justify-content-start mb-4 w-50">
            <h5>
                    <?php
                    echo "Hello ".$row1['admin_name'];
                    ?>
                </h5>
            </div>
        </tr>
      <tr>
        <th scope="col">ID</th>
        <th scope="col">NAME</th>
        <th scope="col" colspan='2'>ACTION</th>
      </tr>
    </thead>
  

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src=" Bootstrap/js/jquery.js"></script>
        <script src="Bootstrap/js/bootstrap.min.js"></script>
    </body>
    </html>
    
    <?php
    $sql="select * from categories";

    $query=mysqli_query($con,$sql);

    while($row=mysqli_fetch_array($query)){
        $sid=$row['c_id'];
        echo "<tr>";
        echo "<td>".$sid."</td>";
        echo "<td>".$row['c_name']."</td>";
        echo "<td><a href=Update_categories.php?sid=$sid >Edit</a></td>";
        echo "<td><a href=Delete.php?sid=$sid >Delete</a></td>";
        echo "</tr>";
    }

    echo "</table>";
    mysqli_close($con);

}

?>
