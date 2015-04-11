<?php
// tree recursion

function fibonacci($n) {
  if ($n == 0) {
    return 0;
  } else if ($n == 1) {
    return 1;
  } else {
    return fibonacci($n-1) + fibonacci($n-2);
  }
}

for ($i = 0; $i < 20; $i++) {
  echo fibonacci($i).", ";
}
echo fibonacci(20)."\n";
