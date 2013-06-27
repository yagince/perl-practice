use 5.012;

{ package Hoge;
  sub new {
    my ($class, $name) = @_;
    bless \$name, $class;
  }
  sub name { ${$_[0]} }
  sub DESTROY {
    say $_[0]->name." is destroyed.";
  }
}

sub hoge {
  my $hoge = Hoge->new("Hoooge");
  say $hoge->name;
}

hoge;
