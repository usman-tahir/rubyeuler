<?php

function fizzbuzz($n)
{
  return $n % 15 == 0 ? "fizzbuzz" : $n % 5 == 0 ? "buzz" : $n % 3 == 0 ? "fizz" : $n;
}

for ($i = 1; $i <= 100; $i++) {
  echo fizzbuzz($i) . "\n";
}

