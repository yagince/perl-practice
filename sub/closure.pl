use 5.012;
use File::Find;

my $total = 0;
find(sub{ $total += -s if -f }, '.');
say $total;

# サブルーチンリファレンスを返すサブルーチン
sub print_bigger_than {
  my $min = shift;
  sub{ say $File::Find::name if -f and -s >= $min };
}
find(print_bigger_than(300), qw(.));
