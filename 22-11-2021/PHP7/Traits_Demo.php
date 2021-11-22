<?php
trait Demo_Traits {
    public function geeks() {
        echo 'Hello World!';
    }
}
  
class CheckTraits {
    use Demo_Traits;
    public function demo() {
        echo 'Hello !!!!!!!!!!!!!!!1!';
    }
}
  
$obj = new CheckTraits();
$obj->demo();
?>