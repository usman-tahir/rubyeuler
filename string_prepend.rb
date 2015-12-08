#!/usr/bin/env ruby
# http://rosettacode.org/wiki/String_prepend

def prepend_string(str,prefix)
  return str.prepend(prefix)
end

p prepend_string("my string", "changed ")
