#!/usr/bin/perl
use strict;
use warnings;

sub sumSquares {
  return eval join '+', (map { $_ * $_ } @_);
}

sub squareSums {
  return (eval join '+', @_) ** 2; 
}

sub results {
  return squareSums(@_) - sumSquares(@_);
}

my @sum = results(1..1000);
print "@sum\n";
