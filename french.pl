#!/usr/bin/perl

use Modern::Perl;



my @dictionary = ();

while (my $line = <DATA>) {
    chomp $line;
    my @entry = split / /, $line;
    push @dictionary, \@entry;
}

while (scalar @dictionary > 0) {
    my $random = rand @dictionary;
    say $dictionary[$random][0] . " ?";
    my $input = <>;
    chomp $input;
    if ($input eq $dictionary[$random][1]) {
        say "ok";
        splice @dictionary, $random, 1;
    }
    else {
        say "wrong";
    }
}

__DATA__
groupe un
aliment un
fruit un
eau une
légume un
lion un
singe un
souris une
maison une
école une
jour un
verre un
