<?php
$total_value = 30;

$coin_100 = floor($total_value/100);
$r = $total_value%100;

$coin_50 = floor($r/50);
$r = $r%50;

$coin_20 = floor($r/20);
$r = $r%20;

$coin_10 = floor($r/10);
$r = $r%10;

$coin_5 = floor($r/5);
$r = $r%5;

$coin_2 = floor($r/2);
$r = $r%2;

$coin_1 = $r;

echo " Rupees : ". $total_value."<br>";
echo "Total coins of 100 : ".$coin_100."<br>";
echo "Total coins of 50 : ".$coin_50."<br>";
echo "Total coins of 20 : ".$coin_20."<br>";
echo "Total coins of 10 : ".$coin_10."<br>";
echo "Total coins of 5 : ".$coin_5."<br>";
echo "Total coins of 2 : ".$coin_2."<br>";
echo "Total coins of 1 : ".$coin_1."<br>";

?>
