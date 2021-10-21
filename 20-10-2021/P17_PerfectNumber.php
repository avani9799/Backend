<?php

$number=$_POST["givenvalue"];

$sum=0;
    for($i=1;$i<$number;$i++)
    {
        if($number%$i==0){
           $sum = $sum + $i;
        }
    }
    if($sum==$number){
        echo $number." is perfect"; 
    }else{
        echo $number." is not perfect";
    }
?>
