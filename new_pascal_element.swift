#!/usr/bin/env swift
// calculate element of pascals triangle

func pascalElement(row: Int, col: Int) -> Int {
  if (col == 0) || (col == row) {
    return 1
  } else {
    return pascalElement(row-1, col: col-1) + pascalElement(row-1, col: col)
  }
}

print(pascalElement(0, col: 0))
print(pascalElement(1, col: 0))
print(pascalElement(4, col: 2))
