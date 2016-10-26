#!/usr/bin/env perl6

use v6;
use v6.c;

use JSON::Tiny;

sub MAIN(IO() $path) {
	my $data = $path.slurp;
	my $parsed = from-json($data);

	CATCH {
		when X::JSON::Tiny::Invalid {
			exit 1;
		}
		default {
			exit -1;
		}
	}

	exit 0;
}
