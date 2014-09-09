var squareSumAccumulator = 0;
var sumSquareAccumulator = 0;
var limit = 101;

for(counter = 1; counter < limit; counter ++) {
  squareSumAccumulator += (counter * counter);
}

for(counter = 1; counter < limit; counter ++) {
  sumSquareAccumulator += counter;
}

var result = ((sumSquareAccumulator * sumSquareAccumulator) - squareSumAccumulator);

console.log(result);

