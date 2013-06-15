use 5.012;
use DateTime;

my $now = DateTime->from_epoch( epoch => time );
say $now->year;
say $now->month;
say $now->day;

my $date = DateTime->new(year => 1985,
                         month => 5,
                         day => 20);

my ($year, $month, $day) = ($now - $date)->in_units(qw/ years months days /);
say "$year年$monthヶ月$day日前ですよ";
