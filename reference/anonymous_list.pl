use 5.012;

my $items_ref = [ qw/ hoge foo bar / ];

say "@$items_ref";
say @$items_ref[1];

# my $ref = [(1,2,3,4,5)];
my $ref = [1,2,3,4,5]; # ()を省略
say "@$ref";
