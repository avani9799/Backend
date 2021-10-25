<?php  

$array_value = array(     
             array(1, 2, 3),  
             array(4, 5, 6),  
             array(7, 8, 9)  
           );  
   
$rows = sizeof($array_value);  
$cols = sizeof($array_value[0]);  

for($i = 0; $i < $rows; $i++){  
    $sum_of_row = 0;  
    for($j = 0; $j < $cols; $j++){  
      $sum_of_row = $sum_of_row + $array_value[$i][$j];  
    }  
    print("Sum of " . ($i+1) ." row: " . $sum_of_row);  
    print("<br>");

}  
?>  