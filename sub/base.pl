sub hoge {
  print "Hoge\n";
}

&hoge;

sub number {
  100;
}

print &number * 5 . "\n";


