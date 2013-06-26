use 5.012;

my @a_items = qw/ hoge foo bar /;
my @a = ("A", \@a_items);

my @b_items = qw/ foo bar /;
my @b = ("B", \@b_items);

my @party = (\@a, \@b);

say "@party";

foreach my $person (@party) {
  my $name = $$person[0]; # 文字列
  my $item_ref = $$person[1]; #item配列へのリファレンス
  say "$name : @$item_ref";
}

my $a_items_ref = $party[0] -> [1]; # ->でデリファレンスする
say "@$a_items_ref";
my $a_items_ref_2 = $party[0][1]; # ->は添字間であれば省略できる
say "@$a_items_ref_2";

# @partyは配列なので、$party[0]と書けるが以下の場合は->を省略できない
my $party_ref = \@party;
my $b_items_ref = $party_ref -> [1][1]; # $party_refはリファレンスなので$party_ref[1][1]とは書けない
say "@$b_items_ref";
