<?php
    
    $arr = array(1,2,3,4);
    $brr = array(10,20,30,40);

    function printArray($a){
        for($i = 0; $i<count($a); $i++){
            echo $a[$i]." ";
        }
    }
    echo "Before Swap:<br>";
    echo " : First Array <br>".printArray($arr);
    echo " = Second Array ".printArray($brr);

    function swapArray(&$a, &$b){
        for($i = 0; $i < count($a); $i++){
            $a[$i] = $a[$i] + $b[$i];
            $b[$i] = $a[$i] - $b[$i];
            $a[$i] = $a[$i]-$b[$i];
        }
    }

    swapArray($arr, $brr);
    echo "<br><br>After Swap:<br>";
    echo " : First Array <br>".printArray($arr);
    echo " : Second Array ".printArray($brr);
?>