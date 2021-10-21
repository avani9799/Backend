<!-- WAP to read a number and check whether its Armstrong or not.(using while loop)((Sum
of xQube)=x. like153) -->

<?php

$given_number=$_POST['givenvalue'];

    $total=0;
    $new_val=$given_number;
    while($new_val!=0 ){
        $rem=$new_val%10;
        $total=$total + ($rem*$rem*$rem);
        $new_val=$new_val/10;
    }
    if($total==$given_number){
        echo "The Given Number is Armstrong";
    }else{
        echo "The Given Number is not Armstrong";
    }

?> 