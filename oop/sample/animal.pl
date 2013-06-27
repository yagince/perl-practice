use 5.012;

sub Cow::speak {
  say "mo---";
}

Cow::speak;
Cow->speak;
"Cow"->speak; #これは驚き、、、
