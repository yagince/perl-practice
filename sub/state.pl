use 5.010;

sub hoge {
  state $n = 0; # 一回目の呼び出し時だけ初期化されて、それ以降は値を保持する インスタンス変数的なノリ？
  $n += 1;
  print "hogehoge $n.\n";
}

hoge;
hoge;
hoge;
hoge;
hoge;

#state @ary = qw(1 2 3); #リストコンテキストでの初期化は出来ない　なぜ？？
