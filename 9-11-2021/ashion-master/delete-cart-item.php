<?php

include '../Admin_Panel/connection.php';


$cartid=$_GET['cartid'];
$sql="delete from cart where cart_id=$cartid";

$query=mysqli_query($con,$sql) or die("Error in Query.");


if($query){
    //echo "data deleted";
   header('Location:shop-cart.php');
    }
else{
    echo "<script>alert('Error in delete.)</script>";
}
?>