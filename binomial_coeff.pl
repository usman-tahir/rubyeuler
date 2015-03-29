#!/usr/bin/perl

sub factorial {
  my $n = shift;
  my $result = 1;
  for (my $i = 1; $i <= $n; $i++) {
    $result *= $i
  }
  return $result;
}

sub bin_coeff {
  my $n = shift;
  my $k = shift;
  return (factorial($n) / (factorial($n - $k) * factorial($k)))
}

my $result = bin_coeff(5,3);
print "$result\n";
