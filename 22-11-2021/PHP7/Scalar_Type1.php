<?php
   // using Strict mode
   declare(strict_types = 1);
   function sum(int ...$ints) {
      return array_sum($ints);
   }
   print(sum(3, '3', 4.1));
?>