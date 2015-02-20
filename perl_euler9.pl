#!/usr/bin/perl
use strict;
use warnings;

sub find_special_triplet {
  for (my $a = 1; $a < 500; $a++) {
    for (my $b = 1; $b < 500; $b++) {
      for (my $c = 1; $c < 500; $c++) {
        if (($a ** 2) + ($b ** 2) == ($c ** 2)) {
          if ($a + $b + $c == 1000) {
            my $result = ($a * $b * $c);
            return "$result";
          } 
        }
      }
    }
  }
}

my $result = find_special_triplet;
print "$result\n";
