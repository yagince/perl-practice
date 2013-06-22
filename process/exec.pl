use 5.012;

say '---start';

system "echo","hoge";

exec 'echo', 'foo';

# execで子プロセスに移って、ここは実行されない
say "---end";
