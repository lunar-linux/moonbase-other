(

  cd src &&
  sedit "s/-O2 -W -Wall -Wmissing-prototypes -Werror/$CFLAGS/" Makefile &&
  make &&
  prepare_install &&
  cp libopenal.so* /usr/lib &&
  cd .. &&
  cp -r include /usr &&
  mkdir -p /usr/share/openal-emukx &&
  cp -r etc /usr/share/openal-emukx

) > $C_FIFO 2>&1
