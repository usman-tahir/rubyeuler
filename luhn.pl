#!/usr/bin/perl
use strict;
use warnings;

sub checksum {
  my @list = split(//,reverse $_);
  my $acc = 0;
  for (my $i = 0; $i < scalar @list; $i += 2) {
    $acc += $list[$i];
  }
  for (my $j = 1; $j < scalar @list; $j += 2) {
    $list[$j] *= 2;
    $acc += two_digit($list[$j]) if $list[$j] >= 10;
    $acc += $list[$j] if $list[$j] < 10;
  }
  return $acc % 10 == 0;
}

sub two_digit {
  my @list = split(//,$_);
  return $list[0] + $list[-1];
}

foreach (49927398716, 49927398717, 1234567812345678, 1234567812345670) {
  if (checksum($_)) {
    print "$_ is valid\n";
  } else {
    print "$_ is invalid\n";
  }
}
