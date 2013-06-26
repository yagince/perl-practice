use 5.012;

sub factorial {
  my $n = shift;
  return 1 if $n <= 1;
  $n * factorial($n - 1);
}

say factorial(3);
