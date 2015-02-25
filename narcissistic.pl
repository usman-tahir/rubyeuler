#!usr/bin/perl
use strict;
use warnings;
use POSIX;

sub narciss {
  my $n = shift;
  my $counter = shift || 0;
  if ($n < 10) {
    return $counter + ($n ** 3);
  } else {
    $counter += (($n % 10) ** 3);
    return narciss(floor($n/10), $counter);
  }
}

sub is_narciss {
  my $x = shift;
  my $y = narciss($x);
  return ($x == $y);
}

for (my $i = 1; $i < 500; $i++) {
  if (is_narciss($i) == 1) {
    print "$i\n";
  }
}
