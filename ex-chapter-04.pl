use 5.010;
use strict;
use warnings;

sub ex_1 {
    my $sum = shift @_;
    foreach (@_) { $sum += $_ }
    $sum;
}

sub ex_2 {
    ex_1 1..1000
}

sub ex_3_helper {
    my ($cutoff, @array) = @_;
    my @result;
    foreach (@array) {
	push @result, $_ if $_ >= $cutoff;
    }
    @result;
}

sub ex_3 {
    say join(' ', ex_3_helper(ex_1(@_) / @_, @_));
}

sub ex_4 {
    my $new_name = shift @_;
    state $name = "";

    if ( ! $name) {
	say "Hello $new_name! $name is here also!";
    } else {
	say "Hello $new_name!";
    }
    $name = $new_name;
}

sub ex_5 {
    my $new_name = shift @_;
    state @names;

    if (@names) {
	say "Hello $new_name! I've seen: @names";
    } else {
	say "Hello $new_name";
    }
    push @names, $new_name;
}

