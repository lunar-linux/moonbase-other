(

  sedit "s:/tmp/netpbm:$(pwd -P)/BUILD:g" Makefile.config.in buildtools/installnetpbm.pl doc/README.DJGPP  &&

  if [ $USE_X11 == "y" ] ; then
    X11="/usr/X11R6/lib/libX11.so"
   else
    X11="none"
  fi &&

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
$X11
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
