(
  ./configure --prefix=/opt/lunar/gnome/2.4		\
              --bindir=/opt/lunar/gnome/2.4/bin		\
              --sbindir=/opt/lunar/gnome/2.4/sbin	\
              --datadir=/opt/lunar/gnome/2.4/share	\
              --sysconfdir=/etc				\
              --infodir=/opt/lunar/gnome/2.4/share/info	\
              --mandir=/opt/lunar/gnome/2.4/share/man	\
              $OPTS                                     &&
  sedit "s/\/usr\/X11R6\/include\/freetype2/\/usr\/include\/freetype2/" Makefile src/Makefile doc/Makefile doc/openi18n/Makefile doc/reference/Makefile python/Makefile termcaps/Makefile                               &&
  default_make

) > $C_FIFO 2>&1
