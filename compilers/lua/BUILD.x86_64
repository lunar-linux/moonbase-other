(

  patch_it $SOURCE_CACHE/$SOURCE2 0      &&
  patch_it $SOURCE_CACHE/$SOURCE3 1      &&

  sedit "s:/usr/local:/usr:" Makefile    &&
  sedit "s:/usr/local:/usr:" etc/lua.pc  &&

  make linux      &&
  prepare_install &&
  make install    &&

  install -D $SOURCE_DIRECTORY/etc/lua.pc /usr/lib/pkgconfig/lua.pc

) > $C_FIFO 2>&1
