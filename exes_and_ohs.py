#!/usr/bin/env python
# http://www.codewars.com/kata/55908aad6620c066bc00002a

def xo(s):
  return len([x for x in s if x.lower() == "x"]) == \
         len([o for o in s if o.lower() == "o"])

print {k:xo(k) for k in ['xo','xxOo','xxxm','Oo','oomx']}
