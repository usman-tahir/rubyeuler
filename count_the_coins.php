<?php

function count_change($amount) {
  return cc($amount,4);
}

function cc($amount,$kinds_of_coins) {
  if ($amount == 0) {
    return 1;
  } else if ($amount < 0 || $kinds_of_coins == 0) {
    return 0;
  } else {
    return cc($amount,$kinds_of_coins-1) + cc($amount-first_denomination($kinds_of_coins), $kinds_of_coins);    
  }
}

function first_denomination($kinds_of_coins) {
  if ($kinds_of_coins == 1) {
    return 1;
  } else if ($kinds_of_coins == 2) {
    return 5;
  } else if ($kinds_of_coins == 3) {
    return 10;
  } else if ($kinds_of_coins == 4) {
    return 25;
  } else {
    return 0;
  }
}

echo count_change(100)."\n";