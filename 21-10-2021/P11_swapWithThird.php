<?php
    function swapArray($a,$b,$temp)
    {
        echo "Before Swap : "."<br>";
        echo "First array : ";
        print_r($a);
        echo "<br>Second array : ";
        print_r($b);
        $temp=$a;
        $a=$b;
        $b=$temp;
        echo "<br><br>";
        echo "After swap"."<br>";
        echo "First array : ";
        print_r($a);
        echo "<br>Second array : ";
        print_r($b);
    }
    $a=array(2,4,6,8,0);
    $b=array(1,3,5,7,9);
    $temp=array();
    swapArray($a,$b,$temp);
?>