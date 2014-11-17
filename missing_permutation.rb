# http://rosettacode.org/wiki/Find_the_missing_permutation

permutation_set = ["ABCD",
"CABD",
"ACDB",
"DACB",
"BCDA",
"ACBD",
"ADCB",
"CDAB",
"DABC",
"BCAD",
"CADB",
"CDBA",
"CBAD",
"ABDC",
"ADBC",
"BDCA",
"DCBA",
"BACD",
"BADC",
"BDAC",
"CBDA",
"DBCA",
"DCAB"]

def find_missing_permutation(perm_set)
  missing = []
  ["A","B","C","D"].permutation.to_a.map {|perm| perm.join}.each do |perm|
    missing << perm if !perm_set.include?(perm)
  end
  missing  
end

p find_missing_permutation(permutation_set)
