#!/usr/bin/env perl -w
use strict;
use Test::Cukes;
use Chart::Timecard;
use DateTime;

{
    local $/ = undef;
    feature(<DATA>);
}

my ($chart, @times, @weights);

Given qr/100 time objects and their weights/ => sub {
    @times = map { DateTime->from_epoch(epoch => time() + int(rand(86400))) } 1..100;
    @weights = map { int(rand(20)) } 1..100;
};

When qr/they are used to instantiate a timecard object/ => sub {
    $chart = Chart::Timecard->new(times => \@times, weights => \@weights);

    assert $chart;
};

Then qr/the url of timecard chart shall be yield/ => sub {
    my $url = $chart->url;

    assert $url;
};

runtests;

__DATA__
Feature: generate a timecard chart url
  In order to see an interesting presentation of times
  Here the Chart::Timecard object comes

  Scenario: from a series of time
    Given 100 time objects and their weights
    When they are used to instantiate a timecard object
    Then the url of timecard chart can be returned
