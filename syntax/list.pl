print (1,2,3);
print "\n";
print (1..10);
print "\n";
print (5..1); # 範囲演算子は増加方向にしか使えないので空リスト
print "\n";
print (a..z);
print "\n";


print "== qw ================================================================\n";
# qwショートカット

print qw( a b c );
print "\n";
print qw( 1 2 3 );
print "\n";

print "== delimiter  ================================================================\n";
# デリミタはなんでもOK
print qw{
          first
          second
          third
      };
print "\n";

print "== assign ================================================================\n";
#リスト代入
($hoge, $foo) = (1,2);
print $hoge . "\n";
print $foo . "\n";

($first, $second) = (1,2,3); #ちゃんと１，２だけ代入される。secondが(2,3)にはならない
print $first . "\n";
print $second . "\n";

print "== array variable ================================================================\n";
#配列変数
@ary = (1,2,3);
print @ary[0] . "\n";
print $ary[0] . "\n";

@a2 = (@ary, 4 , 10000);
print @a2 . "\n";               #要素数が出力されるっぽい？？

@a3 = @a2;
@a3[0] = 100;
# ディープコピーになるっぽい？？
print @a2[0] . "\n";            # => 1
print @a3[0] . "\n";            # => 100

print "== pop ================================================================\n";

@pop = (1,2,3);
print pop(@pop) . "\n";
print pop(@pop) . "\n";
print pop(@pop) . "\n";
print pop(@pop) . "\n";         # => undef

print "== push ================================================================\n";

@push = ();
push(@push, 10);
push(@push, 20);
push(@push, 30);

push @push, a..c;
push @push, qw(hoge foo bar);

print pop(@push) . "\n";
print pop(@push) . "\n";
print pop(@push) . "\n";
print pop(@push) . "\n";
print pop(@push) . "\n";
print pop(@push) . "\n";
print pop(@push) . "\n";
print pop(@push) . "\n";
print pop(@push) . "\n";

print "== shift & unshift ================================================================\n";
@shift = (1,2,3);
print shift(@shift) . "\n";
print shift(@shift) . "\n";
print shift(@shift) . "\n";
unshift(@shift, a..c);
unshift(@shift, 10);
unshift(@shift, 20);
print shift(@shift) . "\n";
print shift(@shift) . "\n";
print shift(@shift) . "\n";
print shift(@shift) . "\n";
print shift(@shift) . "\n";

print "== splice ================================================================\n";
@splice = (1,2,3,4,5,6,7);
print splice(@splice, 1, 2);
print "\n";
print "@splice \n";

print "== variable2 ================================================================\n";
@v = qw( hoge foo bar );
$v = "baz";

print "@v[1]\n"; # => foo
print "$v[1]\n"; # => foo
print "${v}[1]\n"; # => baz[1]
