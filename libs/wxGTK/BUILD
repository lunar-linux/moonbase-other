( 
  patch_it $SOURCE2 0	&&

  ./configure   --with-gtk \
                --prefix=/usr \
                --enable-geometry \
                --enable-optimise \
                --disable-debug \
                --enable-gui \
                --enable-timedate \
                --enable-protocol \
                --enable-http \
                --enable-ftp \
                --enable-resources \
                --enable-prologio \
                --enable-final \
                --enable-timer \
                --disable-profile \
                $OPTS  &&
  default_make

) > $C_FIFO 2>&1
