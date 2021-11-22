<?php  
    interface i1  
    {  
        public function fun1();  
    }  
    interface i2  
    {  
        public function fun2();  
    }  
class cls1 implements i1,i2  
{  
    function fun1()  
    {  
        echo "Hello"."<br>";  
    }  
    function fun2()  
    {  
        echo "I am Avni!!!!";  
    }  
}  
$obj= new cls1();  
$obj->fun1();  
$obj->fun2();  
  
?>  