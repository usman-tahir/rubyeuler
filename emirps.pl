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
  return ($divisors == 2);
}

sub palin {
  my $string = shift;
  return ($string eq reverse $string);
}

sub emirp {
  my $number = shift;
  my $reversed = reverse $number;
  return (prime($reversed) && prime($number))
}

for (my $counter = 10; $counter < 1_000_000; $counter++) {
  print "$counter\n" if (!palin($counter) && emirp($counter)) 
}
