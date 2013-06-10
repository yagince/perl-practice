foreach $v qw(hoge foo bar) { print "item : $v\n"; }

@ary = qw(hoge foo bar);
foreach $v (@ary) {
  $v .= ".";
}
print "@ary\n";

#制御変数の値は元に戻る

$tmp = "hogehoge";
foreach $tmp qw(a b c) { print "$tmp\n"; }
print "$tmp\n";                 #=> hogehoge

print '== $_ ==============================================================';
foreach (0..10) { print "i : $_ \n"; }
