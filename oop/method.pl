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
