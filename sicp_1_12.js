#!/usr/bin/env node

function pascalEleemnt(r,c) {
  if (c === 0) {
    return 1;
  } else if (c === r) {
    return 1;
  } else {
    return pascalEleemnt(r-1,c-1) + pascalEleemnt(r-1,c);
  }
}

console.log(pascalEleemnt(0,0));
console.log(pascalEleemnt(1,0));
console.log(pascalEleemnt(4,2));