#!/usr/bin/perl
use warnings;
use strict;
use POSIX;

sub sum_digits {
  my $val = shift;
  my $counter = shift;
  $val < 10 ? return $val + $counter : return sum_digits(floor($val/10),$counter+(floor($val%10)));
}

sub find_root {
  my $n = shift;
  my $p = shift;
  $n < 10 ? return ($n,$p) : return find_root(sum_digits($n,0),($p+1));
}

my @numbers = (627615, 39390, 588225, 393900588225);

foreach (@numbers) {
  my $t = $_;
  my @result = find_root($t,1);
  my $root = $result[0];
  my $p = $result[1];
  print "$t: root = $root && persistence = $p\n";
}
