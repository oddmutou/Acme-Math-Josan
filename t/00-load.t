#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 4;

BEGIN {
    use_ok( 'Acme::Math::Josan' ) || print "Bail out!\n";

    is(josan(2, 1), 2);

    my $count = 0;
    for (1 .. 100000) {
        $count++ if josan(4,2) == 2;
    }
    ok($count < 51000);
    ok($count > 49000);
}

diag( "Testing Acme::Math::Josan $Acme::Math::Josan::VERSION, Perl $], $^X" );
