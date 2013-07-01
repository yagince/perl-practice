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


# 戻り値のコンテキスト
sub defined_values {
    my @tmp_values = grep { defined($_) } @_;
    return @tmp_values if wantarray;
    return join(",", @tmp_values);
}

my @ary = (1,2,undef,3);
my $joined_values = defined_values(@ary);
say $joined_values;
my @values = defined_values(@ary);
say "@values";
