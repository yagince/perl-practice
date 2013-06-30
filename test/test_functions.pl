use 5.012;

use Test::More "no_plan";

# 第一引数の評価結果が真
ok(1, '1 is true');

# 第1引数と第2引数が同じ
is(1+1, 2, "1+1 == 2");

# 比較演算子で比較
cmp_ok(1, '>', 0.001);

# 正規表現で文字列比較
my $sub = -3 + 3;
like($sub, qr/^-?0$/, "-3 + 3 is -0 or 0");

# オブジェクト指向的なテスト

{ package Hoge;
  sub new {
    my $class = shift;
    my $name = shift;
    bless \$name, $class;
  }
  sub name { ${$_[0]} }
  sub introduction{ "my name is ${$_[0]}. " };
}

{ package Foo;
  use base qw(Hoge);
  sub name { 
    my $class = shift;
    $class->SUPER::name." by Foo";
  }
}

my $foo = Foo->new("someone");
# インスタンスの型を検証
isa_ok($foo, "Foo");
isa_ok($foo, "Hoge");
# メソッドを持っている事を検証
can_ok($foo, $_) for qw(name introduction);

is($foo->name, "someone by Foo", 'name is someone by Foo');

# TODOなテスト
TODO: {
  local $TODO = "未実装";
  can_ok($foo, "something");
}

# SKIPz1したいテスト
sub is_skip { 1 }
SKIP: {
  skip("1個スキップします", 1) if is_skip; # skip関数が実行されないとスキップされない
  ok(0, "skipped");
}
