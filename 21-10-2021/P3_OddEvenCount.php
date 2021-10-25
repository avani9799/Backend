<?php

$array_value=array(2,3,4,5,6);
$even_count=0;
$odd_count=0;

for ($i=0;$i<=4;$i++){
    if($array_value[$i] % 2 == 0){
        $even_count++;
    }else{
        $odd_count++;
    }
}

echo "Number of even elements : =".$even_count."<br>Number of odd elements : =".$odd_count ;    
    
?>
