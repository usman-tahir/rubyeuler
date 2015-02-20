#!/usr/bin/perl
use strict;
use warnings;

sub hailstone_next {
  my $number = shift;
  if ($number == 1) {
    return 1;
  } elsif ($number % 2 == 0) {
    return $number/2;
  } elsif ($number % 2 != 0) {
    return (3 * $number) + 1;
  }
}

sub hailstone_sequence {
  my $value = shift;
  while ($value != 1) {
    print "$value\n";
    $value = hailstone_next($value)
  }
  print "$value\n";
}

hailstone_sequence(27);
