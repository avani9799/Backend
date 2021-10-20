<!--  Program to calculate the Gross Salary when Basic Salary is given. The allowances HRA(%) ,DA (%), PF and Medical are also given. 
Add the HRA and DA in the Basic Salary but deduct PF and Medical from the Salary.-->

<?php

$basic_salary=5000;

$da = $basic_salary *  (40/100);
$hra = $basic_salary * (20/100);
$pf = $basic_salary * (30/100);
$medical = $basic_salary * (10/100);

$total_salary= ($basic_salary + $da + $hra) - ($pf + $medical);

echo "Gross Salary Of Employee : ".$total_salary;

?>







