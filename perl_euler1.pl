#!/usr/bin/perl
use strict;
use warnings;

# https://projecteuler.net/problem=1

sub sum_threes_and_fives {
  my @limit = @_;
  my $accumulator = 0;
  for (my $i = 0; $i < $limit[0]; $i++) {
    if ($i % 3 == 0 || $i % 5 == 0) {
      $accumulator += $i;
    }
  }
  return $accumulator
}

my $result = sum_threes_and_fives 1000;
print "$result\n";
