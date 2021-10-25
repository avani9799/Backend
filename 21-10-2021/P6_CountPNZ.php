<?php

    function getCount($array_value,$arr_size){
    $zero_count = 0;
    $positive_count = 0;
    $negative_count = 0;

    for($i = 0;$i <$arr_size;$i++){
        

    if($array_value[$i]===0){
    $zero_count++;
    }
    else if($array_value[$i]> 0){
    $positive_count++;
    }
    elseif($array_value[$i] < 0){
    $negative_count++;
    }

    }
    echo "Total Positive Value : ".$positive_count."<br>";
    echo "Total Zero Value : " .$zero_count."<br>";
    echo "Total Negative Value : ".$negative_count."<br>";
    }

    $array_value = array(1,-2,0,20,21,-45,5,0,50);
    $arr_size=sizeof($array_value);
    echo"Array Element : <br> ";
    for ($i = 0; $i < $arr_size; $i++) {
    print($array_value[$i] . " "."<br>");
    }
    getCount($array_value,$arr_size);
?>