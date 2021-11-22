<?php
   // using Coercive mode
   function sum(int ...$ints) {
      return array_sum($ints);
   }
   print("Total Number Of Sum :- ".sum(3, '3', 4.1));
?>

