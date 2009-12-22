#!/usr/bin/env perl
use 5.010;
use strict;
use warnings;
###########################################################################

sub ch7_general {
    my $regex1 = shift;
    my $regex2 = shift;

    while (<STDIN>) {
	say "Boink!" if ($regex1 and $regex2);
    }
}

# To try this with the ch7_text.data file, make sure the right function is
# called in this file. Then on unix type:
#    $ ./ex-chapter-07.pl < ch7_text.data

sub ch7_ex_1_and_2 { ch7_general qr/[F|f]red/, qr// }
sub ch7_ex_3 { ch7_general qr/\./, qr// }
sub ch7_ex_4 { ch7_general qr/(^|\s+)[A-Z][a-z]+/, qr// }
sub ch7_ex_5 { ch7_general qr/(\w)\1/, qr// }
sub ch7_ex_6 { ch7_general qr/(^|\s+)fred(\s+|$)/, qr/(^|\s+)wilma(\s+|$)/ }

