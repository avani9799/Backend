<?php  
    $arr_value = array(10,20,30,40,50);  
     
    echo"Original Array: <br>";  
    for ($i = 0; $i < count($arr_value); $i++) {   
        print($arr_value[$i] . " ");   
    }    
    echo"<br>Array in reverse: <br>";  
    for ($i = count($arr_value)-1; $i >= 0; $i--) {   
        print($arr_value[$i] . " "); ;   
    }      
?>  