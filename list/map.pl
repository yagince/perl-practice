use 5.012;

my @hoge = (1,2,3,4,5);
my @foo = map { sprintf("%5d", $_) } @hoge;
say "@foo";
my @bar = map { $_ * 2 } @hoge;
say "@bar";
