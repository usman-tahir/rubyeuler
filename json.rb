require 'json'

test_hash = {:hello => "goodbye"}
puts JSON.generate(test_hash) => "{\"hello\":\"goodbye\"}"
