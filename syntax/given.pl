use 5.012;

my $arg = "I'm crazy";

# スマートマッチで比較されるらしい
given ( $arg ) {
  when ( "I'm crazy" ) { say 'match full string'; continue } # continueすると次の条件もチェックする
  when ( /crazy/ ) { say "include 'crazy'" }
  default { say "unmatched" }
}

#以下のようにすることでダムマッチにできる
given ( $arg ) {
  when ( ! /hoge/ ) { say "not include hoge"; continue } # 否定は自動的にダムマッチ
  when ( $_ eq "I'm crazy" ) { say 'match full string  (dumb match)'; continue }
  when ( $_ =~ /crazy/ ) { say "include 'crazy' (dumb match)" }
  default { say "unmatched (dumb match)" }
}

# when call sub
sub orig {
  my ($obj) = @_;
  $obj
}
given ( 1 ) {
  when ( orig $_ ) { say "true" }
  default { say "false" }
}


# list
my @ary = (10,4,2,9,6,3,5);
foreach( @ary ) { # 各要素は$_に格納されるので、以下のように書ける
  when ( 10 ) { say "$_ is 10" }
  when ( 1 ) { say "$_ is 1" }
  default { say "$_ is not 1 or 10" }
}

$_ = "hoge";
when( /hoge/) { say "hogehogehoge----!!!!!!" } # $_ さえ定義していれば、whenはブロックで囲まなくても使える
