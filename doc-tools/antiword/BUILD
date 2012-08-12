(

  sedit "s/\$(OPT) \-D\$(DB)/\\$CFLAGS  -D\$(DB)/" Makefile.Linux &&
  sedit "s/\$(HOME)\/./\/etc\//" Makefile.Linux &&
  sedit "s/INSTALL_DIR = \$(HOME)\/bin/INSTALL_DIR = \/usr\/bin/" Makefile.Linux &&
  sedit "s/local\/bin/bin/" Makefile.Linux &&
  sedit "s/750/755/g" Makefile.Linux &&
  sedit "s/\/opt\/antiword\/share/\/usr\/share\/antiword/" antiword.h &&

  make all        &&
  strip antiword  &&
  prepare_install &&
  make install    &&

  mkdir -p /usr/share/man/man1 &&
  install -m644 Docs/antiword.1 /usr/share/man/man1/ &&

  mkdir -p /usr/share/antiword &&
  for file in Resources/*; do
        install -m644 ${file} /usr/share/antiword
  done

) > $C_FIFO 2>&1
