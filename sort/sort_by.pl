use 5.012;

my @ary = (99,4,5,2,6,4,1,3,2,7,8,4,3,6,10,34);
say "@ary";

my @sorted_ary = sort {$a <=> $b} @ary;
say "@sorted_ary";

# hashのソート
my %hash = (hoge => 1, foo => 2, bar => 3, piyo => 1);
say keys %hash;

foreach my $key (sort { $hash{$b} <=> $hash{$a} or $a cmp $b } keys %hash) {
  say sprintf "%5s => %2d", $key, $hash{$key};
}
