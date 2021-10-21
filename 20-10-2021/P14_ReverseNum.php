<!-- WAP to read a number and print its reverse.(using while loop) -->
<?php 


$given_number=$_POST['givenvalue'];

    $result=0;
    
    while($given_number > 1){   
        $remain=$given_number % 10;
        $result=($result * 10) + $remain;
        $given_number=($given_number/10);
    }
    echo "Reverse Number of given number is : ".$result;

?>


