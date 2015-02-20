#!/usr/bin/perl
use strict;
use warnings;

sub factors {
  my $number = shift;
  my $root = sqrt($number);
  my @factors = ();
  for (my $counter = 1; $counter <= $root; $counter++) {
    if ($number % $counter == 0) {
      push (@factors, $counter);
      push (@factors, ($number/$counter));
    }
  }
  return @factors;
}

sub prime {
  my $number = shift;
  my $divisors = factors($number);
  if ($divisors == 2) {
    return "prime";
  } else {
    return "not prime";
  }
}

my $accumulator = 0;
for (my $i = 2; $i < 2_000_000; $i++) {
  $accumulator += $i if prime($i) eq "prime"
}

print "$accumulator\n";
