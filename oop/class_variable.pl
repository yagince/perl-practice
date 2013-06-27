use 5.012;

{ package Hoge;
  our %NAMES;
  sub new {
    my $class = shift;
    my $name = shift;
    my $self = bless \$name, $class;
    $NAMES{$self} = $self;
  }
  sub all_names { map { ref($_)." named ".${$_} } values %NAMES }
  sub all_keys { keys %NAMES }
}

my $hoge1 = Hoge->new("hoge1");
my $hoge2 = Hoge->new("hoge2");
my $hoge3 = Hoge->new("hoge3");

my @names = $hoge1->all_names;
say "@names";
say $hoge1->all_keys;
