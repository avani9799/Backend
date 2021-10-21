<?php

$a=$_POST["number1"];
$b=$_POST["number2"];
$c=$_POST["number3"];

    $max=0;
    if($a >= $b && $a >= $c){
        $max=$a;
    }
    if($b >= $a && $b >= $c){
        $max=$b;
    }
    if($c >= $a && $c >= $b){
        $max=$c;
    }

    echo "Max Number is : ".$max;

?>
