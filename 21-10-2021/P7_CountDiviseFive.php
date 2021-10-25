<?php

function checkCount($arr_value){
    $arr_size=sizeof($arr_value);
    $count=0;

    for($i=0;$i<$arr_size;$i++){
        if($arr_value[$i]%5 == 0){
            $count++;
        }
    }
    echo "The Number Of Element Divisible By 5 is : = ".$count;

}

$arr_value=array(5,25,7,50,15,35,10);
echo checkCount($arr_value);

?>