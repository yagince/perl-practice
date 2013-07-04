use Exception::Class (
    'X::Hoge' => {
        fields => [ 'name' ],
    },
);

sub X::Hoge::full_message {
    my $self = shift;
    return "Throw " . $self->name . ".";
}

1;
