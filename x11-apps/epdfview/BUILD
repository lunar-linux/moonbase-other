(

  patch_it $SOURCE1 1  &&

  # XFCE 4.6 needs the .png file extension specified
  sedit "/^Icon=/s/.*/Icon=\/usr\/share\/epdfview\/pixmaps\/icon_epdfview-48.png/" data/epdfview.desktop &&

  # Makefile.am: required file `./ChangeLog' not found
  touch ChangeLog &&
  autoreconf -fi &&

  default_build

) > $C_FIFO 2>&1
