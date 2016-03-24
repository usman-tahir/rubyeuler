#!/usr/bin/env node

var SudokuSolver = require('sudoku-solver'),
    puzzles = require('./sudoku_puzzles_96.json');

function solvePuzzle(puzzle_key) {
    return parseInt(SudokuSolver.solve({
        problem: puzzles[puzzle_key]
    }).toString().slice(22,28).replace(/\s/g, ''));
}

var accumulator = 0;
for (var key in puzzles) {
    accumulator += solvePuzzle(key);
}

console.log(accumulator);
