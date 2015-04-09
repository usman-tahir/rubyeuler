<?php
for ($x = 1; $x < 101; $x++) {
  if ($x % 15 == 0) {
    echo "fizzbuzz\n";
  } else if ($x % 5 == 0) {
    echo "buzz\n";
  } else if ($x % 3 == 0) {
    echo "fizz\n";
  } else {
    echo "$x\n";
  }
}
