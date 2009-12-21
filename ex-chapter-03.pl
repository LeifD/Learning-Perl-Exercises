use 5.010;
use strict;
use warnings;
###########################################################################

sub ch03_ex_1 {
    chomp(my @input = <STDIN>);
    foreach (reverse @input) { say;}
}

sub ch03_ex_2 {
    my %names = (
	'1' => 'fred',
	'2' => 'betty',
	'3' => 'barney',
	'4' => 'dino',
	'5' => 'wilma',
	'6' => 'pebbles',
	'7' => 'bamm-bamm');

    chomp(my @input = <STDIN>);
    foreach (@input) { say $names{$_}; }
}

sub ch03_ex_3_on_new_lines {
    chomp(my @input = <STDIN>);
    foreach (sort @input) { say; }
}

sub ch03_ex_3_same_line {
    chomp(my @input = <STDIN>);
    foreach(sort @input) { print $_ . ' '; }
}
