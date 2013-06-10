use utf8;

print 'hoge\nfoo' . "\n"; # \nは改行と認識されない

print "hoge\nfoo" . "\n";

print "aaa" x 5 . "\n"; # aaaが５回

$hoge = 100;
print "$hoge hogehoge" . "\n";
# print "$hogehogehoge" . "\n"; #これだと$hogehogehogeという変数と解釈されるっぽい？？
print "${hoge}hogehoge" . "\n"; #これならOK
print "${ 1 + 1 }hogehoge" . "\n"; #式はうみこめないのか？？


# if ("hoge" eq "hoge") {
if ("hoge" == "hoge") {
  print "same!!!\n";
} else {
  print "not....same.....orz\n";
}


print "100*3" - 50; # 100*3は100として扱われる
