use 5.012;


sub UNIVERSAL::hoge {
  say "hoge";
}

{ package Hoge;
  sub new {
    my $class = shift;
    my $name = shift;
    bless \$name, $class;
  }
  sub name { ${$_[0]} }
}

my $hoge = Hoge->new('HogeHoge');

$hoge->hoge;
$hoge->hoge if $hoge->can('hoge');
$hoge->hoge if $hoge->isa('Hoge');
