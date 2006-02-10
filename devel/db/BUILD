(
  
  cd  build_unix &&
  ../dist/configure  --prefix=/usr       \
                     --build=$BUILD      \
                     --enable-dynamic    \
                     --enable-compat185  \
                     --enable-cxx        \
		     $OPTS              &&

  sedit "s:LIBSO_LIBS=:LIBSO_LIBS= -pthread :" Makefile       &&
  sedit  's/$(prefix)\/docs/\/usr\/share\/doc\/db/' Makefile  &&
  default_make

) > $C_FIFO 2>&1
