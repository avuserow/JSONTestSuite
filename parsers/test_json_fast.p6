#!/usr/bin/env perl6

use v6;
use v6.c;

use JSON::Fast;

sub MAIN(IO() $path) {
	my $data = $path.slurp;
	my $parsed = from-json($data);

	CATCH {
		default {
			exit 1;
		}
	}

	exit 0;
}
