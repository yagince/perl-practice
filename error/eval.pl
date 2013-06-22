use 5.012;

my $a = 10;
my $b = 0;
my $result = eval{ $a / $b };
print "Error : $@" if $@;

defined(my $r = eval{$a/$b}) or print $@;
say $r; # undef


sub div {
  my ($first, $second) = @_;
  $first / $second;
}

eval {
  my ($first, $second) = (10, 0);
  my $ret = div($first, $second);
  say $ret if $ret;
};

print "eval error : $@" if $@;
