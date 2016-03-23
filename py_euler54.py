#!/usr/bin/env python

import json

def split_hands(cards):
    return (cards[:14], cards[15:])

f = open('p054_poker.txt').readlines()
f = [split_hands(line.rstrip()) for line in f]

with open('poker_hand_tuples.json', 'w') as new_f:
    json.dump(f,new_f)
