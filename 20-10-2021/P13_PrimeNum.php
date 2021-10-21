<!-- WAP to read a number and check whether it is prime or not.(using for loop)(can be div by 2) -->

<?php 

	$given_num=$_POST['givenvalue'];

	$result=0;
	
	for($i=1; $i<=$given_num; $i++)
	{
		if($given_num % $i == 0)
		$result++;
	}
	if($result == 2)
	{
		echo "Number is a prime number";
	}
	else
	{	
		echo " Number is  not a prime number";
	}

?>

