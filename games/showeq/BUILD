(
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  make -f Makefile.dist &&
  ./configure  --prefix=/usr			\
	       --sysconfdir=/etc/showeq		\
               --localstatedir=/var  		\
               --infodir=/usr/share/info	\
	       --mandir=/usr/share/man		\
               --with-qt-dir=/opt/lunar/qt/3	\
               $OPTS				&&
   default_make

) > $C_FIFO 2>&1
