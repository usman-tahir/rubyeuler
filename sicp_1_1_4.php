<?php
// sicp 1.1.4: compound procedures

function square($x) {
  return $x * $x;
}

function sum_of_squares($x,$y) {
  return square($x) + square($y);
}

echo sum_of_squares(3,4)."\n";
