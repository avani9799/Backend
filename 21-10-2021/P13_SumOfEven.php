<?php

function getSum($arr_value,$arr_size){
    $total_sum=0;
    for ($i=0;$i < $arr_size;$i++){
        if($arr_value[$i] % 2 == 0){
            $total_sum += $arr_value[$i];            
        }
    }
    echo "Total Of All Even Number in Array is : ".$total_sum;
}

$arr_value=array(2,3,4,5,6);
$arr_size=sizeof($arr_value);

getSum($arr_value,$arr_size);

    
?>
