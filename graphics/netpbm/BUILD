(

#cleanup is necessary

  if [ -d /tmp/netpbm ]; then
     rm -Rf /tmp/netpbm
  fi                                &&

  echo  -e  "gnu
regular
shared
y
libtiff.so
default
libjpeg.so
default
libpng.so
default
libz.so
default






" | ./configure    &&
  sedit "s/CC = cc/CC = gcc/" Makefile.config &&
  make             &&
  make package     &&
  prepare_install  &&
  
    echo -e "/tmp/netpbm
/usr
/usr/bin
/usr/lib
Y
/usr/lib
/usr/include
/usr/share/man
N
" | ./installnetpbm

) > $C_FIFO 2>&1
