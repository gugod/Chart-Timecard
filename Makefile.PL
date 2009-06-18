use inc::Module::Install;
name 'Chart-Timecard';
all_from 'lib/Chart/Timecard.pm';

requires
    'Object::Tiny' => "1.06";

tests 't/*.t';
author_tests 'xt';

build_requires
    'Test::More' => "0.86",
    "Test::Cukes" => "0.05";

auto_include;
WriteAll;
