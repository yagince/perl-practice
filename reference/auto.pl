use 5.012;

my %hash;

# hogeというキーは存在しないが、無いので自動的に生成される。valueはリストコンテキストなので、配列リファレンスが自動生成される。
push @{ $hash{hoge} }, "do----nn";
say $hash{hoge}->[0];


my $not_yet;
@$not_yet = (1,2,3);
say $not_yet -> [0];

my %auto_hash;

$auto_hash{hoge}{total} += 100;
$auto_hash{hoge}{total} += 100;
$auto_hash{hoge}{total} += 100;

say $auto_hash{hoge}{total};
say $auto_hash{foo}{total} + 100;
