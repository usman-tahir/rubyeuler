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

sub largest_prime_factor {
  my @test_factors = @_;
  my $lpf = 1;
  foreach (@test_factors) {
    if (prime($_) eq "prime" && $_ > $lpf) {
      $lpf = $_;
    }
  }
  return $lpf
}

my $val = largest_prime_factor(factors(600851475143));
print "$val\n";
