(
  
  ./configure  --host=$BUILD               \
               --prefix=/usr               \
               --infodir=/usr/share/info   \
               --mandir=/usr/share/man     \
	       --enable-threads            \
	       --disable-nls               \
	       --with-system-zlib          \
               --enable-shared            &&
  make  bootstrap                         &&
  prepare_install                         && 

  make	prefix=/usr                       \
         mandir=/usr/share/man            \
         install                          &&

  ln    -sf gcc /usr/bin/cc               &&

  # symlinks to make work  
  # gcc -print-file-name=cpp
  ln    -sf  ../../../../bin/cpp  /usr/lib/gcc-lib/$BUILD/$VERSION/cpp  &&
  ln    -sf  ../usr/bin/cpp  /lib/cpp

) > $C_FIFO 2>&1
