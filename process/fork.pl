use 5.012;

defined(my $pid = fork) or die "cannnot fork";
# 上記でフォークされたプロセスは以下の行から実行しはじめる。
unless ($pid) {
  say "----start child";
  exec 'date';
  die "cannot exec date";
}

say "----wait child";
waitpid($pid, 0);

say "----parent end";


