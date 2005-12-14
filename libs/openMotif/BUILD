(

 unset LANG
 ./configure  --build=$BUILD            \
              --prefix=/usr/X11R6       \
              --sysconfdir=/etc         \
              $OPTS &&

 default_make &&

 # We need to create this symlink. Attention on upgrades!
 # Version number may change!
 ln -sf /usr/X11R6/lib/libXm.so.3.0.2 /usr/X11R6/lib/libXm.so.2

) > $C_FIFO 2>&1
