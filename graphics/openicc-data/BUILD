(

  mkdir -p /usr/share/icons/$MODULE &&

  ./configure --prefix=/usr                   \
              --cmmsubpath=/usr/share/$MODULE \
              --datadir=/usr/share/$MODULE    \
              --syscolordir=/usr/share/$MODULE \
              --syscolordir=/usr/lib/colour/modules \
              --iccdirname=/usr/share/color/icc \
              $OPTS  &&
#  default_config &&

#  sedit "s:novendor:novendor --mode system:g" Makefile &&

  default_make

) > $C_FIFO 2>&1
