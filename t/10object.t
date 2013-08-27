#!/usr/bin/perl -w
use strict;

use Test::More tests => 10;

use WWW::Scraper::ISBN::Record;

my $record = WWW::Scraper::ISBN::Record->new();

my %defaults = (
    isbn        => undef,
    found       => 0,
    found_in    => undef,
    book        => undef,
    error       => '',
);

for my $method (qw( isbn found found_in book error )) {
    is($record->$method(),$defaults{$method},".. default test for $method");
    is($record->$method('value'),'value',".. value test for $method");
}
