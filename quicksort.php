<?php

function quicksort($array) {
  $lesser_or_e = array();
  $greater = array();
  if (count($array) < 2) {
    return $array;
  }
  $pivot_key = key($array);
  $pivot = array_shift($array);
  foreach ($array as $element) {
    $element <= $pivot ? $lesser_or_e[] = $element : $greater[] = $element;
  }
  return array_merge(quicksort($lesser_or_e),array($pivot_key=>$pivot),quicksort($greater));
}

$t = array(4, 65, 2, -31, 0, 99, 2, 83, 782, 1);
echo implode(', ',quicksort($t))."\n";
