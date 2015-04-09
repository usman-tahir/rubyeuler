<?php
function factorial($value)
{
  if ($value == 1) {
    return $value;
  } else {
    return $value * factorial($value-1);
  }
}

$number = 5;
$result = factorial(5);
echo "$result\n";

