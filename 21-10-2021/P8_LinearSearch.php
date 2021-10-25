<?php

function linearSearch($arr_value,$search_elem){
    $arr_size=sizeof($arr_value);

    for($i=0;$i<$arr_size;$i++){
        if(  $arr_value[$i] == $search_elem ){
            return $i ;
        }
    }
    return -1;
}

$arr_value=array(5,25,7,50,15,35,10,21,2,45);
$search_elem=21;

$find_result=linearSearch($arr_value,$search_elem);
if($find_result == -1)
    echo "Element  ".$search_elem." is not found in array";
else
    echo "Element ".$search_elem." is found in array " ;

?>