use 5.012;
use autodie;
use File::Basename;

my @odd = grep { $_ % 2 } 1..100;
say "@odd";

open my $in, "<", "../file/read.txt";

my @hoge_list = grep /hoge/ig, <$in>;
say "@hoge_list";

open my $in2, "<", "../file/read.txt";

my $hoge_count = grep /hoge/ig, <$in2>;
say $hoge_count;
