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
    print $dictionary[$random][0] . " ? ";
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
loupe une
fuite une
rôle un
clé une
aide une
fondation une
œuvre une
calque un
croquis un
droit un
porte une
coffre un
banque une
planche une
dessin un
maître un
vêtement un
ami un
marchand un
viande une
marché un
poisson un
repas un
tôle une
ciment un
mur un
bloc un
toit un
clôture une
cour une
étage un
ville une
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
bande une
enquête une
héritage un
