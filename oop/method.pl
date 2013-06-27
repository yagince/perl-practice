use 5.012;

{package Speaker;
 sub speak { 
   my $class = shift;
   say "$class is ".$class->value.".";
 }
}

{package Hoge;
 our @ISA = qw(Speaker);
 sub value { "xxxxxxxxxxxxx" }
}

Hoge->speak;

{ package Foo;
  our @ISA = ('Hoge');
  sub value { "Foooooooo" }
}

Foo->speak;

{ package Bar;
  our @ISA = ('Hoge');
  sub speak {
    my $class = shift;
    $class->SUPER::speak;
    say "(called by Bar)";
  }
}

Bar->speak;
