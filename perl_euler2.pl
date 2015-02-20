#!/usr/bin/perl
use strict;
use warnings;

# https://projecteuler.net/problem=2

sub fibo {
  my $number = shift;
  if ( $number == 1 ) {
    return 1;
  } elsif ( $number == 2 ) {
    return 2;
  } else {
    return fibo( $number - 1 ) + fibo( $number - 2 );
  }
}

my $i = 1;
my $limit = fibo($i);
my $accumulator = 0;
while ( $limit < 4_000_000 ) {
  if ( $limit % 2 == 0) {
     $accumulator += $limit;
  }
  $i++;
  $limit = fibo($i);
}

print "$accumulator\n";
