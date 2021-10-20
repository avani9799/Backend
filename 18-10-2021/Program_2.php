
<!-- WAP to convert total number of seconds into hours, minutes, and seconds. -->
<?php

$second = 7000;

$sec = $second % 60;
$hour = $second / 60;
$mins = $hour % 60;
$hour = $hour / 60;

print ("HH:MM:SS-> " . (int)$hour . ":" . (int)$mins . ":" . (int)$sec);

?>
