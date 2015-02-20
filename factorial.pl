#!/usr/bin/perl
use strict;
use warnings;

sub factorial {
  return eval join '*', (1..shift);
}

my $val = factorial(5);
print "$val\n";
