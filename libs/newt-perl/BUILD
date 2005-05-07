(
  patch_it $SOURCE_CACHE/$SOURCE2 1                  &&
  patch_it $SOURCE_CACHE/$SOURCE3 1                  &&
  patch_it $SOURCE_CACHE/$SOURCE4 1                  &&
  patch_it $SOURCE_CACHE/$SOURCE5 1                  &&
  rm -rf newtlib                                     &&

  perl Makefile.PL PREFIX=/usr                       &&
  make                                               &&
  prepare_install                                    &&
  make    install                                    &&
  find /usr -name Newt.so | xargs chmod 755
  
) > $C_FIFO 2>&1
