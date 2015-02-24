#!usr/bin/perl
use strict;
use warnings;

sub multifactorial {
  my $number = shift;
  my $degree = shift;
  if ($number <= 1) {
    return 1;
  } else {
    return $number * multifactorial(($number-$degree),$degree)
  }
}

for (my $d = 1; $d <= 5; $d++) {
  for (my $n = 1; $n <= 10; $n++) {
    my $result = multifactorial($n,$d);
    print "$result\n";
  }
}
