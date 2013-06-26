use 5.012;

sub my_push {
  my $list_ref = shift;
  my $item = shift;
  push @$list_ref, $item;
}

my @orig = (1,2,3);
my_push \@orig, 10;
# my_push \(1,2,3), 10; #これはできない　Not an ARRAY reference　たしかに、配列ではなくて、リスト、、だけど。
my_push [(1,2,3)], 10; # 無名配列コンストラクタ使えばイケる
say "@orig";

