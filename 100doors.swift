// http://rosettacode.org/wiki/100_doors

var doors : [Int] = []
for var i = 0; i < 100; i++ {
  doors.append(0)
}

for var pass = 1; pass < 101; pass++ {
  for var index = 0; index < 100; index++ {
    if ((index+1) % pass == 0) {
      if doors[index] == 0 {
        doors[index] = 1
      } else if doors[index] == 1 {
        doors[index] = 0
      }
    }
  }
}

for var index = 0; index < 100; index++ {
  if doors[index] == 1 {
    // door 1 is index 0, et cetera
    println(index+1)
  }
}
