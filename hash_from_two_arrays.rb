# http://rosettacode.org/wiki/Hash_from_two_arrays

numbers = ["one","two","three"]
variables = ["foo","bar","baz"]

def create_hash_from(array_one,array_two)
  Hash[array_one.zip array_two]
end

p create_hash_from(numbers,variables)  