#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;
###########################################################################

sub random_string {
    my $size = shift @_;
    my @data = ('a'..'z','A'..'Z','0'..'9', '*','+',';',':','!','@','?');
    @data = map($data[rand @data], 1 .. $size);
    join('', @data);
}

