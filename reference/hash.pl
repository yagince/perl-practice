use 5.012;

my %hash = (hoge => 10, foo => 100, bar => 33);
my $hash_ref = \%hash;

say $$hash_ref{hoge};
say "@$hash_ref{ qw/ hoge foo / }";

my $hash_ref_ref = \$hash_ref; # リファレンスへのリファレンス
say $$$hash_ref_ref{hoge};

my $v = "hoge";
my %h = ( hoge => $v );
$h{hoge} = "foo";

say $h{hoge};
say $v;

my %h2 = ( hoge => $v );
foreach my $value (values %h2) {
    $value .= "foo";
}
say $h2{hoge};
say $v;
