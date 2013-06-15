use 5.012;

my $database = "DBI:mysql:test";
my $user_name = "root";
my $pass = "password";

use DBI;
my $connection = DBI->connect($database, $user_name, $pass);
my $state = $connection->prepare("select * from hoge");
$state->fexecute;
while (my ($id, $name) = $state->fetchrow_array) {
  say "id: $id   name: $name";
}
$state->finish;
$connection->disconnect;
