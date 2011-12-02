(

  sedit "s:suitesparse:SuiteSparse:g" configure &&

  if in_depends $MODULE SuiteSparse ; then
    export LIBS+=" -lcamd -lmetis"
  fi &&

  CXXFLAGS="-lpthread" &&

#  ./configure  --sysconfdir=/etc        \
#               --prefix=/usr            \
#               --mandir=/usr/share/man  \
#               --localstatedir=/var     \
#               --enable-dl              \
#               --enable-rpath           \
#               $OPTS                   &&

 default_build 

) > $C_FIFO 2>&1
