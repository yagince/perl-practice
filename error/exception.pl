use 5.012;

use Exception::Class (
    'X::Hoge' => {
        fields => [ 'name' ],
    },
);

sub X::Hoge::full_message {
    my $self = shift;
    return "Throw " . $self->name . ".";
}

use Carp 'croak';
croak( X::Hoge->new(name => "hogepiyo") );
