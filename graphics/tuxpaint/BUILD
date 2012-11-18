(

  sedit "s@\(linux_ARCH_LINKS:=.*\)\$@\1 \$(PNG) -lm@" Makefile &&
  sedit "s@-g3@@" Makefile &&
  sedit "s@Art\;@Art\;Graphics@" src/tuxpaint.desktop.in &&

  make $OPTS PREFIX=/usr &&
  prepare_install &&

  # GNOME_PREFIX triggers installation of a .desktop file
  make install PREFIX=/usr GNOME_PREFIX=/usr

) > $C_FIFO 2>&1
