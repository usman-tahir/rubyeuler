#!/usr/bin/perl
use strict;
use warnings;

sub dec_to_bin {
  my $bin = sprintf ("%b",shift);
}

sub palindrome {
  my $var = shift;
  return $var eq reverse $var;
}

sub find_dec_bin_palindromes {
  my $limit = shift;
  my $accumulator = 0;
  for (my $i = 1; $i < $limit; $i++) {
    if (palindrome($i) == 1) {
      my $bin = dec_to_bin($i);
      unless (substr($bin,0,1) eq "0" && substr($bin,-1,1) eq "0") {
        $accumulator += $i if palindrome($bin);
      }
    }
  }
  return $accumulator;
}

my $result = find_dec_bin_palindromes(1_000_000);
print "$result\n";
