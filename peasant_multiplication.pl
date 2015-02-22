#!/usr/bin/perl
use strict;
use warnings;

sub product {
  my $left = shift;
  my $right = shift;
  my $result = 0;
  while ($left > 0) {
    $result += $right if ($left % 2 != 0);
    $left /= 2; 
    $right *= 2;
  }
  return $result;
}

my $val = product(3,9);
print "$val\n";
