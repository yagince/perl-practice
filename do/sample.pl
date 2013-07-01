use 5.012;

my $b = 1;
do {
    my $hoge = "hoge";
    $hoge .= "foo";
    say $hoge;
} if $b;
