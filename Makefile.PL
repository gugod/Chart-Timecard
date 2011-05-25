use inc::Module::Install;
name 'Chart-Timecard';
all_from 'lib/Chart/Timecard.pm';

requires
    'DateTime'     => 0,
    'Object::Tiny' => 0;

tests 't/*.t';
author_tests 'xt';

build_requires
    'Test::Cukes' => 0,
    'Test::More'  => 0;

auto_include;
auto_set_repository;
WriteAll;
