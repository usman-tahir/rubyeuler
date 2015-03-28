#!/usr/bin/perl
use strict;
use warnings;
# http://rosettacode.org/wiki/Sort_disjoint_sublist

sub sort_disjoint_sublist {
  my ($val, $ind) = @_;
  my @val = @$val;
  my @ind = sort(@$ind);
  my @sublist = ();
  for (my $i = 0; $i < scalar(@ind); $i++) {
    push @sublist, ($val[$ind[$i]])
  }
  @sublist = sort(@sublist);
  for (my $i = 0; $i < scalar(@sublist); $i++) {
    $val[$ind[$i]] = $sublist[$i]
  }
  return @val;
}


my @values = [7, 6, 5, 4, 3, 2, 1, 0];
my @indices = [6,1,7];

my @result = sort_disjoint_sublist(@values,@indices);
print "@result\n";
