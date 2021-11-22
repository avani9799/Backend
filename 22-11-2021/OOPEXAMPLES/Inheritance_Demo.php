<?php
class parentclass{
   public function publicmethod(){
      echo "This is public method of parent class"."<br>" ;
   }
   protected function protectedmethod(){
      echo "This is protected method of parent class"."<br>" ;
   }
   private function privatemethod(){
      echo "This is private method of parent class"."<br>" ;
   }
}
class childclass extends parentclass{
   public function childmethod(){
      $this->protectedmethod();
   }
}
$obj=new childclass();
$obj->publicmethod();
$obj->childmethod();
?>