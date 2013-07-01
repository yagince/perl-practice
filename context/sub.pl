use 5.012;

my $str = "hogehogehoge";

# my $reversed_str = scalar reverse $str;
my $reversed_str = reverse $str; # スカラーコンテキストなのでリバースされる
say $reversed_str;

sub hoge {
    my $value = shift;
    say $value;
}

hoge(reverse $str); # リストコンテキストになるので、リバースされない
hoge(scalar reverse $str);

