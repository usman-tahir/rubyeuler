<?php

function pascal_element($row,$column) {
  if ($column == 0) {
    return 1;
  } else if ($column == $row) {
    return 1;
  } else {
    return (pascal_element($row-1,$column-1) + pascal_element($row-1,$column));
  }
}

echo pascal_element(0,0) . "\n";
echo pascal_element(1,0) . "\n";
echo pascal_element(4,2) . "\n";
