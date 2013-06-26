use 5.012;
use File::Find;

find(sub { say $File::Find::name }, qw(.));
