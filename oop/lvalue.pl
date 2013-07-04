use 5.012;

package Hoge {
    use Class::Std::Utils;
    my %name_of;
    sub new {
        my ($class, $name) = @_;
        my $new_obj = bless anon_scalar(), $class;
        $name_of{ident $new_obj} = $name;
        return $new_obj;
    }
    sub name :lvalue {
        my ($self) = @_;
        return $name_of{ident $self};
    }
};

my $hoge = Hoge->new("yes takasu clinic");
say $hoge->name;

$hoge->name = "replaced name";
say $hoge->name;

