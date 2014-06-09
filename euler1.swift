var counter = 1
var accumulator = 0

while counter < 1000 {
    if counter % 3 == 0 {
        accumulator += counter
    } else if counter % 5 == 0 {
        accumulator += counter
    } else {
        
    }
    counter++
}

println((\accumulator))
