#!/usr/bin/env swift

func anagrams(one: String, two: String) -> Bool {
  return (one.characters.sort() == two.characters.sort())
}

func anagramsTwo(one: String, two: String) -> Bool {
  let o = one.characters.sort()
  let t = two.characters.sort()
  guard o.count == t.count else { return false }
  for i in 0..<o.count { if o[i] != t[i] { return false } }
  return true
}

print(anagrams("opts", two: "pots"))
print(anagramsTwo("pots", two: "stop"))
print(anagrams("dopiest", two: "deposit") == anagramsTwo("deposit", two: "dopiest"))
