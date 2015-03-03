#!/usr/bin/perl
use strict;
use warnings;
use POSIX;

sub exp_lin {
  my $b = shift;
  my $e = shift;
  if ($e == 0) {
    return 1;
  } else {
    return $b * exp_lin($b,$e-1);
  }
}

sub exp_log {
  my $b = shift;
  my $e = shift;
  if ($e == 0) {
    return 1;
  } elsif ($e % 2 == 0) {
    return exp_log($b*$b,floor($e/2));
  } else {
    return $b * exp_log($b*$b,floor(($e-1)/2))
  }
}

sub exp_constant {
  my $b = shift;
  my $e = shift;
  exp(log($b) * $e)
}

my $one = exp_lin(2,10);
print "$one\n";
my $two = exp_log(2,10);
print "$two\n";
my $three = exp_constant(2,10);
print "$three\n";
