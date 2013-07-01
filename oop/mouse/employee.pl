use 5.012;

package Employee {
    use Mouse;
    has first_name => (
        is => "rw",
        isa => "Str",
        required => 1,
    );
    has last_name => (
        is => "rw",
        isa => "Str",
        # required => 1,
    );
    has unit => (
        is => "ro",
        isa => "Unit",
        default => sub { Unit->new(name => "デフォルト事業部") },
        lazy => 1,
    );
    sub full_name {
        my ($self) = @_;
        join(' ', $self->first_name, $self->last_name);
    }
}

package Unit {
    use Mouse;
    has name => ( is => "ro", isa => "Str" );
}

my $a = Employee->new(first_name => "natsuki", last_name => "yagi", unit => Unit->new(name=>"アホ事業部"));
say $a->full_name;
say $a->unit->name;

my $b = Employee->new(first_name => "natsuki");
say $b->full_name;
say $b->unit->name;
