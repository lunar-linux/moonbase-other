(

  export CFLAGS="$CFLAGS -I/usr/include/libcapplet1" &&

  ./configure  --prefix=/usr           \
               --sysconfdir=/etc       \
               --localstatedir=/var    \
	       --with-gnome-includes=/usr/include \
               $OPTS                   &&
  make                                 &&
  prepare_install                      &&
  make    install                      &&
  mkdir  -p  /etc/X11/xinit/xinitrc.d  &&
  gdkxft_sysinstall

) > $C_FIFO 2>&1
