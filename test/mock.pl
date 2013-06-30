use 5.012;

use Test::More "no_plan";
use Test::MockObject;

my $mock = Test::MockObject->new();
$mock->set_true("is_hoge");
$mock->set_false("is_foo");

ok($mock->is_hoge);
is($mock->is_foo, undef);

$mock->mock(names => sub { qw(hoge foo bar) });

my @names = $mock->names;
is( scalar @names, 3, "names returned 3 names");
is($names[0], "hoge", "first name is hoge");
say "@names";
