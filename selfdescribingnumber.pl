#!/usr/bin/perl
use strict;
use warnings;

sub self_describing {
  my @list = split(//,shift);
  for (my $i = 0; $i < scalar @list; $i++) {
    my $count = scalar(grep(/$i/,@list));
    return 0 unless $count == $list[$i];
  }
  return 1
}

foreach (1210,2020,21200,3211000,42101000) {
  my $result = self_describing($_) == 1 ? "true" : "false";
  print "$_: $result\n";
}

foreach (3333,3,2021,11200,45,98) {
  my $result = self_describing($_) == 1 ? "true" : "false";
  print "$_: $result\n";
}
