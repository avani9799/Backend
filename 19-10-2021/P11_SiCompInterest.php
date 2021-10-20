<?php

// p = principle
// t = time
// r = rate
// CI = compound interest
$p=5000;
$r=15;
$t=1;
$CI=NULL;

$si=($p * $r *$t)/100;
$CI = $p * (pow((1 + $r / 100), $t));

echo "Compound Interest :" . $CI."<br>";
echo "Simple Interest is :".$si;



?>