(

  OPTS="$OPTS --enable-gtk2 --disable-gtk"
  # shoot metaconfig in the head please:
  ./Configure -de \
              -D gtkversion=2 \
              -D prefix=/usr \
              -D installbin=/usr/bin \
	      -D installprivlib=/usr/lib/gtk-gnutella &&
  default_make

) > $C_FIFO 2>&1
