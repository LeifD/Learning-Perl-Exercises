#!/usr/bin/env perl
use 5.010;
use strict;
use warnings;
###########################################################################

sub ch04_ex_1 {
    my $sum = shift @_;
    foreach (@_) { $sum += $_ }
    $sum;
}

sub ch04_ex_2 {
    ch04_ex_1 1..1000
}

sub ch04_ex_3_helper {
    my ($cutoff, @array) = @_;
    my @result;
    foreach (@array) {
	push @result, $_ if $_ >= $cutoff;
    }
    @result;
}

sub ch04_ex_3 {
    say join(' ', ch04_ex_3_helper(ch04_ex_1(@_) / @_, @_));
}

sub ch04_ex_4 {
    my $new_name = shift @_;
    state $name = "";

    if ( ! $name) {
	say "Hello $new_name! $name is here also!";
    } else {
	say "Hello $new_name!";
    }
    $name = $new_name;
}

sub ch04_ex_5 {
    my $new_name = shift @_;
    state @names;

    if (@names) {
	say "Hello $new_name! I've seen: @names";
    } else {
	say "Hello $new_name";
    }
    push @names, $new_name;
}

