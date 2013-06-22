use 5.012;

open my $date, '-|', 'date' or die "cannot pipe from date : $!";

my $now = <$date>;

say $now;
