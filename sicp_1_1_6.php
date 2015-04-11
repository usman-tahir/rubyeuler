<?php
// sicp 1.1.6 conditional expressions

// abs function must already exist
function _abs($x) {
  switch ($x) {
    case ($x > 0):
      return $x;
      break;
    case ($x == 0):
      return 0;
      break;
    case ($x < 0):
      return -$x;
      break;
  }
}

echo _abs(14)."\n";
echo _abs(0)."\n";
echo _abs(-5)."\n";
