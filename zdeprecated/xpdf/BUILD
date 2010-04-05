(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  patch_it $SOURCE_CACHE/$SOURCE3 1 &&
  patch_it $SOURCE_CACHE/$SOURCE4 1 &&
  patch_it $SOURCE_CACHE/$SOURCE5 1 &&

  OPTS="$OPTS --with-freetype2-includes=/usr/include/freetype2       \
              --sysconfdir=/etc --enable-opi --enable-multithreaded  \
              --enable-wordlist --with-gzip"                        &&

  default_build

) > $C_FIFO 2>&1
