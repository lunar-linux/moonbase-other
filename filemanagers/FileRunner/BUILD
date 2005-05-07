(

  sedit "s/CFLAGS = -Wall/CFLAGS := \$\(CFLAGS\) -Wall/" Makefiles/Makefile.linux_gcc

  make   -f    Makefiles/Makefile.linux_gcc       &&  
  prepare_install                                 &&
  mkdir  -p    /usr/share/FileRunner.$VERSION     &&
  cp     -R  * /usr/share/FileRunner.$VERSION     &&
  ln     -sf   /usr/share/FileRunner.$VERSION/fr  \
               /usr/bin/fr

) > $C_FIFO 2>&1
