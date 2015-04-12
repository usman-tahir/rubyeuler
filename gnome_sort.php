<?php

function swap(&$x, &$y) {
  $x ^= $y ^= $x ^= $y;
}

function gnome_sort($array) {
  $sortable = $array;
  $i = 1;
  $j = 2;
  while ($i < count($sortable)) {
    if ($sortable[$i-1] <= $sortable[$i]) {
      $i = $j;
      $j++;
    } else {
      swap($sortable[$i-1],$sortable[$i]);
      $i--;
      if ($i == 0) {
        $i = $j;
        $j++;
      }
    }
  }
  return $sortable;
}

$t = array(100, 2, 56, 200, -52, 3, 99, 33, 177, -199);
$s = gnome_sort($t);
echo implode(', ', $s)."\n";
