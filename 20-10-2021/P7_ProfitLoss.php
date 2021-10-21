<!-- WAP to read cost price and selling price of an item and find out how much loss or profit
occurs. -->

<?php

$cost_price=$_POST['cost'];
$sell_price=$_POST['sell'];


if ($sell_price > $cost_price){
    $price=$sell_price-$cost_price;
    $profit_price = ($price * 100) / $cost_price;
    $result =  $price;
    echo "Total Profit : ".$result;
}else {
    $loss = $cost_price - $sell_price;
    $loss_price = ($loss * 100) / $cost_price;
    $result= $loss;
    echo "Total Loss : ".$result;
}

 ?>

