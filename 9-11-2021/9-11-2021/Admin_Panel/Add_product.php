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
        select{
            width:100%;
            padding: 5px;
            border:1px solid #ced4da;
            border-radius: 0.25rem;
        }

    </style>
    <title>Add Products</title>
</head>
<body>
<form class="w-50 mt-5" method="POST" enctype="multipart/form-data">
        <h2 class="text-center">Add Products</h2>
        <div class="form-group mt-5">
            <div class="form-group mt-3">
                <input type="text" class="form-control" name="name" id="name" placeholder="Enter Product Name" required>
            </div>
            <div class="form-group mt-3">
                <input type="text" class="form-control" name="price" id="name" placeholder="Enter Product Price" required>
            </div>
            <div class="form-group mt-3">
                <textarea class="form-control" name="pdesc" id="pdesc" placeholder="Enter Product Descripton" required></textarea>
            </div>
            <div class="form-group mt-3">
                <label for="formFile" class="form-label">Add Product Image</label>
                <input class="form-control" type="file" name="file" id="formFile">
            </div>
            <div class="form-group mt-3">
            <label for="categories">Choose a Categories:</label>
                <select name="categories" id="categories">
                    <option value="">---Select---</option>
                    <option value="women">women</option>
                    <option value="men">men</option>
                    <option value="kids">kids</option>
                    <option value="access">Accessories</option>
                    
                </select>
            </div>
        </div>
        </div>
        
        <button type="submit" class="btn btn-primary mt-3" name="submit" >Insert</button>
        
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

    $name=$_POST['name'];
    $price=$_POST['price'];
    $pdesc=$_POST['pdesc'];
    $categories=$_POST['categories'];
    
    $img=$_FILES['file'];
    $img_loc=$_FILES['file']['tmp_name'];
    $filename=$_FILES['file']['name'];
    $img_des="images/".$filename;
    
    move_uploaded_file($img_loc, $img_des);

    echo $insert_query="Insert into product_detail(p_name,p_price,p_description,p_image,c_name) values
    ('$name','$price','$pdesc','$img_des','$categories')";

    $res=mysqli_query($con,$insert_query);
    
    if($res){
        header("Location:dashboard.php");
    }else{
    echo "data not inserted";
    }
 }

 mysqli_close($con);

?>
