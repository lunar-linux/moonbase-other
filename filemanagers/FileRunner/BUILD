(

  cp           fr                 fr.original
  sed          "s/wish/wish8.3/"  fr.original  >  fr

  cd           Makefiles
  cp           Makefile.linux_gcc  Makefile.linux_gcc.orig
  sed          "s/CFLAGS = -Wall/CFLAGS := \$\(CFLAGS\) -Wall/"  \
               Makefile.linux_gcc.orig  Makefile.linux_gcc
  cd           ..

  make   -f    Makefiles/Makefile.linux_gcc       &&  
  prepare_install                                 &&
  mkdir  -p    /usr/share/FileRunner.$VERSION     &&
  cp     -R  * /usr/share/FileRunner.$VERSION     &&
  ln     -sf   /usr/share/FileRunner.$VERSION/fr  \
               /usr/bin/fr

) > $C_FIFO 2>&1
