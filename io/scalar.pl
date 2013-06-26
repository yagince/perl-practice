use 5.012;
use IO::Scalar;

my $buf = "";
my $buf_fh = IO::Scalar->new(\$buf);
print $buf_fh "hogebar";
say $buf;

open( my $fn, ">>", \$buf)
  or die "could not append to string: $!";

print $fn "Yeaaaaaaaaaahhhhhhh!!!!!";

say $buf;
