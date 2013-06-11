use strict;

sub println {
  print "@_\n";
}

println "hoge"; # &を省略できる

sub chomp {
  print "chomp!!!\n";
}

&chomp; # 組み込み関数と同じ名前は&を省略できない
