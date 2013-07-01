use 5.012;

use Scalar::Util qw(reftype looks_like_number);

my $hoge = ["hoge", "foo"];
say reftype($hoge);
say looks_like_number($hoge);


use List::Util qw(first);

my @nums = (1,2,3,4,5);
my @strs = qw(hoge foo barbuzz);

say first { $_ > 3 } @nums;
say first { length($_) > 4 } @strs;

use List::MoreUtils qw(apply);

my @applyed = apply { s/o/i/gxms } @strs;
say "@applyed";
say "@strs";

# $_は値のコピーではないので、書き換えられてしまう
my @maped = map { $_ =~ s/o/i/gxms } @strs;
say "@maped";
say "@strs";

