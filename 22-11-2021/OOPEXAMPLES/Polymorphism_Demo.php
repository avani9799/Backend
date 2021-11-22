<?php
   class Base {
      function display() {
         echo "<br>"."Base class function declared final!";
      }
      function demo() {
         echo "<br>"."Base class function!";
      }
   }
   class Derived extends Base {
      function demo() {
         echo "<br>"."Derived class function!";
      }
   }
   $ob = new Base;
   $ob->demo();
   $ob->display();
   $ob2 = new Derived;
   $ob2->demo();
   $ob2->display();
?>