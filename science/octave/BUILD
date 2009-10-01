(

#   bad_flags -ffast-math  &&
  mkdir -p /usr/share/octave/$VERSION/etc/doc-cache &&

  ./configure  --sysconfdir=/etc        \
               --prefix=/usr            \
               --mandir=/usr/share/man  \
               --localstatedir=/var     \
               --enable-shared          \
               --with-g77               \
               --enable-rpath           \
               $OPTS                   &&

 default_make 

) > $C_FIFO 2>&1
