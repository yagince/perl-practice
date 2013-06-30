use 5.012;

# use Test::More tests => 9;
use Test::More "no_plan";

sub test_sub { '10000' }

is($@, '', '$@ is not set at start');

{
  my $n = -1;
  eval{ sqrt($n) };
  ok($@, 'sqrt(-1)');
}

eval{ sqrt(1) };
is($@, '', 'sqrt(1)');

{
  my $n = -100;
  eval{ sqrt($n) };
  ok($@, 'sqrt(-100)');
}

is(sqrt(test_sub()), 100, "string value works in sqrt");

eval{ sqrt(undef) };
is($@, '', "sqrt(undef)");

is(sqrt, 0, "sqrt works on $_(undefined) by default");

my $_ = 100;
is(sqrt, 10, "sqrt works on $_ by default");

is(sqrt(10**100), 10**50, "ok");
