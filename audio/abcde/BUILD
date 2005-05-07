(

  # this edit fixes a metaflac option name change in flac-1.1.1
  sedit "s/import-vc-from/import-tags-from/" abcde &&
  export DESTDIR=""
  make                 		&&
  prepare_install      		&&
  make install
 
) > $C_FIFO 2>&1
