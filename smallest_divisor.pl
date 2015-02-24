#!usr/bin/perl
use strict;
use warnings;

sub square {
  my $n = shift;
  return $n * $n;
}

sub divides {
  my $a = shift;
  my $b = shift;
  my $val = $b % $a == 0;
  return $val;
}

sub find_divisor {
  my $n = shift;
  my $test_divisor = shift;
  if (square($test_divisor) > $n) {
    return $n;
  } elsif (divides($test_divisor,$n)) {
    return $test_divisor;
  } else {
    return find_divisor($n,($test_divisor+1));
  }
}

sub smallest_divisor {
  my $n = shift;
  return find_divisor($n,2);
}

sub prime {
  my $n = shift;
  return (smallest_divisor($n) == $n);
}

for (my $i = 1; $i <= 50; $i++) {
  print "$i is prime\n" if prime($i);
}
