# http://rosettacode.org/wiki/Stair-climbing_puzzle

@start_position = 5

def step_up
  while !step
    step_up
  end
end

def step
  if rand(10) % 2 == 1
    @start_position -= 1
    p "fall #{@start_position}"
    return false
  else
    @start_position += 1
    p "climb #{@start_position}"
    return true
  end
end

step_up