#!/usr/bin/perl
use strict;
use warnings;

sub checksum {
  my $n = shift;
  my @list = split(//,reverse $n);
  my $s_one = 0;
  for (my $i = 0; $i < scalar @list; $i += 2) {
    $s_one = $s_one + $list[$i];
  }
  my $s_two = 0;
  for (my $j = 1; $j < scalar @list; $j += 2) {
    my $value = $list[$j] * 2;
    if ($value >= 10) {
      $s_two += two_digit($value);
    } else {
      $s_two += $value;
    }
  }
  return ($s_one + $s_two) % 10 == 0;
}

sub two_digit {
  my $n = shift;
  my @list = split(//,$n);
  my $val = 0;
  for (my $i = 0; $i < scalar @list; $i++) {
    $val += $list[$i]
  }
  return $val;
}

foreach (49927398716, 49927398717, 1234567812345678, 1234567812345670) {
  if (checksum($_)) {
    print "$_ is valid\n";
  } else {
    print "$_ is invalid\n";
  }
}
