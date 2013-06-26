use 5.012;

require 'hoge.pm';
require 'foo.pm';

Hoge::hoge("yayayayaya");

say foo(sub{my $v = shift;$v * 10}, 100);

use FindBin qw($Bin);
use lib "$Bin/sample";
require 's.pm';

sample();
