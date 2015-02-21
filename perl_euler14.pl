#!/usr/bin/perl
use strict;
use warnings;

sub next_collatz_term {
  my $n = shift;
  return $n/2 if ($n % 2 == 0);
  return ((3 * $n) + 1) if ($n % 2 != 0);
}

sub count_collatz_terms {
  my $n = shift;
  my $counter = 1;
  until ($n == 1) {
    $n = next_collatz_term($n);
    $counter++;
  }
  return $counter;
}

my $result = 1;
my $longest = count_collatz_terms($result);
for (my $i = 2; $i < 1_000_000; $i++) {
  my $val = count_collatz_terms($i);
  if ($val > $longest) {
    $result = $i;
    $longest = $val;
  }
}

print ("$result\n");
