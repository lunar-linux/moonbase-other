(

  unpack $SOURCE2 &&
  ./configure   --enable-xft                    \
                --with-libxml2                  \
                --build=$BUILD                  \
                --sysconfdir=/etc               \
                --prefix=/usr                   \
                --localstatedir=/var            \
                --infodir=/usr/share/info       \
                --mandir=/usr/share/man         \
                --with-sys-wv                   \
                $OPTS                           &&
             
  default_make &&

  # Build the plugins
  cd abiword-plugins-$VERSION &&
  ./configure   --enable-xft                    \
                --with-libxml2                  \
                --build=$BUILD                  \
                --sysconfdir=/etc               \
                --prefix=/usr                   \
                --localstatedir=/var            \
                --infodir=/usr/share/info       \
                --mandir=/usr/share/man         \
                --with-sys-wv                   \
                --disable-pdf                   \
                --disable-gda                   \
                --with-abiword=$SOURCE_DIRECTORY \
                $OPTS                           &&
  
  make &&
  make install-strip

) > $C_FIFO 2>&1
