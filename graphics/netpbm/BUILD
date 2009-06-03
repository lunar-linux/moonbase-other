(

  sedit "s:/tmp/netpbm:$(pwd -P)/BUILD:g" Makefile.config.in buildtools/installnetpbm.pl doc/README.DJGPP
  sedit "s/CC = cc/CC = gcc/" Makefile.config.in &&
  echo  -e  "
gnu
regular
shared
n

libjpeg.so
default
libtiff.so
default
libpng.so
default
libz.so
default






" | ./configure    &&
  sedit "s/^CFLAGS =/CFLAGS = -fPIC /" Makefile.config &&
  make             &&
  make package     &&
  prepare_install  &&

    echo -e "$(pwd -P)/BUILD
/usr
/usr/bin
/usr/lib
Y
/usr/lib
/usr/include
/usr/share/netpbm
/usr/share/man
N
" | ./installnetpbm

) > $C_FIFO 2>&1
