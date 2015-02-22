#!/usr/bin/perl
use strict;
use warnings;
use POSIX;

sub sum_digits {
  my $number = shift;
  my $counter = shift || 0;
  if ($number < 10) {
    return $counter + $number;
  } else {
    $counter += $number % 10;
    $number = floor($number/10);
    return sum_digits(floor($number/10),($counter + ($number%10)));
  }
}

sub find_root {
  my $number = shift;
  my $persistence = shift || 0;
  if ($number < 10) {
    return "digital root of $number and additive persistence of $persistence\n";
  } else {
    find_root((sum_digits($number)),($persistence+1));
  }
}

my @test = (627615, 39390, 588225, 393900588225,3);
foreach (@test) {
  my $num = $_;
  my $var = find_root($num);
  print "$num has a $var";
}
