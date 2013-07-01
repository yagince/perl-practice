use 5.012;
use Try::Tiny;

try {
  say "...start";
  10 / 0;
}
catch {
  print "Error!! : $_";
}
finally {
  say "...end";
};


say "================================================================";

{ package X::MyException;
  sub new {
      my ($class, $options_ref) = @_;
      bless $options_ref, $class;
  }
  sub get_name {
      my $self = shift;
      $self->{name};
  }
}

use Carp 'croak';
try {
    # croak( bless \"foo", "Foo" );
    croak( X::MyException->new( { name => "hoge" } ) );
}
catch {
    my $e = shift;
    if ( $e->isa("X::MyException") ) {
        say $e->get_name;
    }
    else {
        say "other error";
    }
};
