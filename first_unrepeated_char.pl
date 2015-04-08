#!/usr/bin/env perl
# http://programmingpraxis.com/2013/04/30/first-unrepeated-character-in-a-string/
use strict;
use warnings;

sub first_unrepeated_char {
  my $string = shift;
  for (my $i = 0; $i < length $string; $i++) {
    my $char = substr($string, $i, 1);
    my $count = 0;
    for (my $j = $i+1; $j < length $string; $j++) {
      $count++ if $char eq substr($string, $j, 1);
    }
    for (my $k = $i-1; $k >= 0; $k--) {
      $count++ if $char eq substr($string, $k, 1);
    }
    return $char if $count == 0;
  }
  return "not found"
}

my $result = first_unrepeated_char("aabbcddd");
print "$result\n";
