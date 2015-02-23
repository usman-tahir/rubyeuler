#!/usr/bin/perl
use strict;
use warnings;

sub insertion_sort {
  my @list = @_;
  my $list_length = scalar @list;
  for (my $i = 1; $i < $list_length; ++$i) {
    my $value = $list[$i];
    my $j = $i - 1;
    while (($j >= 0) && ($list[$j] > $value)) {
      $list[$j+1] = $list[$j];
      $j = $j - 1; 
    }
    $list[$j+1] = $value;
  }
  return @list;
}

my @test = (4, 65, 2, -31, 0, 99, 2, 83, 782, 1);
my @result = insertion_sort(@test);
print "@result\n";
