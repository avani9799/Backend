<!-- Program to convert given number of days into Months & Days. -->
<?php

$givendays=458;

 $month=$givendays/30;
 $days=$givendays % 30;

echo "Moths : ".(int)$month."and Days :".(int)$days;

?>