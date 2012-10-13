(

  OPTS+=" --enable-shared --with-threads"  &&

  default_config &&

# This is important, lets 2.x versions and it to coexist.
  make &&
  prepare_install &&
  make altinstall &&

# Till Python 3 based apps catch up we need a symlink from python3.3 to python3
  ln -sf /usr/bin/python3.3 /usr/bin/python3

) > $C_FIFO 2>&1

  
