<?php
// tree recursion

function fibonacci($n) {
  return fib_iter(1,0,$n);  
}

function fib_iter($a,$b,$count) {
  if ($count == 0) {
    return $b;
  } else {
    return fib_iter($a+$b,$a,$count-1);
  }
}

for ($i = 0; $i < 20; $i++) {
  echo fibonacci($i).", ";
}
echo fibonacci(20)."\n";
