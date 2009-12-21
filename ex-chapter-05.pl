#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

sub ex_1 {
    my @lines;
    push(@lines, $_) while (<>);
    print foreach reverse @lines
}

sub ex_2 {
    ex_3_helper(20)
}

sub ex_3_helper {
    my $spacing = length ' ' x shift @_;  # Not proud about this
    my @lines;
    while(<STDIN>) { chomp; push @lines, $_ }
    say "1234567890" x (1 + (($spacing - ($spacing % 10)) / 10));
    printf("%${spacing}s\n", $_) foreach @lines;
} 

sub ex_3 {
    print "spacing: ";
    my $spacing = <STDIN>;
    ex_3_helper($spacing);
}

ex_3;
