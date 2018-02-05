OPTS+=" --enable-vala \
        --disable-static" &&

autoreconf -i &&

# Only want gdk-pixbuf to own /usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache
sedit "s:\$(DESTDIR)\$(gdk_pixbuf_cache_file):dummyfile:" gdk-pixbuf-loader/Makefile.{in,am} &&

default_build
