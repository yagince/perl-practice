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

use Exception::Class (
    'X::BarException' => {
        fields => [ 'bar_name' ]
    }
);

use Carp 'croak';
try {
    # croak( bless \"foo", "Foo" );
    # croak( X::MyException->new( { name => "hoge" } ) );
    X::BarException->throw( bar_name => "barbarbar" );
}
catch {
    my $e = shift;
    if ( $e->isa("X::MyException") ) {
        say $e->get_name;
    }
    elsif ( $e->isa('X::BarException') ) {
        say $e->bar_name;
    }
    else {
        say "other error";
    }
};
