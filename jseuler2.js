var sequence = [0,1];
var accumulator = 0;

while (sequence[sequence.length-1] < 4000000) {
  var a = sequence[sequence.length-1];
  var b = sequence[sequence.length-2];
  sequence.push(a+b);
}

for (var counter = 0; counter < sequence.length; counter++) {
  if ((sequence[counter]) % 2 == 0) {
    accumulator += sequence[counter];    
  }
}

console.log(accumulator);
