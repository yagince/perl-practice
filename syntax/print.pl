$ret = print "hoge\n";
print $ret . "\n"; #=> 1

print (2+3)*4; #=> 5 
# (print(2+3))*4　と解釈される

print "\n";

printf "hoge %s. foobar %04d\n", "piyo", 5; # format
