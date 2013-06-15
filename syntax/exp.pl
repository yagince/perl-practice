use 5.012;

say "@{[ 1 + 2 ]}"; # 式展開
my @hoge = (1,2,3);
say "@{[@hoge]}";
