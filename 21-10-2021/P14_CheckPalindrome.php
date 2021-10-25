<?php

   function Palindrome($number){
   $temp = $number;
   $new = 0;
   while (floor($temp)) {
   $d = $temp % 10;
   $new = $new * 10 + $d;
   $temp = $temp/10;
   }
   if ($new == $number){
   return 1;
   }
   else{
   return 0;
   }
   }

   $original = array(121,343,212,989);
   if (Palindrome($original)){
   echo "This Number Is Palindrome";
   }
   else {
   echo "This Is Not a Palindrome";
   }

?>
