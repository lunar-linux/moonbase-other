(
  patch_it $SOURCE2 0 &&
  make -f Makefile.dist &&
  ./configure  --prefix=/usr			\
	       --sysconfdir=/etc/showeq		\
               --localstatedir=/var  		\
               --infodir=/usr/share/info	\
	       --mandir=/usr/share/man		\
               --with-qt-dir=${QT_PREFIX:-$QTDIR}	\
	       --datadir=/usr/share		\
               $OPTS				&&
   default_make

) > $C_FIFO 2>&1
