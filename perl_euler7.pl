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

my $counter = 0;
my $nth_prime = 0;
my $i = 0;
while ($counter < 10_002) {
  if (prime($i) eq "prime") {
    $counter++;
    $nth_prime = $i;
  }
  $i++;
}

print "$nth_prime\n";
