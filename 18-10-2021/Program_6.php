<!-- WAP to read basic salary from user and calculate gross salary where DA 40% of basic
salary and HRA is 20% of basic salary" (da=dearness Allowance) (hra=House Rent Allowance)-->

<?php

$basic_salary=5000;

$da = $basic_salary *  (40/100);
$hra = $basic_salary * (20/100);

$gross = $basic_salary + $da + $hra;

echo "Gross Salary Of Employee : ".$gross;

?> 







