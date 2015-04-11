<?php

function square($n) {
  return ($n * $n);
}

function smallest_divisor($n) {
  return find_divisor($n,2);
}

function divides($a,$b) {
  if ($b % $a == 0) {
    return 1;
  } else {
    return 0;
  }
}

function find_divisor($n,$test_divisor) {
  if (square($test_divisor) > $n) {
    return $n;
  } else if (divides($test_divisor,$n) == 1) {
    return $test_divisor;
  } else {
    return find_divisor($n,($test_divisor+1));
  }
}

function is_prime($n) {
  if (smallest_divisor($n) == $n) {
    return 1;
  } else {
    return 0;
  }
}

for ($i = 1; $i <= 50; $i++) {
  if (is_prime($i) == 1) {
    echo "$i is prime\n";
  }
}


