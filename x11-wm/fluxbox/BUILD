(
  OPTS=""  

  if [ "$KDE" == "y" ] ; then
    OPTS="$OPTS --enable-kde"
  fi

  if [ "$GNOME" == "n" ] ; then
    OPTS="$OPTS --disable-gnome"
  fi

  if [ "$XIN" == "y" ] ; then
    OPTS="$OPTS --enable-xinerama"
  fi

  if [ "$REM" == "y" ] ; then
    gzip -dc  $SOURCE_CACHE/$SOURCE2 | patch -p1 
  fi && 

# patch_it $SOURCE_CACHE/$SOURCE3 1

#  libtoolize --force \
#  && aclocal \
#  && automake \
#  && autoconf && 

  ./configure  --build=$BUILD            \
               --sysconfdir=/etc         \
               --prefix=/usr             \
               --localstatedir=/var      \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               $OPTS                     &&

  default_make
) > $C_FIFO 2>&1
