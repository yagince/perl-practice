use 5.012;
use List::Util qw/ first sum max maxstr shuffle /;

say first { /foo/ } qw/ hoge foo bar /;

say sum(1..10);

say max 1..10;
say max qw/ hoge foo bar /;
say maxstr qw/ hoge foo bar /;

say shuffle 1..10;

use List::MoreUtils qw/ none any all natatime mesh/;

my @nums = (1..100);
say "none less than 0" if none { $_ < 0 } (1..10);
say "exist over 50"    if any { $_ > 50 } @nums;
say "all over 0"       if all { $_ > 0  } @nums;

# 10個ずつに分解する
my $iterator = natatime 10, @nums;
while (my @tmps = $iterator->()) {
  say "@tmps";
}

my @c = qw/ hoge foo bar /;
my @meshed = mesh @c, @nums;
say "@meshed";
