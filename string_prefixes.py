#!/usr/bin/env python
# https://programmingpraxis.com/2016/03/08/string-prefixes/

def find_string_prefix(*str):
    common_prefix = ""
    for i in xrange(0,len(str[0])):
        for j in xrange(1,len(str)):
            if str[0][i] != str[j][i]:
                return common_prefix
        common_prefix += str[0][i]
    return common_prefix

print find_string_prefix('i love cats','i love dogs','i log')
