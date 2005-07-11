(

  sedit "s:^banner=.*:banner=no:" colordiffrc     &&

  prepare_install  &&

  install -m0755 colordiff.pl $MODULE_PREFIX/bin  &&
  install -m0644 colordiffrc  /etc                &&
  install -m0644 colordiff.1  $MODULE_PREFIX/man/man1

) > $C_FIFO 2>&1
