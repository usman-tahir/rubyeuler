#!/usr/bin/perl
use strict;
use warnings;

sub divisible_one_to_twenty {
  my $number = shift;
  my @divisors = (11,12,13,14,15,16,17,18,19,20);
  foreach (@divisors) {
    if ($number % $_ != 0) {
      return 0;
    }
  }
  return 1;
}

my $test = 2517;
until (divisible_one_to_twenty($test) == 1) {
  $test++;
}

print "$test\n";
