use 5.012;

say (1,2,3);

use List::Util qw(max);

say max (1,2,3);

my @ary = (1,2,3);
say max @ary;


my ($one, $two, $three) = @ary;
say "$one $two $three";

print "ary = @ary\n";
my $x = ('hoge', 'foo', 'bar');
print "x = $x\n"; # bar

my @hoge = (1, (2,3,4,5), 6);
say "@hoge";

sub hoge {
  my @ary = shift;
  push @ary, "hoge";
  @ary;
}

my @a = hoge (1,2,3);
say "@a";
