(

  sedit "s:suitesparse:SuiteSparse:g" configure &&
  CXXFLAGS="-lpthread" &&

  ./configure  --sysconfdir=/etc        \
               --prefix=/usr            \
               --mandir=/usr/share/man  \
               --localstatedir=/var     \
               --enable-dl              \
               --enable-rpath           \
               $OPTS                   &&

 default_make 

) > $C_FIFO 2>&1
