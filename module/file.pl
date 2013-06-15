use 5.012;
# use File::Basename qw/ basename /;
use File::Basename qw/ basename dirname /;
use File::Basename (); #関数名をインポートしない

my $name = "/usr/local/bin/perl";
# say basename $name;
# say dirname $name;
say File::Basename::basename $name;
say File::Basename::dirname $name;

use File::Spec;

my $sample_file = "sample.txt";
my $new_file = File::Spec->catfile("new_sample.txt");

rename($sample_file, $new_file)
  or warn "can not rename";
