#!/usr/bin/env node

var Hand = require('pokersolver').Hand,
    pokerHands = require('./poker_hand_tuples.json'),
    playerOneWins = 0,
    playerTwoWins = 0;

for (var i in pokerHands) {
    var playerOneCards = Hand.solve(pokerHands[i][0].split(' ')),
        playerTwoCards = Hand.solve(pokerHands[i][1].split(' ')),
        winner = Hand.winners([playerOneCards, playerTwoCards]);
    if (winner[0].cards === playerOneCards.cards) {
        playerOneWins++;
    } else {
        playerTwoWins++;
    }
}

console.log(playerOneWins);
