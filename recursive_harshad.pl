#!/usr/bin/perl
use strict;
use warnings;

sub harshad {
  my $number = shift;
  return ($number % sum_digits($number) == 0);
}

sub sum_digits {
  my $number = shift;
  my $counter = shift || 0;
  if ($number < 10) {
    return $counter + $number;
  } else {
    return sum_digits($number/10,$counter+($number%10));
  }
}

sub find_twenty {
  my $counter = 0;
  my $i = 1;
  until ($counter == 20) {
    if (harshad($i)) {
      print "$i\n";
      $counter++;
    }
    $i++;
  }
}

find_twenty;
