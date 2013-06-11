use 5.010;

@words = qw/ hoge foo bar piyo my name is natsuki yagi/;

open my $out, ">>", "out.txt"
  or die "Could not open out.txt. : $!";

foreach my $word (@words) {
  print $out "$word\n";
}
