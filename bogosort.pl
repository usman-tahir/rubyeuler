#!/usr/bin/perl
use strict;
use warnings;

sub bogosort {
  my @list = @_;
  my $counter = 0;
  until (is_sorted(@list) == 1) {
    @list = shuffle(@list);
  }
  return @list;
}

sub is_sorted {
  my @list = @_;
  my $list_length = scalar @list;
  for (my $counter = 1; $counter < ($list_length); $counter++) {
    return 0 if $list[$counter-1] > $list[$counter];
  }
  return 1;
}

sub shuffle {
  my @array = @_;
  my $i = scalar @array;
  while (--$i) {
    my $j = int rand( $i+1 );
    @array[$i,$j] = @array[$j,$i];
  }
  return @array;
}

my @test = (7,3,1,5,10,0,4);
my @result = bogosort(@test);
print "@result\n";
