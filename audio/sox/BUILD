(

  sedit "s:ftello:ftell:g" src/vorbis.c

  ./configure   --build=$BUILD      \
                --prefix=/usr       \
                --sysconfdir=/etc   \
                $OPTS              &&
  default_make
  
) > $C_FIFO 2>&1
