use 5.012;

my $value = 15;

my $size = 
  ($value < 10) ? "small" :
  ($value < 20) ? "medium" :
  ($value < 30) ? "big" :
                  "too big";


say $size;
