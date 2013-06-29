use 5.012;

{ package Foo;
  use base qw(Exporter);
  sub new {
    my $class = shift;
    my $name = shift;
    bless \$name, $class;
  }
  sub name { ${$_[0]} }
}

1;
