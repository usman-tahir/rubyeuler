#!usr/bin/perl
use strict;
use warnings;

sub shuffle {
  my @array = @_;
  my $i = scalar @array;
  while (--$i) {
  my $j = int rand( $i + 1 );
  @array[$i,$j] = @array[$j,$i];
  }
  return @array;
}

sub uniq {
  my @list = @_;
  my @uniq_list = ();
  for (my $i = 0; $i < scalar @list; $i++) {
    push (@uniq_list,$list[$i]) unless grep {$_ eq $list[$i]} @uniq_list
  }
  return scalar @uniq_list;
}

sub compare {
  my $word = shift;
  my @chars = split(//,$word);
  my @shuffled = @chars;
  my $best_shuffle = 0;
  my $counter = 0;
  until ($best_shuffle) {
    @shuffled = shuffle(@chars);
    $counter = 0;
    for (my $i = 0; $i < scalar @chars; $i++) {
      $counter++ if $chars[$i] eq $shuffled[$i];
    }
    $best_shuffle = 1 if $counter == 0;
    $best_shuffle = 1 if scalar @chars < 2;
    $best_shuffle = 1 if scalar @chars > uniq(@chars) * 3 && $counter < scalar @chars;
  }
  my $shuffled_word = join("",@shuffled);
  print "$word, $shuffled_word, ($counter)\n";
}

my @words = ("abracadabra", "seesaw", "elk", "grrrrrr", "up", "a");
foreach (@words) {
  compare($_);
}
