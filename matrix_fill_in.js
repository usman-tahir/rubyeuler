#!/usr/bin/env node
// http://programmingpraxis.com/2016/01/12/matrix-fill-in/

function matrixFillIn(matrix) {
  var one_columns = []; var one_rows = [];
  for (var r = 0; r < matrix.length; r++) {
    for (var c = 0; c < matrix[r].length; c++) {
      if (matrix[r][c] === 1) {
        if (one_rows.indexOf(r) < 0) { one_rows.push(r)};
        if (one_columns.indexOf(c) < 0) { one_columns.push(c)};
      }
    }
  }
  for (var r = 0; r < matrix.length; r++) {
    if (one_rows.indexOf(r) > -1) {
      for (var i in matrix[r]) {
        matrix[r][i] = 1;
      }
    }
    for (var c = 0; c < matrix[r].length; c++) {
      if (one_columns.indexOf(c) > -1) {
        matrix[r][c] = 1;
      }
    }
  }
  return matrix;
}

var m = [
  [0,0,0,0,0],
  [0,0,0,0,0],
  [0,0,0,1,0],
  [1,0,0,0,0],
  [0,0,0,0,0]
]

console.log(matrixFillIn(m));
