(
# unset CC CXX                                         &&
  sedit 's/\/usr\/local/\/usr/g' Makefile              &&
  default_make                                         &&
  strip /usr/bin/wvdial &&
  strip /usr/bin/wvdialconf

) > $C_FIFO 2>&1

