(

  OPTS="$OPTS --x-libraries=/usr/lib/xorg --prefix=/usr/X11R6 --sysconfdir=/etc --enable-jpeg \
              --enable-png --with-x --enable-xft --x-includes=/usr/include/X11"

  default_build

 # We need to create this symlink. Attention on upgrades!
 # Version number may change!
 # ln -sf /usr/X11R6/lib/libXm.so.3.0.2 /usr/X11R6/lib/libXm.so.2

) > $C_FIFO 2>&1
