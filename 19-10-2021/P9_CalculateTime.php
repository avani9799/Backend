
<!-- WAP to convert total number of seconds into hours, minutes, and seconds. -->
<?php

$s = 5000;

$sec = $s % 60;
$hrs = $s / 60;
$mins = $hrs % 60;
$hrs = $hrs / 60;

print ("HH:MM:SS-> " . (int)$hrs . ":" . (int)$mins . ":" . (int)$sec);

?>
