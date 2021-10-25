<?php

function checkMaxMin($arr_value){
    $arr_size=sizeof($arr_value);
    $max=$arr_value[0];
    $min=$arr_value[0];
    for($i=1;$i<$arr_size;$i++){
        if($arr_value[$i] > $max){
            $max=$arr_value[$i];
        }
        if( $arr_value[$i] < $min){
            $min=$arr_value[$i];
        }
    }
    echo "Max Number is : =".$max."<br>";
    echo "Min Number is : =".$min."<br>";
}

$arr_value=array(5,7,56,78,34,9);
echo (checkMaxMin($arr_value));



?>

