# print+((Fizz)[$_%3].(Buzz)[$_%5]||$_)."," for 1..100;

# print "\n";

use 5.012;

my @fizz = qw/Fizz/;
my @buzz = qw/Buzz/;
foreach (1..100) {
  say ("$fizz[$_%3]"."$buzz[$_%5]" || $_);
}
