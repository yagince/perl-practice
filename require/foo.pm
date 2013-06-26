use 5.012;

sub foo {
  my $f = shift;
  my $v = shift;
  $f->($v);
}

1;
