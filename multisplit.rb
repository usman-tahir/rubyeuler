# http://rosettacode.org/wiki/Multisplit

def multisplit(string,separators_array)
  string.split(Regexp.union(separators_array))
end

test_string = "a!===b=!=c"
separators = ["==", "!=", "="]

p multisplit(test_string,separators)
p test_string
