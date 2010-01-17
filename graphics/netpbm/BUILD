(

  sedit "s:/tmp/netpbm:$(pwd -P)/BUILD:g" Makefile.config.in buildtools/installnetpbm.pl doc/README.DJGPP  &&

  echo  -e  "
gnu
regular
shared
y

libjpeg.so
default
libtiff.so
default
libz.so
default
/usr/X11R6/lib/libX11.so
default
none
default
" | ./configure    &&
  sedit "s/^CFLAGS =/CFLAGS = -fPIC /" Makefile.config  &&
  make             &&
  make package     &&
  prepare_install  &&

    echo -e "$(pwd -P)/BUILD
/usr
/usr/bin
/usr/lib
/usr/lib
/usr/lib
/usr/include
/usr/share/man
N
" | ./installnetpbm

) > $C_FIFO 2>&1
