
bzcat $SCRIPT_DIRECTORY/aspell-.33-fix2.diff.bz2 | patch -p0

(

  unset CC CXX                                              &&
  ./configure  --build=$BUILD                               \
               --prefix=/usr                                \
               --sysconfdir=/etc                            \
               --localstatedir=/var                         \
               --enable-static                              \
               --enable-doc-dir=/usr/share/doc/$MODULE      \
               $OPTS                                        &&

#lets fix the symlinks :=)
  sedit "s/link_cmd = ln -s/link_cmd = ln -sf/g" data/Makefile &&

  default_make

) > $C_FIFO 2>&1 
