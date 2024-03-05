default_build &&

cd contrib/pngminus &&
make PNGLIB_SHARED="-L/usr/lib -lpng" CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS" png2pnm pnm2png
install -m0755 png2pnm pnm2png /usr/bin/
