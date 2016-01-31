#!/usr/bin/env ruby

def compare_with_one_error(s1,s2)
  return -1 if s1 == s2
  error_count = 0
  diff_index = 0
  one_char, two_char = s1.split(""), s2.split("")
  if one_char.count == two_char.count
    (0...one_char.count).each do |i|
      if one_char[i] != two_char[i]
        diff_index = i
        error_count += 1
      end
      return -1 if error_count > 1
    end
    return diff_index
  elsif one_char.count + 1 == two_char.count
    (0...two_char.count).each do |i|
      if one_char[i] != two_char[i]
        diff_index = i
        two_char.delete_at(i)
        error_count += 1
      end
      return -1 if error_count > 1
    end
    return diff_index
  elsif one_char.count == two_char.count + 1
    (0...one_char.count).each do |i|
      if one_char[i] != two_char[i]
        diff_index = i
        one_char.delete_at(i)
        error_count += 1
      end
      return -1 if error_count > 1
    end
    return diff_index
  else
    return -1
  end
end

p compare_with_one_error("one","one")
p compare_with_one_error("ome","one")
p compare_with_one_error("one","bone")
p compare_with_one_error("one","bome")
p compare_with_one_error("bone","one")
p compare_with_one_error("bone","ome")