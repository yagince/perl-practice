use 5.012;

my $hoge = "hoge hello world";

if ($hoge =~ /hello/) {
  say "before  [$`]";
  say "matched [$&]";
  say "after   [$']";
}
