<!-- WAP to read a number and sum of its digits(using while loop) -->

<?php 


$given_number=$_POST['givenvalue'];

    $result=0;
    $rem=0;
    $i=0;
    
    while($i <= strlen($given_number)){
        $rem=$given_number%10;
        $result+=$rem;
        $given_number=$given_number/10;
        $i++;
    }
    echo "Sum Of all digit is : ".$result;


?>
