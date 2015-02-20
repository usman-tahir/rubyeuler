#!/usr/bin/perl
use strict;
use warnings;

my $result = 1;
for (my $i = 100; $i < 1000; $i++ ) {
  for (my $j = 100; $j < 1000; $j++) {
    my $number = $i * $j;
    $result = $number if ($number eq (reverse $number) && $number > $result)
  }
}

print "$result\n";
