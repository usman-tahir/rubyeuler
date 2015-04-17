#!/usr/bin/env perl

sub sqr {
  my $n = shift;
  return $n * $n;
}

sub smallest_div {
  my $n = shift;
  return find_div($n,2);
}

sub find_div {
  my $n = shift;
  my $test_div = shift;
  if (sqr($test_div) > $n) {
    return $n;
  } elsif (div($test_div,$n) == 1) {
    return $test_div;
  } else {
    return find_div($n,($test_div+1));
  }
}

sub div {
  my $a = shift;
  my $b = shift;
  if ($b % $a == 0) {
    return 1;
  } else {
    return 0;
  }
}

sub prime {
  my $n = shift;
  my $s = smallest_div($n);
  if ($n == $s) {
    return 1;
  } else {
    return 0;
  }
}

my @l = (199,1999,19999);
foreach (@l) {
  my $n = $_;
  my $sm_div = smallest_div($n);
  print "$n / smallest divisor: $sm_div\n";
}