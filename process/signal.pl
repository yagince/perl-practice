use 5.012;
my $i = 0;

my $count = 0;
while (1) {
  last if ($i);
  say "hoge$count";
  $count++;
}

sub up { 
  say "Good Bye!!!";
  $i++;
}

$SIG{'INT'} = 'up';
