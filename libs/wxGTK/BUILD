(

  if [[ $GTK2 == "y" ]]; then
    OPTS="$OPTS --enable-gtk2 "
  fi
  if [[ $OPENGL == "y" ]]; then
    OPTS="$OPTS --with-opengl"
  fi
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
