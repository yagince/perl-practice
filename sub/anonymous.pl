use 5.012;


my $hoge = sub {
  my $name = shift;
  say "hogehoge : " . $name;
};

$hoge->("foobar");
