<?php

$accumulator = 0;

for ($i = 1; $i < 1000; $i++) {
  if ($i % 5 == 0) {
    $accumulator += $i;
  } else if ($i % 3 == 0) {
    $accumulator += $i;
  } else {
    continue;
  }
}

echo "$accumulator\n";

