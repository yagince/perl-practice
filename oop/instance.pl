use 5.012;

{package Hoge;
 sub named {
   my $class = shift;
   my $name = shift;
   bless \$name, $class;
 }
 sub hoge { 'ho---ge' }
 sub name {
   my $self = shift;
   ref $self ? $$self : "unnamed";
 }
 sub speak {
   my $either = shift;
   my $word = shift;
   print $either->name, " speak ", $word, "\n";
 }
}

my $name = "namenamename";
my $hoge = bless \$name, "Hoge";;

say $hoge->hoge;
say $hoge->name;

say "================================================================";
my $hoge2 = Hoge->named('Hoge2');
say $hoge2->name;

say "================================================================";
say Hoge->name;

say "================================================================";
say Hoge->named("HogeHoge")->speak('English');

say "================================================================";

{ package Person;
  sub new {
    my ($class, $first_name, $last_name, $age) = @_;
    bless { first_name=>$first_name, last_name=>$last_name, age=>$age }, $class;
  }
  sub full_name{
    my $either = shift;
    $either->{first_name}." ".$either->{last_name};
  }
  sub age { $_[0]->{age} }
  sub set_age {
    my $either = shift;
    my $new_age = shift;
    $either->{age} = $new_age;
    $either;
  }
}

my $p = Person->new('taro','yamada',30);
say $p->full_name;
say $p->set_age(1000)->age; # 1000
say $p->age; # 1000
