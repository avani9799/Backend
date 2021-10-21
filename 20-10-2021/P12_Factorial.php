<!-- WAP to read a number and calculate factorial.(using for loop) -->
<?php 

$given_number=$_POST['givenvalue'];

$result=1;

for($i=1;$i<=$given_number;$i++){
$result*=$i;
}

echo "Factorial Of Given Number is  : ".$result;
?>
