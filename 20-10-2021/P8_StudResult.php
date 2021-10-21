<?php
$php = $_POST['mark1'];
$java = $_POST['mark2'];
$android = $_POST['mark3'];

    $total = ($php + $java + $android); 
    $average = $total/3; 

    echo " Total marks of subjects = ".$total ."<br>";
    echo " Average marks of subjects = ".$average ."<br>";
    if($total<35){
        echo "<br> Fail";
    }elseif($average>=80 && $average<95){
        echo "<br>Distinction";
    }elseif($average>=70 && $average<80){
        echo "<br> First Class";
    }elseif($average>=60 && $average<70){
        echo "<br> Second Class";
    }else{
        echo "<br> Pass";
    }
    return 0;

?>
