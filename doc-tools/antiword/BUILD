(

  sedit "s/\$(OPT) \-D\$(DB)/\\$CFLAGS  -D\$(DB)/" Makefile.Linux &&
  sedit "s/INSTALL_DIR = \$(HOME)\/bin/INSTALL_DIR = \/usr\/bin/" Makefile.Linux &&
  sedit "s/750/755/g" Makefile.Linux &&
  sedit "s/\/opt\/antiword\/share/\/usr\/share\/antiword/" antiword.h &&

  make all        &&
  prepare_install &&
  make install    &&

  mkdir -p /usr/share/man/man1
  cp Docs/antiword.1 /usr/share/man/man1/ &&
  chmod 644 /usr/share/man/man1/antiword.1 

  mkdir -p /usr/share/antiword
  cp Resources/* /usr/share/antiword &&
  chmod 644 /usr/share/antiword/*

) > $C_FIFO 2>&1
