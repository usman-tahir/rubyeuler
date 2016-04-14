#!/usr/bin/env python
# https://programmingpraxis.com/2016/04/12/titlecase/

def title_case(s):
    return " ".join([w[0].upper() + w[1:].lower() for w in s.split(' ')])

print title_case('programming PRAXIS')
