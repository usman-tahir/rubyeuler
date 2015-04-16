<?php

function multifactorial($number,$degree) {
  if ($number <= 1) {
    return 1;
  } else {
    return $number * multifactorial(($number-$degree),$degree);
  }
}

for ($d = 1; $d <= 5; $d++) {
  for ($n = 1; $n <= 10; $n++) {
    echo multifactorial($n,$d)."\n";
  }
}

