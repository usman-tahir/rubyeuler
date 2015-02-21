#!/usr/bin/perl
use strict;
use warnings;

sub first_denomination {
  my $coins = shift;
  if ($coins == 1) {
    return 1;
  } elsif ($coins == 2) {
    return 2;
  } elsif ($coins == 3) {
    return 5;
  } elsif ($coins == 4) {
    return 10;
  } elsif ($coins == 5) {
    return 20;
  } elsif ($coins == 6) {
    return 50;
  } elsif ($coins == 7) {
    return 100;
  } elsif ($coins == 8) {
    return 200;
  }
}

sub count_change {
  my $amount = shift;
  my $coins = shift;
  if ($amount == 0) {
    return 1;
  } elsif ($amount < 0 || $coins == 0) {
    return 0;
  } else {
    my $val_one = count_change($amount,($coins-1));
    my $denomination = first_denomination($coins);
    my $new_amount = ($amount - $denomination);
    my $val_two = count_change($new_amount,$coins);
    return $val_one + $val_two
  }
}

my $change = count_change(200,8);
print "$change\n";
