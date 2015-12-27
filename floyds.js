#!/usr/bin/env node
// floyds triangle

function floyds(rows) {
  var n = 1;
  for (var r = 1; r <= rows; r++) {
    for (var c = 1; c <= r; c++) {
      process.stdout.write(
        n >= 100 ? n+" " : n >= 10 ? " "+n+" " : "  "+n+" "
      );
      n++;
    };
    console.log("");
  };
  console.log("");
}

floyds(5);
floyds(14);