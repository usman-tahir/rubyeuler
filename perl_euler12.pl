#!/usr/bin/perl
use strict;
use warnings;

sub triangle {
  return eval join '+', (1..shift);
}

sub factors {
  my $number = shift;
  my $root = sqrt($number);
  my @factors = ();
  for (my $counter = 1; $counter <= $root; $counter++) {
    if ($number % $counter == 0) {
      push (@factors, $counter);
      push (@factors, ($number/$counter));
    }
  }
  return uniq(@factors);
}

sub uniq {
  my %seen;
  grep !$seen{$_}++, @_;
}

my $counter = 1;
my $triangle_num = triangle($counter);
until (factors($triangle_num) > 500) {
  $counter++;
  $triangle_num = triangle($counter);
}

print "$triangle_num\n";