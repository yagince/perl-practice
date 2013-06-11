use 5.010;

open my $in, "<", "read.txt"
  or die "Could not open read.txt. : $!";

while(<$in>) {
  print $_;
}
