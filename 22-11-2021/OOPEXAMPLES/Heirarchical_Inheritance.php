<?php
class A{
   function test(){
      echo "method in A class";
   }
}
class B extends A{
   //
}
class C extends B{
   //
}
$obj=new C();
$obj->test();
?>
