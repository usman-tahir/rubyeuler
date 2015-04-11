<?php
// fizzbuzz with an anonymous function

$fb = function ($x) {
  return $x % 15 == 0 ? "fizzbuzz" : $x % 5 == 0 ? "buzz" : $x % 3 == 0 ? "fizz" : $x;
};

for ($i = 1; $i <= 100; $i++) {
  echo $fb($i)."\n";
}
