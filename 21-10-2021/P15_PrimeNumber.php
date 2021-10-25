<?php

    function primeCount($arr, $n)
    {
    $max_val = max($arr);
    $prime = array_fill(0, $max_val + 1, true);

    $prime[0] = false;
    $prime[1] = false;
    for ($p = 2; $p * $p <= $max_val; $p++)
    {

    // If prime[p] is not changed,
    // then it is a prime
    if ($prime[$p] == true)
    {
    // Update all multiples of p
    for ($i = $p * 2;
    $i <= $max_val; $i += $p)
    $prime[$i] = false;
    }
    }

    // Find all primes in arr[]
    $count = 0;
    for ($i = 0; $i < $n; $i++)
    if ($prime[$arr[$i]])
    $count++;

    return $count;
    }

    $arr = array(1, 2, 3, 4, 5, 6, 7 );
    $n = sizeof($arr);

    echo primeCount($arr, $n);

?>