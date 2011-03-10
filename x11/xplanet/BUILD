(

  sed -i "1i #include <stdio.h>" src/Separation.cpp src/Satellite.cpp &&

  if module_installed xscreensaver; then
    OPTS+=" --with-xscreensaver"
  fi                                       &&

  ./configure  --prefix=/usr                \
               --bindir=/usr/bin            \
               --sbindir=/usr/sbin          \
               --datadir=/usr/share         \
               --sysconfdir=/etc            \
               --infodir=/usr/share/info    \
               --mandir=/usr/share/man      \
               --with-auxdir=share/xplanet  \
               --with-freetype              \
               --with-gif                   \
               --with-jpeg                  \
               --with-png                   \
               --with-pnm                   \
               --with-tiff                  \
               --with-animation             \
               --with-gl                    \
               --with-glut                  \
               $OPTS                       &&

  default_make

) > $C_FIFO 2>&1
