(

  # perl itself provides /usr/bin/config_data
  sedit "s:\['scripts/config_data'\]:'':1" Build.PL &&

  perl Build.PL    &&
  ./Build          &&
  prepare_install  &&
  ./Build install

) > $C_FIFO 2>&1
