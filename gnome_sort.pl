#!/usr/bin/perl
use strict;
use warnings;

sub gnome_sort {
  my @array = @{$_[0]};
  my $i = 1;
  my $j = 2;
  my $size = @array;
  while ($i < $size) {
    if ($array[$i-1] <= $array[$i]) {
      $i = $j;
      $j++;
    } else {
      my $temp = $array[$i-1];
      $array[$i-1] = $array[$i];
      $array[$i] = $temp;
      $i--;
      if ($i == 0) {
        $temp = $i;
        $i = $j;
        $j = $temp;
      }
    }
  }
  return @array;
}

my @test = [100, 2, 56, 200, -52, 3, 99, 33, 177, -199];
my @result = gnome_sort(@test);
print "@result\n";
