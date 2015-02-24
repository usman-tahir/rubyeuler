#!usr/bin/perl
use strict;
use warnings;

sub n_bottles {
  my $bottle = shift;
  if ($bottle == 1) {
    my $new_bottles = $bottle - 1;
    print "$bottle bottle of beer on the wall\n";
    print "$bottle bottle of beer\n";
    print "take it down, pass it around\n";
    print "$new_bottles bottles of beer\n";
  } else { 
    my $new_bottles = $bottle - 1;
    print "$bottle bottles of beer on the wall\n";
    print "$bottle bottles of beer\n";
    print "take one down, pass it around\n";
    $new_bottles > 1 ? my $bottle_var = "bottles" : my $bottle_var = "bottle"; 
    print "$new_bottles $bottle_var of beer on the wall\n";
    print "......\n";
    return n_bottles($bottle-1);
  }
}

n_bottles(4);
