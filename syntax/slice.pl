use 5.012;

# list
my @ary = (0,1,2,3,4,5,6,7,8,9,10);
my ($zero, $eight) = @ary[0, 8];
say "$zero, $eight";

my @nums = @ary[0,3,2,7,5,6,3,1,2,1,1,9,5];
say "@nums";

# hash
my %hash = ( hoge => 101, foo => 231, bar => 5);
my @v = @hash{ qw/ hoge foo bar / };
say "@v";

my @values = (10, 50, 5);
@hash{ qw/ hoge foo bar/ } = (10, 50, 5); # hoge => 10, foo => 50, bar => 5
@hash{ qw/ hoge foo/ }     = (10, 50, 5); # hoge => 10, foo => 50
@hash{ qw/ hoge foo bar/ } = (10, 50);    # hoge => 10, foo => 50, bar => undef

foreach my $key (keys %hash) {
  say "$key => $hash{$key}";
}
