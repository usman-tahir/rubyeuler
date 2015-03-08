#!/usr/bin/perl
use strict;
use warnings;

sub t_f_s {
  my $n = shift;
  $n /= 3 while $n % 3 == 0;
  $n /= 5 while $n % 5 == 0;
  $n /= 7 while $n % 7 == 0;
  return $n == 1;
}

my $c = 0;
for (my $i = 1; $i < 1_000_000; $i += 2) {
  $c += t_f_s($i);
}
print "$c\n";
