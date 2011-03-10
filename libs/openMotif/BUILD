(

  if [ "$INSTALL_DEMOS" == "n" ] ; then
    patch_it $SOURCE2 0
  fi &&

  OPTS+=" --x-libraries=/usr/lib/xorg --prefix=/usr --sysconfdir=/etc \
              --enable-jpeg --enable-png --enable-themes --with-x --enable-xft \
              --x-includes=/usr/include/X11"

  default_build

) > $C_FIFO 2>&1
