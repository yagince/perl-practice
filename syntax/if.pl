use 5.012;

say 1 if 1;
say 0 if 0; # false
say "undef" if undef; #false
say "empty" if ""; #false
say "hoge" if "hoge"; #true
say "empty list" if (); #false
