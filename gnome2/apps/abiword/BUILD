(

  unpack $SOURCE2 &&

  ./configure   --build=$BUILD                  \
                --sysconfdir=/etc               \
                --prefix=/usr                   \
                --localstatedir=/var            \
                --infodir=/usr/share/info       \
                --mandir=/usr/share/man         \
                $OPTS                           &&
 
  default_make &&

  # Build the plugins
  cd abiword-plugins-$VERSION &&

  # Patch to compile plugins with glibc 2.10.1
  patch_it $SOURCE_CACHE/$SOURCE3 1 &&

  ./configure   --build=$BUILD                  \
                --sysconfdir=/etc               \
                --prefix=/usr                   \
                --localstatedir=/var            \
                --infodir=/usr/share/info       \
                --mandir=/usr/share/man         \
                --disable-pdf                   \
                --disable-gda                   \
                --with-abiword=$SOURCE_DIRECTORY \
                $OPTS                           &&
 
  make &&
  make install-strip

) > $C_FIFO 2>&1
