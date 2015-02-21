#!/usr/bin/perl
use strict;
use warnings;

my @terms = [4];
for (my $a = 2; $a <= 100; $a++) {
  for (my $b = 2; $b <= 100; $b++) {
    my $val = $a ** $b;
    push @terms, $val unless grep { $_ eq $val } @terms;
  }
}

my $count = @terms;
print "$count\n";
