use 5.012;

# use Test::More tests => 4;
use Test::More "no_plan";

ok(1, '1 is true');
is(2 + 2, 4, 'the sum is 4');
is(2*3, 5, 'the product is 5'); # not ok
isnt(2 ** 3, 6, "the result is not 6");
like('Alpaca Book', qr/alpaca/i, 'I found an alpaca!');
