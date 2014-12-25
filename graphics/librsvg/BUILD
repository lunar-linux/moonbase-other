(

  OPTS+=" --disable-static"

  # Only want gdk-pixbuf to own /usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache
  sed -i -e "s:\$(DESTDIR)\$(gdk_pixbuf_cache_file):dummyfile:" gdk-pixbuf-loader/Makefile.{in,am} &&

  default_build

) > $C_FIFO 2>&1
