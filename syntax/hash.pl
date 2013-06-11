use 5.012;

my %hash = ('hoge', 1, 'foo', 2);

print "$hash{'hoge'}\n";

my @ary = %hash; # unwind
print "@ary\n";

print %hash . "\n"; # 2/8 どういう意味だ？？

# これでもかける
my %hash2 = ("hoge" => 1,
             "foo" => 2);

say $hash2{"hoge"};
say $hash2{"foo"};
