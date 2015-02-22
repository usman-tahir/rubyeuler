#!/usr/bin/perl
use strict;
use warnings;

sub bubble_sort {
  my @list = @_;
  my $size = scalar @list;
  my $sorted = 0;
  until ($sorted == 1) {
    my $counter = 0;
    for (my $i = 1; $i < $size; $i++) {
      if ($list[$i-1] > $list[$i]) {
        my $temp = $list[$i];
        $list[$i] = $list[$i-1];
        $list[$i-1] = $temp;
        $counter ++; 
      }
    }
    $sorted = 1 if $counter == 0;
  }
  return @list;
}

my @test = (7,3,1,5,10,0,4);
my @result = bubble_sort(@test);
print "@result\n";
