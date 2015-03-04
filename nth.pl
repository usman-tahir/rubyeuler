#!/usr/bin/perl
use strict;
use warnings;
# http://rosettacode.org/wiki/N%27th

sub nth {
  my $n = shift;
  my $postfix = "th";
  unless (substr($n,-2,1) eq "1") {
    if (substr($n,-1,1) eq "1") {
      $postfix = "st";
    } elsif (substr($n,-1,1) eq "2") {
      $postfix = "nd";
    } elsif (substr($n,-1,1) eq "3") {
      $postfix = "rd";
    } else {
      $postfix = "th";
    }
  }
  return $n .= $postfix;
}

sub p_p {
  my $val = nth(shift);
  print "$val\n"
}

for (my $i = 0; $i <= 25; $i++) {
  p_p($i);
}

for (my $i = 250; $i <= 265; $i++) {
  p_p($i);
}

for (my $i = 1000; $i <= 1025; $i++) {
  p_p($i);
}
