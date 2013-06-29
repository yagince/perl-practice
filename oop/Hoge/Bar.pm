
use 5.012;

{ package Bar;
  our @EXPORT = qw(bar1);
  our @EXPORT_OK = qw(bar2);
  use base qw(Exporter);
  sub bar1 { say "bar" };
  sub bar2 { say "barbar" };
}

1;
