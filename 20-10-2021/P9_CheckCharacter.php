<!-- WAP to read character and find out whether it is upper case latter, lower case latter, digit or special symbol. -->
<?php

    $given_char=$_POST['givenvalue'];

    if($given_char >= 'A' && $given_char <='Z'){
        echo $given_char." is UpperCase Character"."<br>";
    }elseif($given_char >= 'a' && $given_char <= 'z'){
        echo $given_char." is LowerCase Character"."<br>";
    }else{
        echo "Other";
    }



?>