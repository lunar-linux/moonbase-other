(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  make PREFIX=/usr                 &&
  prepare_install                  &&
  make PREFIX=/usr install

) > $C_FIFO 2>&1
