#!/usr/bin/env perl
use 5.010;
use strict;
use warnings;
###########################################################################

sub ch6_ex_1 {
    my $input;
    my %names = (
	"leif" => "dyvik",
	"daniel" => "karlsson");

    print "name: ";
    while (chomp($input = <STDIN>)) {
	if (exists $names{$input}) {
	    say $names{$input};
	} else {
	    say "Go away stranger!";
	}
	print "name: ";
    }
}

sub ch6_ex_2_input {
    my %word;
    my $input = 0;
    print "word: ";
    while ($input = <STDIN>) {
	chomp $input;
	$word{$input}++;
	print "word: ";
    }
    say ""; # new line
    return %word;
}

sub ch6_ex_2 {
    my %word = ch6_ex_2_input;

    while (my($k, $v) = each %word) {
	say "name $k showed up $v times";
    }
}

sub ch6_ex_2_sorted {
    my %word = ch6_ex_2_input;

    foreach (sort keys %word) { say "Name $_ showed up $word{$_} times." }
}

# This example don't use %ENV since mine has HUGE values and will mess
# up without super large display. Change my_env everywhere to ENV to try.
sub ch6_ex_3 {
    my %my_env = (
	"abcd" => "mnkey monkey",
	"aaaaaaaaaaaaaaa" => 123,
	"da" => 1);

    my $largest_k = 0;
    my $largest_v = 0;

    while (my($k,$v) = each %my_env) {
	my $k_size = length $k;
	my $v_size = length $v;
	$largest_k = $k_size if $k_size > $largest_k;
	$largest_v = $v_size if $v_size > $largest_v;
    }

    while (my($k,$v) = each %my_env) {
	printf("%${largest_k}s | %${largest_v}s\n", $k,$v);
    }
}

ch6_ex_3;
