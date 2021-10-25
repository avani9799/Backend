<?php
   
    $b=0;
    $arr_value=array(5,10,15,20,25,1);
    $arr_size=sizeof($arr_value);
    for($i=0;$i<$arr_size;$i++)
    {
        $b=$b+$arr_value[$i];
    }
    echo "Addition of Array = ".$b;
?>