(

#  if egrep -q '^#define JPEG_LIB_VERSION.*7[0-9]+' /usr/include/jpeglib.h; then
    # To compile with jpeg 7, rather than old 6b
    # From http://repos.archlinux.org/viewvc.cgi/netpbm/repos/extra-i686/
#    sedit "s:* cinfo.min_DCT_scaled_size;:* cinfo.min_DCT_v_scaled_size;:" converter/ppm/ppmtompeg/jpeg.c
#  fi &&

#  sedit "s/getline/getLine/" converter/ppm/xvminitoppm.c  &&
#  sedit "s:/tmp/netpbm:$(pwd -P)/BUILD:g" Makefile.config.in buildtools/installnetpbm.pl doc/README.DJGPP  &&
#  sedit "s/CC = cc/CC = gcc/" Makefile.config.in  &&
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
libvga.so
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
