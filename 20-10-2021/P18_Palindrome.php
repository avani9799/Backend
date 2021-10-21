<?php
 $given_val=$_POST['givenvalue'];

 $res=0;
 $new_val=$given_val;

 while($new_val){
    $rem=$new_val%10;
    $res=($res * 10) + $rem;
    $new_val=$new_val/10;
 }

 $new_val=$given_val;

 if ($new_val==$given_val){
    echo "Number is palindrome";
 }else{
     echo "Number is not palindrome";
 }
?>