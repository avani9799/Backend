<?php

$multi_array_val = array(
    array("first" => 4, "sec" => 5, "third" => 6),
    array("first" =>10, "sec" => 3, "third" => 11),
    array("first" => 4, "sec" => 8, "third" => 10)
);

$sumMulArray = 0;

foreach($multi_array_val as $array_val){
    foreach($array_val as $array_key => $value){
        $sumMulArray += $value;
    }
}

echo "The sum of numbers in multidimensional array is: ".$sumMulArray;


