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

    echo $query2=mysqli_query($con," select * from product_detail where p_id='$id' ") or die("Error in query");
    $row2=mysqli_fetch_array($query2);

    $img=$row2['p_image'];
    $name=$row2['p_name'];
    $price=$row2['p_price'];
    $desc=$row2['p_description'];
    $cname=$row2['c_name'];
    $status=$row2['is_active'];
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
      <title>Update Producis</title>
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
        select{
            width:100%;
            padding: 5px;
            border:1px solid #ced4da;
            border-radius: 0.25rem;
        }

    </style>
  </head>
  <body>
  <div class="container d-flex justify-content-start mb-4 w-50 mt-5">
            <?php
                echo "Hello ".$row1['admin_name'];
            ?>
    </div>
  <form class="w-50 mt-5" method="POST" enctype="multipart/form-data">
        <h2 class="text-center">Update Details</h2>
        <div class="form-group mt-5">
        <div class="form-group mt-3">
                <input type="text" class="form-control" name="name" value="<?php echo $name ?>" id="name" placeholder="Enter Product Name" required>
            </div>
            <div class="form-group mt-3">
                <input type="text" class="form-control" name="price" value="<?php echo $price ?>" id="price" placeholder="Enter Product Price" required>
            </div>
            <div class="form-group mt-3">
                <textarea class="form-control" name="desc" id="desc" value="<?php echo $desc ?>" placeholder="Enter Product Descripton" required><?php echo $desc ?></textarea>
            </div>

            <div class="form-group mt-3">
                <label for="formFile" class="form-label">Add Product Image</label>
                <input class="form-control" type="file" name="file" id="formFile">
                <img src="images/<?php echo $img ?>" style="width:100px;height:50px" alt="">

            </div>

            <div class="form-group mt-3">
            <label for="categories">Choose a Categories:</label>
            <select name="categories" value="<?php echo $cname ?>" id="categories">
                    <option value="<?php echo $cname ?>"><?php echo $cname ?></option>
                    <option value="women" >women</option>
                    <option value="men"  >men</option>
                    <option value="kids"  >kids</option>
                    <option value="accessories" >accessories</option>
                </select>
            </div>

            <div class="form-group mt-3">
                <input type="number" id="quantity" name="status" min="0" max="1" value="<?php echo $status ?>">
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
    $price=$_POST['price'];
    $desc=$_POST['desc'];
    $cname=$_POST['categories'];
    $status=$_POST['status'];
    $img=$_FILES['file'];   
    $img_loc=$_FILES['file']['tmp_name'];
    $filename=$_FILES['file']['name'];
    $img_des="images/".$filename;
    
    include 'connection.php';
    move_uploaded_file($img_loc, "images/".$filename);


    $sql="update product_detail set p_image='$img_des',p_name='$name',p_price='$price',p_description='$desc',
    c_name='$cname',is_active='$status' where p_id=$id";

    $query=mysqli_query($con,$sql) or die("Error in Query");
        
        if($query){ 
            header('Location:dashboard.php');
        }else{
            echo "Error in update";
        }
        
        mysqli_close($con);
    }

?>