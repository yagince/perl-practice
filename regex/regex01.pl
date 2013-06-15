use 5.012;

my $sample = "hello world";

if ($sample =~ /(hello)/) {
  say "matched. => $1";
} else {
  say "not matched.";
}


$_ = "hoge foo bar";
my ($first, $second, $third) = /(\S+) (\S+) (\S+)/;
say $first;
say $second;
say $third;
