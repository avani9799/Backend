<!-- <?php

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
     -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Product Detail</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="Bootstrap/css/bootstrap.css">
    <style>
        .table {
            margin: auto;
            border: 1px solid transparent;
            border-radius: 10px;
            box-shadow: 0 0 20px #17406c;
            width: 70%;
        }

        table td,
        table th {
            padding: 10px;
        }

        .tabletd {
            max-width: 100px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        a {
            text-decoration: none;
            border: 1px solid #000000;
            padding: 5px 15px 5px 15px;
            color: #ffffff;
            background-color: #17406c;
            border-radius: 5px;
            font-weight: bold;
        }

        a:hover {
            box-shadow: 0 0 15px orange;
            color: #ffffff;
        }
    </style>
</head>

<body>

    <table class="table text-center">
        <thead>
            <tr>
                <div class="container-fluid text-end mb-4" >
                    <div class="row" style="background-color:rgba(0, 0, 0, .1)">
                        <div class="col d-flex align-items-center">
                            <ul class="nav  nav-pills mb-3 p-3" id="pills-tab" role="tablist">
                                <li class="nav-item" role="presentation">
                                <a class="nav-link active" aria-current="page" href="dashboard.php">Home</a>

                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
                                        data-bs-target="#pills-profile" type="button" role="tab"
                                        aria-controls="pills-profile" aria-selected="false">Profile</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill"
                                        data-bs-target="#pills-contact" type="button" role="tab"
                                        aria-controls="pills-contact" aria-selected="false">Contact</button>
                                </li>
                            </ul>
                        </div>
                        <div class="col d-flex align-items-center">
                            <h2>All Products For Women's</h2>
                        </div>
                    </div>

                </div>
            </tr>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">IMAGE</th>
                <th scope="col">NAME</th>
                <th scope="col">PRICE</th>
                <th scope="col">DESCRIPTION</th>
                <th scope="col">CategoriesName</th>
                <th scope="col">Status</th>
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
    $sql="select * from product_detail where c_name='women'";

    $query=mysqli_query($con,$sql);

    while($row=mysqli_fetch_array($query)){
        $sid=$row['p_id'];

        echo "<tr class=align-middle>";
        echo "<td>".$sid."</td>";
        echo "<td><img src=".$row['p_image']." height=100 width=120 /></td>";
        echo "<td>".$row['p_name']."</td>";
        echo "<td>$".$row['p_price']."</td>";
        echo "<td class=tabletd>".$row['p_description']."</td>";
        echo "<td>".$row['c_name']."</td>";
        echo "<td>".$row['is_active']."</td>";
        echo "<td><a href=Update_products.php?sid=$sid >Edit</a></td>";
        echo "<td><a href=Delete.php?sid=$sid >Delete</a></td>";
        echo "</tr>";
        echo "<tr><td colspan=9><hr></td></tr>";
    }

    echo "</table>";
    mysqli_close($con);

}

?>