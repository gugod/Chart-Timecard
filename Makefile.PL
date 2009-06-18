use inc::Module::Install;
name 'Chart-Timecard';
all_from 'lib/Chart/Timecard.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

build_requires 'Test::More';

auto_include;
WriteAll;
