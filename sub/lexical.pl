sub max_2 {
  my($i, $j)= @_;
  if ($i > $j) { $i } else { $j }
}

print &max_2(1,2,3) . "\n"; # ３は無視される

sub max {
  my $max = shift @_;
  foreach my $item (@_) {
    if ($item > $max) { $max = $item }
  }
  $max;
}

print &max(10,2,3,4,5) . "\n";
