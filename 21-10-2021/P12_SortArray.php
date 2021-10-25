<?php

$arr_value=array(5,25,7,50,15,35,10,21,2,45);
sort($arr_value);


function sortAsce($arr_value){
    $arr_size=sizeof($arr_value);

    for($i=0;$i<$arr_size;$i++){
        echo $arr_value[$i]."<br>";
    }
}

echo sortAsce($arr_value);
?>