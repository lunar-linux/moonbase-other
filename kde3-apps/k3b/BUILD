(
  export LDFLAGS="$LDFLAGS -z combreloc"

  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}      \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}   \
               --disable-debug                      \
	       --enable-final                       \
               --enable-fast-malloc=full            \
               --with-xinerama                      \
               $OPTS                                &&

  sedit "s/CDPARANOIA_LIBS = =/CDPARANOIA_LIBS = -lcdda_paranoia -lcdda_interface/g" Makefile &&
  sedit "s/CDPARANOIA_LIBS = =/CDPARANOIA_LIBS = -lcdda_paranoia -lcdda_interface/g" src/Makefile &&

  default_make
 
) > $C_FIFO 2>&1
