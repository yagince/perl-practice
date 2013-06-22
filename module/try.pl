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
}
