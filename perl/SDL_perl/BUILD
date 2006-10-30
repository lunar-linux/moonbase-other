(

  perl Build.PL    &&
  ./Build          &&
  ./Build test     &&
  prepare_install  &&
  ./Build install  &&
  sleep 3

) > $C_FIFO 2>&1
