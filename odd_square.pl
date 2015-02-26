#!usr/bin/perl
use strict;
use warnings;

sub square {
  my $n = shift;
  my $number = $n;
  for (my $i = 1; $i < $number; $i++) {
    $n += $number;
  }
  return $n
}

for (my $i = 1; $i < 10; $i++) {
  my $result = square($i);
  print "$result\n";
}

