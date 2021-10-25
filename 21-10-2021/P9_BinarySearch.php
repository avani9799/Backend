<?php

    function binarySearch($arr_value, $x)
    {
    if (count($arr_value) === 0) return false;
        $low = 0;
        $high = count($arr_value) - 1;

        while ($low <= $high) {

        $mid = floor(($low + $high) / 2);

        if($arr_value[$mid] == $x) {
        return true;
    }

    if ($x < $arr_value[$mid]) {
        $high = $mid -1;
        }
        else {
        $low = $mid + 1;
        }
    }
    return false;
    }

    $arr_value = array(1, 2, 3, 4, 5);
    $search_value = sizeof($arr_value);
    print_r($arr_value);
    echo "<br> Value For Search Is : ".$search_value."<br>";

    if(binarySearch($arr_value, $search_value) == true) {
    echo $search_value." Number Exists";
    }else {
    echo $search_value." Number Doesnt Exist";
    }
?>