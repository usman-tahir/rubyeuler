#!/usr/bin/perl
use strict;
use warnings;

sub square {
  my $x = shift;
  return $x * $x;
}

sub sq_root {
  my $x = shift;
  return sqrt_iter(1.0,$x);
}

sub sqrt_iter {
  my $guess = shift;
  my $x = shift;
  if (good_enough($guess,$x)) {
    return $guess;
  } else {
    return sqrt_iter(improve_guess($guess,$x),$x)
  }
}

sub improve_guess {
  my $guess = shift;
  my $x = shift;
  return average($guess,($x/$guess));
}

sub average {
  my $x = shift;
  my $y = shift;
  return ($x+$y)/2
}

sub good_enough {
  my $guess = shift;
  my $x = shift;
  return abs(square($guess) - $x) < 0.01;
}

my $one = sq_root(9);
print "$one\n";
my $two = sq_root(100+37);
print "$two\n";
my $three = sq_root(sq_root(2) + sq_root(3));
print "$three\n";
my $four = square(sq_root(1000));
print "$four\n";