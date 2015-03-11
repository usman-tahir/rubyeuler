#!/usr/bin/perl
use warnings;
use strict;

sub k_to_c {
  my $k = shift;
  return ($k - 273.15);
}

sub k_to_r {
  my $k = shift;
  return ($k * 1.8);
}

sub k_to_f {
  my $k = shift;
  return ($k * 1.8 - 459.67);
}

print "21 kelvin is:\n";
print k_to_c(21.00) . " celsius\n";
print k_to_f(21.00) . " fahrenheit\n";
print k_to_r(21.00) . " rankine\n";
