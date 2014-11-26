require 'json'

test_hash = Hash[("a".."z").to_a.zip((1..26).to_a)]
puts JSON.generate(test_hash)
