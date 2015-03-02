#!/usr/bin/perl
use strict;
use warnings;

sub div_by_digits {
  my $n = shift;
  my $flag = 1;
  my @list = split(//,$n);
  return 0 if includes(0,@list);
  for (my $i = 0; $i > scalar @list; $i++) {
    $flag = 0 if $n % $list[$i] != 0; 
  }
  return $flag;
}

sub includes {
  my $word = shift;
  grep {$_ eq $word} @_;
}

foreach (120,128) {
  my $test = div_by_digits($_);
  print "$_ is divisible by its digits\n" if $test == 1;
  print "$_ is not divisible by its digits\n" if $test == 0;
}
