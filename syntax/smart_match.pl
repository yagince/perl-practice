use 5.012;

my $hoge = "hello, world!!!";

say "matched regex" if $hoge ~~ /hello/; # 可換ではない
say "matched string" if $hoge ~~ "hello, world!!!";

my %hash = (hoge => 100, foo => undef, bar => 50, piyo => 150);
say "matched key(regex)" if %hash ~~ /o/;
say "matched key(regex)" if /o/ ~~ %hash;
say "exist key(string)" if 'foo' ~~ %hash; # keyが存在する場合　可換ではない

my @ary_a = (1,2,3);
my @ary_b = (1,2,3);
say "same array" if @ary_a ~~ @ary_b;

# 左辺が数値なので、右辺は数値風な値を期待する。しかし右辺が数値風ではないので、実際には文字列比較になる。結果マッチしない。
say "match number ~~ string" if 4 ~~ '4abc';
# 右辺が数値なので、左辺はなんでもよい（Any）になり数値として比較される。文字列の一個目の数値が値となるので、 4==4となる。
say "match string ~~ number " if '4abc5' ~~ 4;
say "match string ~~ number （unmatch)" unless 'abc5' ~~ 4; # これは１文字目が文字なので、０として比較される。はず。。。
