use 5.012;

my @ary = (1,2,3);

my $ary_ref = \@ary; # 配列のリファレンス
#　デリファレンス
say @{$ary_ref}[0];
say ${$ary_ref}[0];
say $$ary_ref[0];

sub my_push {
  my $list_ref = shift;
  my $item = shift;
  push @$list_ref, $item;
  @$list_ref;
}

my @orig = (1,2,3);
my_push \@orig, 10; # リストを直接渡せない
say "@orig";

say "================================================================";

my $hoge = [ 'hoge' => 1 ]; # ファットカンマでもOK
say "@{$hoge}[0]";
