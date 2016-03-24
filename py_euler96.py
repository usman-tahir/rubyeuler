#!usr/bin/env python

import json

f = [line.rstrip() for line in open('p096_sudoku.txt','r')]
puzzle_dictionary = {}
current_key = ''
for item in f:
    if item.startswith('Grid'):
        if current_key in puzzle_dictionary:
            puzzle_dictionary[current_key] = " ".join( \
                puzzle_dictionary[current_key].replace('0','.'))
        current_key = item
        puzzle_dictionary[current_key] = ""
    else:
        puzzle_dictionary[current_key] += item

with open('sudoku_puzzles_96.json', 'w') as puzzles:
    json.dump(puzzle_dictionary, puzzles)
