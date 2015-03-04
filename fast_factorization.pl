#!/usr/bin/perl
use strict;
use warnings;
use POSIX;

sub factors {
  my $n = shift;
  my @list = ();
  for (my $i = 1; $i <= sqrt($n); $i++) {
    if ($n % $i == 0) {
      push(@list,($n/$i));
      push(@list,$i);
    }
  }
  return uniq(sort(@list));
}

sub uniq {
  my %seen;
  return grep { !$seen{$_}++ } @_;
}

my @test = factors(4);
print "@test\n";
