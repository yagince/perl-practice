use 5.019;

my @hoge = qw(c d b e a);
my @sorted = sort @hoge; # リストコンテキスト
my $number = 100 + @hoge; # スカラーコンテキスト　（スカラーコンテキストでリストは要素数を返す)

say @sorted;
say $number;

# リストを生成する式をスカラーコンテキストで使ってみる

my @data = qw(foo hoge bar);
my @sorted = sort @data;
say @sorted; # barfoohoge
my $sorted = sort @data; # スカラーコンテキスト
say $sorted; # undef

my @reversed = reverse @data;
say @reversed; # barhogefoo
my $reversed = reverse @data; # スカラーコンテキスト
say $reversed; # すべての要素を連結（foohogebar)して、逆順(rabegohoof)にして返す

# スカラー値をリストコンテキストで使うと

my @list = 1; # 要素が１個のリストになる

# (以下は別物)
my @empty_undef = undef; # undefが入ったリスト
my @empty = (); # 空リスト

# スカラーコンテキストを強制する
my @names = qw(hoge foo bar);
say "names has ", @names, " items"; # リストコンテキストになるので、要素数にはならない
say "names has ", scalar @names, " items"; # スカラーコンテキストに変換したので要素数が取得できる

say(<STDIN>); # ctrl+DでEOFになる リストコンテキストっぽい
say(my @stdin = <STDIN>); # これは明示的なリストコンテキスト
say "======================";
say @stdin;
