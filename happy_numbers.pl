#!usr/bin/perl
use strict;
use warnings;
use POSIX;

sub happy {
  my $n = shift;
  while (($n != 1) && ($n != 89)) {
    $n = sum_square_digits($n);
  }
  return ($n == 1);
}

sub sum_square_digits {
  my $n = shift;
  my $acc = shift || 0;
  if ($n < 10) {
    return $acc + ($n ** 2);
  } else {
    return sum_square_digits(floor($n/10),$acc+(($n % 10) ** 2))
  }
}

my $counter = 0;
my $i = 1;
while ($counter < 50) {
  if (happy($i)) {
    print "$i is happy\n";
    $counter++;
  }
  $i++;
}
