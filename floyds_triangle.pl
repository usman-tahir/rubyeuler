#!/usr/bin/perl
use strict;
use warnings;

sub floyds {
  my $rows = shift;
  my $var = 1;
  for (my $row = 1; $row <= $rows; $row++) {
    for (my $counter = 1; $counter <= $row; $counter++) {
      print $var >= 100 ? "$var " : $var >= 10 ? " $var " : "  $var ";
      $var++;
    }
    print "\n";
  }
  print "\n";
}

floyds(5);
floyds(14);
