<?php

function first_unrepeated_char($string)
{
  for ($i = 0; $i < strlen($string); $i++) {
    $char = $string[$i];
    $count = 1;
    for ($j = $i+1; $j < strlen($string); $j++) {
      if ($char === $string[$j]) {
        $count++;
      }
    }
    for ($k = $i-1; $k >= 0; $k--) {
      if ($char === $string[$k]) {
        $count++;
      }
    }
    if ($count == 1) {
      return $char;
    }
  }
  return "not found";
}

echo first_unrepeated_char("aabbcddd") . "\n";

