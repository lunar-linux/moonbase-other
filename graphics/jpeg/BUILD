(

  bad_flags -malign-double
  
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  patch_it $SOURCE_CACHE/$SOURCE3 1 &&

  ./configure  --build=$BUILD               \
               --prefix=/usr                \
	       --bindir=/usr/bin            \
	       --datadir=/usr/share         \
	       --mandir=/usr/share/man      \
	       --enable-shared              \
	       --enable-static              &&

  default_config &&
  make &&
  LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PWD make test &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
