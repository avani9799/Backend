<?php

$arr_value=array(12, 35, 1, 10, 34, 1 );
$arr_size=sizeof($arr_value);

$max=$second_max=0

for ($i = 0; $i < $arr_size; $i++) {
    if ($arr_value[$i] > $max) {
        $second_max = $max;
        $max = $arraarr_valuey[$i];
    } else if (($arr_value[$i] > $max2) && ($arr_value[$i] != $max)) {
        $second_max = $arr_value[$i];
    }
}
echo "Highest Value is : " . $second_max . "<br/>"; 
echo "Second highest value is : " . $second_max . "<br/>"; 

?>

