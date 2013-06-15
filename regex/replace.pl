use 5.012;

$_ = "hoge foo bar";
say $_;
s/hoge/hooooge/;
say $_;

$_ = "[   I'm    crazy  for             you                                       ]";
s/\s+/ /g;
say $_;

my $hoge = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ";
(my $foo = $hoge) =~ s/(ipsum|AMET)/XXXX/gi;
say $foo;

(my $bar = $hoge) =~ s/(ipsum|amet)/\U$1/gi; # 大文字変換
say $bar;
(my $baz = $hoge) =~ s/(Lorem)/\L$1/gi; # 小文字変換
say $baz;

