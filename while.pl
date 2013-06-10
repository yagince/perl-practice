use 5.019;

my @ary = qw( a b c d e );
while(my($index, $value) = each @ary) {
  say "$index : $value";
}

foreach my $index (0..$#ary) {
  say "$index : @ary[$index]";
}
