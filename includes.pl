#!usr/bin/perl
use strict;
use warnings;

sub includes {
  my $word = shift;
  grep {$_ eq $word} @_;
}

my @test = (1,2,3,4,5);
my $word = 6;
my $result = includes($word,@test);
print "$result\n";
