<?php

function insertion_sort($array) {
  $sortable = $array;
  for ($i = 1; $i < count($sortable); $i++) {
    $value = $sortable[$i];
    $j = $i-1;
    while ($j >= 0 && $sortable[$j] > $value):
      $sortable[$j+1] = $sortable[$j];
      $j--;
    endwhile;
    $sortable[$j+1] = $value;
  }
  return $sortable;
}

$t = array(4, 65, 2, -31, 0, 99, 2, 83, 782, 1);
$s = insertion_sort($t);
echo implode(', ', $s)."\n";
