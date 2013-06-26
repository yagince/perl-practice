use 5.012;

my @names = qw(hoge foo bar piiiiyo);

my @sorted = sort { length $b <=> length $a } @names;
say "@sorted";

# lengthで文字数計算するのが1回で済む
my @sorted2 =
  map $_->[0],
  sort { $b->[1] <=> $a->[1] }
  map [$_, length $_], @names;
say "@sorted2";
