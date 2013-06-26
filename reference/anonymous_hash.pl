use 5.012;

my %hash = (hoge => 100, foo => 200, bar => 50);

my $hash_ref = {hoge => 100, foo => 200, bar => 50}; # {}で囲むとリファレンスになる
say $$hash_ref{hoge};

my $a = {name => 'hoge',
         age => 50,
         address => 'tokyo', #最後に,付けてもOK
         };

say $$a{address};

my @people = ($a,
              {name => "foo",
               age => 10,
               address => 'saitama',
              },
             );

say "@people";
say $people[1]->{age};
